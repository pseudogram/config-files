# Set Python version
# https://opensource.com/article/20/4/pyenv
# https://realpython.com/intro-to-pyenv/#installing-pyenv
#
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'