######## Power level10k start
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

######## Powerlevel10k end

######## prompt start
# autoload -Uz promptinit
# promptinit
# prompt -s powerlevel10k
######## prompt end

######## Source Prezto start
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
######## Srouce Prezto end

######## rbenv start
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
######## rbenv end

######## iterm settings start
# Shell Integration済みであること
iterm2_print_user_vars() {
  iterm2_set_user_var badge $(my_badge)
}
# バッジで表示する文字列を返す関数
function my_badge() {
  echo $(whoami)
}
function badge() {
    printf "\e]1337;SetBadgeFormat=%s\a"\
    $(echo -n "$1" | base64)
}

test -e "${HOME}/dotfiles/bin/.iterm2_shell_integration.zsh" && source "${HOME}/dotfiles/bin/.iterm2_shell_integration.zsh"
######## iterm settings end

######## settings for confidencials start
test -e "${HOME}/.confidencials" && source "${HOME}/.confidencials"
######## settings for confidencials end

export EDITOR=code
eval "$(direnv hook zsh)"

######## my functions start
function sshf () {
  local selected_host=$(grep "Host " ./ssh_config | grep -v '*' | cut -b 6- | fzf)

  if [ -n "$selected_host" ]; then
    echo "ssh -F ./ssh_config ${selected_host}"
    ssh -F ./ssh_config $selected_host
  fi
}
######## my functions end

######## my bin path start
export PATH="$PATH:$HOME/bin"
######## my bin path start

######## alias start
alias dcom='docker compose'
######## alias end

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform


export PATH="$PATH:$HOME/go/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryutochiba/work/lib/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ryutochiba/work/lib/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ryutochiba/work/lib/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ryutochiba/work/lib/google-cloud-sdk/completion.zsh.inc'; fi

# GPG TTY setting
export GPG_TTY=$(tty)

