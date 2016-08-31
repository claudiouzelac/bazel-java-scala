load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")

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
        ":JavaDependency"
    ]
)

java_test(
    name = "JavaLibraryTest",
    srcs = glob(["**/*Test.java"]),
    size = "small",
    test_class = "com.example.LibraryTest",
    deps = [
        "//external:junit",
        ":JavaDependency",
    ],
)

java_library(
    name = "JavaDependency",
    srcs = glob(["**/Library.java"]),
    deps = [
      # These are external dependencies that are
      # defined in the top-level WORKSPACE file.        
      "//external:apache_commons_lang3",        
      "//external:guava"
    ]
)