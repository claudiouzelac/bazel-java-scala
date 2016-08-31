# Copyright 2016, Stewart Henderson

git_repository(
    name = "io_bazel_rules_scala",
    remote = "https://github.com/bazelbuild/rules_scala.git",
    commit = "7b891adb975b4e3e6569b763d39ab6e9234196c9", # update this as needed
)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

# This section contains external dependency declarations from maven.

# Guava

maven_jar(
    name = "guava_maven",
    artifact = "com.google.guava:guava:19.0",
)

bind(
  name = "guava",
  actual = "@guava_maven//jar"
)

# JUnit

maven_jar(
    name = "junit_maven",
    artifact = "junit:junit:4.12",
)

bind(
  name = "junit",
  actual = "@junit_maven//jar"
)

# Apache Commons

maven_jar(
  name = "apache_commons_lang3_maven",
  artifact = "org.apache.commons:commons-lang3:3.4"
)

bind(
  name = "apache_commons_lang3",
  actual = "@apache_commons_lang3_maven//jar"
)