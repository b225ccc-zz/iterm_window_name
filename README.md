# iterm_window_name

1. Clone this repo
2. Use the script:
  * For zsh:

     Add this to `.zshrc`:

     ```
     export PROMPT_COMMAND="~/Documents/repos/iterm_window_name/iterm_window_name.sh"
     promptcmd() { eval "$PROMPT_COMMAND" }
     precmd_functions+=(promptcmd)
     ```


  * For bash:
  
     Add this to `.bashrc`:
     
     ```
     export PROMPT_COMMAND="~/code/iterm_window_name/iterm_window_name.sh"
     ```
