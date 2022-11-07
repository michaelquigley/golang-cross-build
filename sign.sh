#!/bin/sh

find . -type f >> gon.log

if [ ! -f dist/golang-cross-build_darwin_amd64_v1/funkify ]; then
	gon -log-level trace gon-amd64.hcl >> gon.log
fi

if [ ! -f dist/golang-cross-build_darwin_arm64/funkify ]; then
	gon -log-level trace gon-arm64.hcl >> gon.log
fi
