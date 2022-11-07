#!/bin/sh

find . -type f

gon -log-level trace gon-amd64.hcl
gon -log-level trace gon-arm64.hcl