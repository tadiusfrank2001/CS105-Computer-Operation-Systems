/**
 * ish - Core system-call logic of an tiny interactive shell.
 *
 * @author: Chuck Lugai
 * @author: Russel Otieno
 */

#include <assert.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/errno.h>
#include <sys/wait.h>
#include <unistd.h>

// ----------------------------------------------------------------
//  ___                   _     ____                _
// |_ _|_ __  _ __  _   _| |_  |  _ \ __ _ _ __ ___(_)_ __   __ _
//  | || '_ \| '_ \| | | | __| | |_) / _` | '__/ __| | '_ \ / _` |
//  | || | | | |_) | |_| | |_  |  __/ (_| | |  \__ \ | | | | (_| |
// |___|_| |_| .__/ \__,_|\__| |_|   \__,_|_|  |___/_|_| |_|\__, |
//           |_|                                            |___/
// ----------------------------------------------------------------

/* Given a newline-terminated string of input, produce an array of the
   space-separated words from that input.

   The input string is modified in place, replacing each space character with a
   null (as well as the final newline).

   The returned array will be null terminated, i.e., suitable for execve.

   Sets num_words to number of words (array is actually one longer, for NULL
   termination).
*/
char **parse_line(char *line, ssize_t len, int *num_words)
{
  assert(line);
  assert(len > 0);
  assert(line[len - 1] == '\n');

  // Count words (no escaping or anything fancy)
  *num_words = 1;
  for (int i = 0; i < len; i += 1)
    if (line[i] == ' ')
      *num_words += 1;

  // Allocate entries for each word, plus an extra one for NULL termination
  char **words = (char **)malloc(sizeof(char *) * (*num_words + 1));

  char *current_word = line;
  int word_index = 0;
  for (int i = 0; i < len; i += 1)
  {
    if (line[i] == ' ' || line[i] == '\n')
    {
      // Save the current word, null terminated
      line[i] = '\0';
      words[word_index] = current_word;

      word_index += 1;
      current_word = line + i + 1;
    }
  }

  words[*num_words] = NULL;

  return words;
}

// ----------------------------------------------------------------
//      _       _       _   _                 _ _ _
//     | | ___ | |__   | | | | __ _ _ __   __| | (_)_ __   __ _
//  _  | |/ _ \| '_ \  | |_| |/ _` | '_ \ / _` | | | '_ \ / _` |
// | |_| | (_) | |_) | |  _  | (_| | | | | (_| | | | | | | (_| |
//  \___/ \___/|_.__/  |_| |_|\__,_|_| |_|\__,_|_|_|_| |_|\__, |
//                                                        |___/
// ----------------------------------------------------------------

// A linked list node containing job information
typedef struct job
{
  char *command;
  pid_t pid;
  int status;
  struct job *next;
} job_t;

// Head of the linked list
// GLOBAL VARIABLE
job_t *jobs = NULL;

// Add to the linked list
void add_job(char *command, pid_t pid)
{
  job_t *j = (job_t *)malloc(sizeof(job_t));

  j->command = command;
  j->pid = pid;
  j->status = 0;
  j->next = jobs;

  jobs = j;
}

// Free the job (does not remove from linked list)
void free_job(job_t *j)
{
  free(j->command);
  free(j);
}

/*
 * Check on jobs
 * Options will be used to waitpid to, e.g., determine blocking with WNOHANG.
 */
void check_jobs(int options)
{
  // TODO #4: check each job in turn and output its status
  job_t *jptr = jobs;
  job_t *temp;
  pid_t jpid;
  int wstatus;

  // if pid 0, print 'job still running
  // if background jobs terminated unsuccessfully, print job command and status
  // else if terminated successfully, print job command complete
  while (jptr) {
    if ((jpid = waitpid(jptr->pid, &jptr->status, options) == 0))
      fprintf(stderr, "job '%s' still running\n", jptr->command);
    if (WIFSTOPPED(jptr->status))
      fprintf(stderr, "job '%s' status %d\n", jptr->command, jptr->status);
    else fprintf(stderr, "job '%s' complete\n", jptr->command);
    temp = jptr->next;
    free_job(jptr);
    jptr = temp;
  }
}

