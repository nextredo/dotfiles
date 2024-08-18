# Hi and welcome to my bashrc
# To use this file put the following in your actual bashrc (assuming this file is at ~/dotfiles/)
# source ~/dotfiles/.spicy.bashrc

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

# vim: set filetype=bash :
