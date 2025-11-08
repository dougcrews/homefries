script_echo "Node.js setup..."

# Install nvm as needed
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias npm_install='${ECHODO} npm install'
alias npm_build='${ECHODO} npm run build'
alias npm_test='${ECHODO} npm run test'

#alias | grep nodejs_
#functions | grep nodejs_

echodo npm --version
echodo nvm --version
echodo node --version
echodo npx --version
