# Hi and welcome to my bashrc
# Install instructions for this are in the readme

# Git "quicksave" for bad habits that die hard :)
function gitquick
{
    # Do some cool stuff & exit this script on errors
    # (it's a trap!!!)
    trap '
        last_error_code=$?;
        trap - ERR;
        echo "something went wrong - error code $last_error_code";
        return $last_error_code;
    ' ERR;

    # Stash & unstash working dir
    git stash push -u -m "$1"
    sleep 0.5
    git stash apply
    trap - ERR;
}

# Because who uses emacs?
alias info="info --vi-keys"

# To fix ctrl+s not working to scroll forward in ctrl+r reverse-i-search:
# https://stackoverflow.com/questions/12373586/how-to-reverse-i-search-back-and-forth
stty -ixon

# vim: set filetype=bash :
