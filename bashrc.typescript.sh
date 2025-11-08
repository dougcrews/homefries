script_echo "TypeScript setup..."

# Install TypeScript
tsc --version >/dev/null 2>&1 || npm install typescript --save-dev

alias npm_build='${ECHODO} npm run build'
alias npm_test='${ECHODO} npm run test'

npm --version
nvm --version
tsc --version
