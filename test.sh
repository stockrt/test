#!/usr/bin/env bash

git add .
git ci -am 'test'
git push
open.sh 'https://github.com/stockrt/test'