// ----------------------------------------------------------------
//  ____  _                   _   _   _                 _ _ _
// / ___|(_) __ _ _ __   __ _| | | | | | __ _ _ __   __| | (_)_ __   __ _
// \___ \| |/ _` | '_ \ / _` | | | |_| |/ _` | '_ \ / _` | | | '_ \ / _` |
//  ___) | | (_| | | | | (_| | | |  _  | (_| | | | | (_| | | | | | | (_| |
// |____/|_|\__, |_| |_|\__,_|_| |_| |_|\__,_|_| |_|\__,_|_|_|_| |_|\__, |
//          |___/                                                   |___/
// ----------------------------------------------------------------

// TODO #6: Add received_signal_from_child global variable and
// create handle_signal_from_child function
int received_signal_from_child = 0;

void handle_signal_from_child(int sig) {
  received_signal_from_child = sig;
  return;
}

void setup_signal_handlers()
{
  struct sigaction action;

  // Ignore interrupt signal sent with "Ctrl-C"
  action.sa_flags = 0;
  action.sa_handler = SIG_IGN;
  sigaction(SIGINT, &action, NULL);

  // TODO #6: set handler for SIGCHLD signal
  sigemptyset(&action.sa_mask);
  action.sa_flags = SA_RESTART;
  action.sa_handler = handle_signal_from_child;
  sigaction(SIGCHLD, &action, NULL);
}

// ----------------------------------------------------------------
//  __  __       _
// |  \/  | __ _(_)_ __
// | |\/| |/ _` | | '_ \
// | |  | | (_| | | | | |
// |_|  |_|\__,_|_|_| |_|
// ----------------------------------------------------------------

int main(int argc, char *argv[])
{
  // Handle signals from OS
  setup_signal_handlers();

  // Infinite while loop
  while (1)
  {
    // TODO #5: check on jobs, update the user
    // TODO #6: only update the user when something has changed
    if (received_signal_from_child) {
      check_jobs(WNOHANG); // check jobs and return immediately if no child has exited
      received_signal_from_child = 0;
    }


    // Print prompt to screen
    fprintf(stderr, "¢ ");

    // Grab next input from user
    errno = 0;
    char *user_input = NULL;
    size_t user_input_length; // getline modifies this and returns the same value
    ssize_t len = getline(&user_input, &user_input_length, stdin);

    // getline returns -1 on error
    if (len == -1)
    {
      if (!errno)
      {
        // TODO #4: wait for all jobs to finish
        if (jobs) {
          fprintf(stderr, "\nJobs are still running...\n");
          check_jobs(0); // pass options as 0 for now
        }
        fprintf(stderr, "\nGoodbye!\n");
        return 0;
      }

      perror("I/O error reading line");
      return 1;
    }

    else if (len > 1)
    {
      int run_in_background = 0;
      char *user_command = NULL;

      // See if we're a background task by checking last (not null terminator) character
      if (user_input[len - 2] == '&')
      {
        // Find index of last non space character
        int last_non_space = len - 3;
        for (; last_non_space > 0; last_non_space -= 1)
          if (user_input[last_non_space] != ' ')
            break;

        // Reformat user_input to remove '&'
        user_input[last_non_space + 1] = '\n';
        user_input[last_non_space + 2] = '\0';
        len = last_non_space + 2; // exclude null!

        // Note that this process should run in background
        run_in_background = 1;

        // Save command name, but drop newline
        user_command = (char *)malloc(sizeof(char) * len);
        strncpy(user_command, user_input, len - 1);
        user_command[len - 1] = '\0';
      }

      // Parse user_input command
      int num_words;
      char **args = parse_line(user_input, len, &num_words);
      assert(args);
      assert(args[num_words] == NULL);

      // TODO #1: run the command
      pid_t cpid;
      int wstatus;
      char *noenviron[] = { NULL };
      // code executed by child (cpid: child process id)
      if ((cpid = fork()) == 0) {
        if (execve(args[0], args, noenviron) < 0) {
          perror("ish: command error");
          exit(0);
        }
      }

      // code executed by parent
      // TODO #2: print status if non-zero
      if (!run_in_background) {
        int exit_status = WEXITSTATUS(wstatus);
        if (exit_status != 0) fprintf(stderr, "ish: status %d\n", exit_status);
        waitpid(cpid, &wstatus, 0);
      }
      // TODO #3: run background jobs in the background
      else add_job(argv[0], cpid);

      // Free the args array allocated by parse line
      free(args);
    }
  }

  return 0;
}
