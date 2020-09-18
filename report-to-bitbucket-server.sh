npx violation-comments-to-bitbucket-server-command-line \
 -server-url http://localhost:7990 \
 -username admin \
 -password admin \
 -pk PROJ \
 -rs REPO \
 -prid 1 \
 -keep-old-comments false \
 -v "CHECKSTYLE" "." ".*checkstyle/main\.xml$" "Checkstyle"


npx violation-comments-to-bitbucket-server-command-line \
 -server-url http://localhost:7990 \
 -username admin \
 -password admin \
 -pk PROJ \
 -rs REPO \
 -prid 1 \
 -keep-old-comments false \
 -create-single-file-comments false \
 -create-comment-with-all-single-file-comments true \
 -comment-only-changed-files false \
 -v "GENERIC" "." ".*eneric\.txt$" "Generic" \
 -comment-template "
message: 
\\\`\\\`\\\`
{{{violation.message}}}
\\\`\\\`\\\`
"

# -show-debug-info \
