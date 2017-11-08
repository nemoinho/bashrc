WEB_DEV_IT='-it'
alias yarn="docker run --rm \$WEB_DEV_IT -v \$PWD:/app -w /app \$PARAM_MAP -u \$(id -u):\$(id -g) node:7 yarn"
alias node="docker run --rm \$WEB_DEV_IT -v \$PWD:/app -w /app \$PARAM_MAP -u \$(id -u):\$(id -g) node:7 node"
alias npm="docker run --rm \$WEB_DEV_IT -v \$PWD:/app -w /app \$PARAM_MAP -u \$(id -u):\$(id -g) node:7 npm"
alias composer="docker run --rm \$WEB_DEV_IT -v \$PWD:/app -w /app \$PARAM_MAP -u \$(id -u):\$(id -g) composer composer"
alias php="docker run --rm \$WEB_DEV_IT -v \$PWD:/app -w /app \$PARAM_MAP -u \$(id -u):\$(id -g) php php"


