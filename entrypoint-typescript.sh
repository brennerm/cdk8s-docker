#!/bin/sh
cdk8s "$@"

if [ "$uid" != "" ]; then
	chown -R $uid:$uid /files
fi
