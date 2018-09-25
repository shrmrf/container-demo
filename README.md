# container-demo
Code used for a presentation/demo

## Topics

- Namespaces
- Rootless containers
- Cgroups
- Fork Bombs

```bash
go run main.go run <cmd> <args>
```

### Presentation
- Namespaces
    - Scaffold `run()` `must` and:

        ```go
        package main

        import (
            "fmt"
            "os"
            "os/exec"
        )
        ```

        Type/talk `main()` and test an `echo` command

    - `syscall` with `&syscall.SysProcAttr{ Cloneflags: syscall.CLONE_NEWUTS, }`
        talk about setting `hostname` and argue where you can set `hostname`

        - `/proc/self/exe` thing (check brackets)
            add `child` arg to switch statement

            remove the `CLONE_NEWUTS` part.. don't need it in `child()`

- Rootless Containers, `chroot`
    - talk about `ps` and `ls /proc`
        `ps` is still not isolated

    - `chroot` to a different filesystem
        - don't forget `cd /`
        - "you have your own root"
        - `ps` doesn't work
            - `mount()` and `unmount()` `proc`