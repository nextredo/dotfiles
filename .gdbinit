set debuginfod enabled off
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

# Instead of the following, run `tty > /tmp/gdbterm/` in a terminal window
# Then run gdb with `--tty="($cat /tmp/gdbterm/)"`

# shell kgx --command "tty > /tmp/gdbs_2nd_term_file_desc; exec $SHELL;"
# shell alacritty --command "tty > /tmp/gdbs_2nd_term_file_desc; exec $SHELL;"
# shell sleep 1.5
# shell echo "tty $(cat /tmp/gdbs_2nd_term_file_desc)" > /tmp/gdbs_2nd_term_file_desc
# shell echo "set inferior-tty $(cat /tmp/gdbs_2nd_term_file_desc)" > /tmp/gdbs_2nd_term_file_desc
# shell sleep 1.5
# source /tmp/gdbs_2nd_term_file_desc
# shell sleep 0.5

# Windows only :
# set new-console on

# https://stackoverflow.com/questions/52091056/print-local-variables-in-gdb
# define hook-next
define hook-stop
    printf "-------------------\n"
    info locals
end
