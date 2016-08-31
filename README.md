# Scala/Java Bazel test

This codebase provides a [Bazel](https://bazel.io) build that demonstrates how to build a mixed
Scala and Java codebase.  This project creates three items:

  * A Java library that depends on external Maven libraries

  * A Scala library that depends upon the Java library above

  * A Scala binary that depends upon both the Scala and Java library

## Requirements

  * Bazel 0.3.1

  * Compatible operating system with above, OSX/Linux

## Nice to haves:

  * IntelliJ

  * [Bazel IntelliJ plugin](http://ij.bazel.io/), thats what the .bazelproject file is for.

## Building

  ``
  bazel build //...
  ``

## Dependency Graphs

Want to create some bad-ass project dependency diagrams?  Install `graphiz` (OSX: `brew install graphviz`)

  ``
  ./scripts/dependency-graph.sh
  ``

## Author(s)

Stewart Henderson <henderson.geoffrey@gmail.com>
