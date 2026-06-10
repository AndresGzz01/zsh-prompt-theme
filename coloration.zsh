autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

# Configuración de Git con símbolos suaves
zstyle ':vcs_info:git:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' check-for-staged-changes true
zstyle ':vcs_info:git:*' check-for-unstaged-changes true
zstyle ':vcs_info:git:*' get-revision true

# Símbolos personalizados
zstyle ':vcs_info:git:*' stagedstr '💾'
zstyle ':vcs_info:git:*' unstagedstr '✏️ '

# Formatos principales: commit, branch, estado remoto en verde
zstyle ':vcs_info:git:*' formats '%F{yellow}[%r]%f %F{cyan} %b%f %c%u %F{green}%m%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}[%r]%f %F{magenta} %b|%a%f %c%u %F{green}%m%f'

# Prompt con colores suaves y símbolos
PROMPT='%F{blue}/%1~%f ${vcs_info_msg_0_}%F{green}➜%f '
