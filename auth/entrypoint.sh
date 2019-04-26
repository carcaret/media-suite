#!/bin/bash
set -e
cat > /etc/nginx/.auth << EOF
$USERNAME:{PLAIN}$PASSWORD
EOF

exec "$@"