#!/bin/sh
if test -f "Pipfile"; then
  pipenv install >/dev/null 2>&1
fi

cdk8s "$@"

if [ "$uid" != "" ]; then
	chown -R $uid:$uid /files
fi
