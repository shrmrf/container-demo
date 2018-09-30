%title: mdp Presentation
%author: shrmrf
%date: 2018-09

-> Containers <-
=========

-> A bottom-up intro. <-

_What are Containers?_

Glorified Linux processes.

They Think they're `root` 

-------------------------------------------------

-> # Launching a Process from your Program <-

- A process launched from your own program inherits everything
  - Changing `hostname` from the process can change hostname globally


-------------------------------------------------

-> # Isolate changes to `hostname` <-

- `CLONE_NEWUTS` means: give the process you're about to launch a _cloned_ hostname (UTS: Unix Timesharing System)
  - But the process is still really really powerful.
  - Need more restrictions!! Add additional cages.

^
- But first, we want to refactor some code
  - So our container gets a default `hostname`
  - We'll see out container launch with _its_ own name (not the one inherited by the calling process.)

-------------------------------------------------

-> # Refactor <-

- Create `child()` function
  - `child()` attributes are set in the `run()` function and inherited by `child()`

^
- Let's add some more `CLONE_` flags:
  - `CLONE_NEWPID` for making the process think it get's PID 1
  - `CLONE_NEWNS` for giving the process a new namespace
    - This is required for providing a rootfs.

-------------------------------------------------

-> # Conclusion <-

- We did not discuss `CGROUPS` and other `CLONE_` flags
  - `CGROUPS` can help limit memory, IO, hdd etc.
- Docker didn't do anything special to the Linux Kernel
  - They just used the Kernel and provided value-addons
    - Docker Hub
    - `docker` CLI
    - Ease of use!!!