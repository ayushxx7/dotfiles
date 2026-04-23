
. "$HOME/.local/bin/env"
export GOOGLE_API_KEY="REDACTED"
export GROQ_API_KEY="REDACTED"

# OpenClaw Completion
source "/Users/air/.openclaw/completions/openclaw.zsh"
alias w="cd /Users/air/thevibecoder/projects/self/www"
alias c="cd /Users/air/thevibecoder/projects/self/ceo"
# opencode
export PATH=/Users/air/.opencode/bin:$PATH

[ -f ~/.free-coding-models.env ] && . ~/.free-coding-models.env  # free-coding-models-env

# bun completions
[ -s "/Users/air/.bun/_bun" ] && source "/Users/air/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude-mem='/Users/air/.bun/bin/bun "/Users/air/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
alias p="cd /Users/air/thevibecoder/projects/self/project-showcase-skill"
alias pg="cd /Users/air/thevibecoder/projects/self/project-showcase-skill && gemini"
alias pgy="cd /Users/air/thevibecoder/projects/self/project-showcase-skill && gemini --approval-mode=yolo"
alias g="gemini"
alias gy="gemini --approval-mode=yolo"
alias gg="gemini --approval-mode=yolo"
\n# Gemini Vault Aliases\nalias notes="cd ~/Desktop/ayush-vault && gemini --yolo"\nalias n="notes"
