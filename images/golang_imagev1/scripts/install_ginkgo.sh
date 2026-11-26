#!/usr/bin/env bash
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
cd $HOME/testproject1
set -e
go mod download
go install github.com/onsi/ginkgo/v2/ginkgo


