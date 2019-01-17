FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Run ESLint"
LABEL "com.github.actions.description"="Run ESLint on javascript files."
LABEL "com.github.actions.icon"="circle"
LABEL "com.github.actions.color"="purple"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
