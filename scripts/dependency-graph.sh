#!/usr/bin/env bash

# This script requires dot installed on your machine. Additionally, it requires
# the open command as I am doing this from OSX.  Alternatively, you can just open the
# file with any viewer/browser that supports PNG file types.

command -v bazel >/dev/null 2>&1 || {
    echo >&2 "bazel is required but not installed";
    exit 1;
}

bazel query 'deps(//:ScalaMain)' --output graph > graph.in

command -v dot >/dev/null 2>&1 || {
    echo >&2 "dot is required but not installed";
    exit 1;
}

dot -Tpng < graph.in > graph.png

command -v open >/dev/null 2>&1 || {
    echo >&2 "open is required but not installed";
    exit 1;
}

open graph.png