### fork / execve
---

#### what is the entry / exit logic of a fork?

the `fork()` function creates a new child process from the parent process. it will call once but return twice (calls parent, calls child). both child and parent processes run concurrently. a fork never really "exits" until the child process terminates, which it then lives in a zomibe state until reaped by its parent.


#### what happens when exec fails?

`execv()` is used to load and run a program. `execve()` is about the same, but instead it requires a list of environment variables which points to a null-terminated array of pointers to environment variable strings formatted as *name=value*.

when `execve()` fails, it could be because:
1. the specified file does not exist
2. the process does not have permission to execute the specified file
3. the specified file is not a recognized exec. format
4. the file specified in `filename` has bad permissions


#### what is args?

`argv` points to a null-terminated array of pointers which points to an argument in a string.

`argv[0]` is the name of the executable object file.


#### what is a process group and its implementations?

a process group is a collection of processes. every process group can be identified by a positive integer called the *process group ID* (PGID).

process groups have several different functions such as:
* managing and contorlling the execution of processes
* moving processes from foreground to background
* signal handling
* job control (starting, stopping, and overall managment of the execution of multiple processes
* terminating processes


### race condition
---

#### how are jobs modified and why is it needed?

for this lab, the jobs are managed and modified in the `jobs.cc` file. some of the functions include, `addjob()`, `deletejob()`, `getjobpid()`, `listjobs()` etc.

when implementing these functions, the arguments needed for some of the function are the job pid or the pointer to the joblist.

this is needed because jobs help manage and control execution processes within a program and provide things like:
* backgroudn processing
* process control (starting, stopping, and queueing processes)
* error handling


#### what is race condition and how do you fix it?

race condition is a classic synchronization error that occurs when the program is dependent on the relative timing of events or interleaving of operations. this can cause the program ot produce incorrect or unexpected results.


### SIGTSTP
---


#### how does it work?

SIGTSTP changes a processes state from running to stopped. this means. the default handler for SIGTSTP is to stop its own processes, but we just want to stop the foreground process.


#### what happens when ctrl-z is pressed when using the shell?

when using the `tsh` shell, the output is as follows:

```
jovyan@jupyter-rast4675:~/lab5-shell-rey-h$ make
g++ -Wall -O -g    myspin.cc   -o myspin
g++ -Wall -O -g    mysplit.cc   -o mysplit
g++ -Wall -O -g    mystop.cc   -o mystop
g++ -Wall -O -g    myint.cc   -o myint
g++ -Wall -O -g   -c -o tsh.o tsh.cc
g++ -Wall -O -g   -c -o jobs.o jobs.cc
g++ -Wall -O -g   -c -o helper-routines.o helper-routines.cc
g++ -o tsh tsh.o jobs.o helper-routines.o
jovyan@jupyter-rast4675:~/lab5-shell-rey-h$ ./tsh
tsh> ./myspin 10 
^ZJob [1] (1813) stopped by signal 20
tsh> 
```

after listing the processes using `/bin/ps` and `jobs` we get:
```
tsh> /bin/ps
  PID TTY          TIME CMD
 1776 pts/0    00:00:00 bash
 1812 pts/0    00:00:00 tsh
 1813 pts/0    00:00:00 myspin
 1816 pts/0    00:00:00 ps
tsh> jobs
[1] (1813) Stopped ./myspin 10
tsh> 
```


### SIGCHLD
---


#### what are the 3 cases of SIGCHLD and how do they work?

the SIGCHLD detects if any child processes are terminated or stopped and does not wait for any other running children to terminate.

the three cases of SIGCHLD are:
1. stopped
2. normal
3. signaled

**stopped**
this works by finding a job pid using `getjobpid()` and changing the job state to ST.

**normal**
if the child process exits normally, the job is just deleted by `deletejob()`;

**signaled**
checks if the child process is terminated by a signal.


#### how are the child states updated if the user presses ctrl-c?

if ctrl-c is pressed to interrupt a process, then the signal SIGINT is invoked and the process is terminated. it will not pass go. it will not collect $200.


#### how are the child states updated if the user presses ctrl-z?

if ctrl-z is pressed to interrupt a child process, the signal SIGTSTP is raised and the processes is changed into a STOPPED state. 