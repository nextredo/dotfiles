set debuginfod enabled off

# TUI setup
tui enable
set tui compact-source on

# tui new-layout example {-horizontal src 2 asm 1} 2 status 0 cmd 1
# tui new-layout example {-horizontal src 2 asm 1} 2 status 0 cmd 2
tui new-layout example {-horizontal src 2} 2 status 0 cmd 2
tui layout example
tui window height cmd +5
focus cmd

# Enable gdb history
# GDB manual, section 22.3
set history save on
set history size 1000

# Default is 0
set history remove-duplicates unlimited
# set history filename ~/.gdb_history

# Enable scrollback
# set trace-commands on
# set logging on
# cd where/gdb/is/running
# tail -f gdb.txt

# To use another terminal for program stdout (instead of the terminal GDB is in),
# use the following:
# Run `tty > /tmp/gdbterm/` in a terminal window
# Then run gdb with `--tty="$(cat /tmp/gdbterm/)"`

# Windows only :
# set new-console on

# https://stackoverflow.com/questions/52091056/print-local-variables-in-gdb
# define hook-next
define hook-stop
    printf "-------------------\n"
    info locals
end
