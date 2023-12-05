# TMUX config, terminal multiplexer.
# Maintainer:	 Jessee Chan <CYPHER0@foxmail.com>
# Last Change: 2023.05.15


# get var
  pts=$( tmux display-message -p '#{pane_tty}' )
  cmd=$( ps -o comm= -t $pts \
    | grep -Ev 'less|xclip|ueberzug' \
    | tail -n 1 )

# set, sh | ra | vi , in defferient color
  if   [[ $cmd =~ 'vi' ]]; then
    tmux set -g  window-active-style         "fg=#80ff80,bg=#0d1a0d"
    tmux set -g  pane-active-border-style    "fg=#00ff00,bg=#202020"
    tmux set -g  status-right-style          "fg=#60c060,bg=#303030"
    tmux set -g  window-status-current-style "fg=#303030,bg=#60c060"
  elif [[ $cmd =~ 'ra' ]]; then
    tmux set -g  window-active-style         "fg=#ffffff,bg=#0d1a1a"
    tmux set -g  pane-active-border-style    "fg=#00ffff,bg=#202020"
    tmux set -g  status-right-style          "fg=#60c0c0,bg=#303030"
    tmux set -g  window-status-current-style "fg=#303030,bg=#60c0c0"
  elif [[ $cmd =~ 'sh' ]]; then
    tmux set -g  window-active-style         "fg=#ffffff,bg=#1a1a0d"
    tmux set -g  pane-active-border-style    "fg=#ffff00,bg=#202020"
    tmux set -g  status-right-style          "fg=#c0c060,bg=#303030"
    tmux set -g  window-status-current-style "fg=#303030,bg=#c0c060"
  else
    tmux set -g  window-active-style         "fg=#ffffff,bg=#0d0d1a"
    tmux set -g  pane-active-border-style    "fg=#0000ff,bg=#202020"
    tmux set -g  status-right-style          "fg=#6060c0,bg=#303030"
    tmux set -g  window-status-current-style "fg=#303030,bg=#6060c0"
  # else
    # tmux set -g  window-active-style         "fg=#f0f0f0,bg=#202020"
    # tmux set -g  pane-active-border-style    "fg=#ffffff,bg=#202020"
    # tmux set -g  status-right-style          "fg=#c0c0c0,bg=#303030"
    # tmux set -g  window-status-current-style "fg=#303030,bg=#c0c0c0"
  fi


# read  -p '...'


