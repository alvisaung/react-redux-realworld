#!/usr/bin/env sh

echo "Can' figure out to replace localhost with ec2 ip address. ;-("
set -x
npm run build
set +x

echo 'The following "npm" command runs your Node.js/React application in'

set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
