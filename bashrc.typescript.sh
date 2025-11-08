script_echo "TypeScript setup..."

# Install TypeScript
npx tsc --version >/dev/null 2>&1 || npm install typescript --save-dev

alias npm_build='${ECHODO} npm run build'
alias npm_test='${ECHODO} npm run test'
alias tsc='${ECHODO} npx tsc'

echodo npm --version
echodo nvm --version
tsc --version
