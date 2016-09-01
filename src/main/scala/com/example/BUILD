load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")

package(default_visibility = ["//visibility:public"])

scala_binary(
    name = "ScalaMain",
    srcs = glob(["**/*.scala"]),
    deps = [
        ":ScalaDependency"
    ],
    # Scala binaries rules mandate that a main_class must be declared.
    main_class = "com.example.Main"
)

scala_library(
    name = "ScalaDependency",
    srcs = glob(["**/*.scala"]),
    deps = [
        # This is the declaration style for an dependency hosted 
        # from our code base.
        "//src/main/java/com/example:JavaDependency"
    ]
)