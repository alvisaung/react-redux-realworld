#!/usr/bin/env sh

echo "Can' figure out to replace localhost with ec2 ip address. ;-("
npm run build
echo 'The following "npm" command runs your Node.js/React application in'

npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
