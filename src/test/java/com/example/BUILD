package(default_visibility = ["//visibility:public"])

java_test(
    name = "JavaLibraryTest",
    srcs = glob(["**/*Test.java"]),
    size = "small",
    test_class = "com.example.LibraryTest",
    deps = [
        "//external:junit",
        "//src/main/java/com/example:JavaDependency"
#        ":JavaDependency",
    ],
)