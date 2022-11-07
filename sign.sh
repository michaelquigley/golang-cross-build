#!/bin/sh

#set -euo pipefail

find . -type f >> gon.log

if [ ! -f dist/golang-cross-build_darwin_amd64_v1/funkify ]; then
	echo "running amd64" >> gon.log
	gon -log-level trace gon-amd64.hcl >> gon.log
else
	echo "missing amd64" >> gon.log
fi

if [ ! -f dist/golang-cross-build_darwin_arm64/funkify ]; then
	echo "running arm64" >> gon.log
	gon -log-level trace gon-arm64.hcl >> gon.log
else
	echo "missing arm64" >> gon.log
fi
