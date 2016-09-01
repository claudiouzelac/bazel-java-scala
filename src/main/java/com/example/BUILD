package(default_visibility = ["//visibility:public"])

java_library(
    name = "JavaDependency",
    srcs = glob(
        ["**/*.java"],
         exclude = ["LibraryTest.java"]
                ),
    deps = [
      # These are external dependencies that are
      # defined in the top-level WORKSPACE file.        
      "//external:apache_commons_lang3",        
      "//external:guava"
    ]
)