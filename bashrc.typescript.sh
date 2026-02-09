script_echo "TypeScript setup..."

# Install TypeScript
#npm install typescript --save-dev
echo "npm path is $(npm config get prefix)/bin"

alias npm_build='${ECHODO} npm run build'
alias npm_test='${ECHODO} npm run test'
#alias tsc='${ECHODO} npx tsc'

echodo npm --version
echodo nvm --version
echodo tsc --version
echodo npm list -g
