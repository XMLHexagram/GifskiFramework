#!/bin/bash

cd "$( dirname "$0" )" && cd ../gifski|| exit 1

rm -rf Gifski.xcframework
rm -rf libs
rm -rf headers