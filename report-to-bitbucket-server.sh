npx violation-comments-to-bitbucket-server-command-line \
 -server-url http://localhost:7990 \
 -username admin \
 -password admin \
 -pk PROJ \
 -rs REPO \
 -prid 1 \
 -create-single-file-comments-tasks true \
 -v "CHECKSTYLE" "." ".*checkstyle/main\.xml$" "Checkstyle" \

