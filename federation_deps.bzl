"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-14T14:51:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip"
      ],
      strip_prefix = "rules_cc-68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9",
      sha256 = "1e19e9a3bc3d4ee91d7fcad00653485ee6c798efbbf9588d40b34cbfbded143d",
    )

    # ********** rules_fuzzing *****************
    http_archive(
      name = "rules_fuzzing",  # 2021-05-19T01:47:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_fuzzing/archive/a8e8945bebf4f2a4618b27f127f9fc7009afacff.zip",
           "https://github.com/bazelbuild/rules_fuzzing/archive/a8e8945bebf4f2a4618b27f127f9fc7009afacff.zip"
      ],
      strip_prefix = "rules_fuzzing-a8e8945bebf4f2a4618b27f127f9fc7009afacff",
      sha256 = "fa5eaec2cea152bfb37e4b36aa3bdf7de6aeed62822dfb931179175fa267e53b",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-25T23:42:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip",
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip"
      ],
      strip_prefix = "rules_python-c6970fc44877dbbbce84d17845d9bc797aefe299",
      sha256 = "01ce6e66ce46ee2fda606c554f4b69af7a9b2e60410d7561286169e39950c88f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-25T20:18:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/18045c4e32cbe6217224f46261b9e2607d6e723d.zip",
           "https://github.com/abseil/abseil-cpp/archive/18045c4e32cbe6217224f46261b9e2607d6e723d.zip"
      ],
      strip_prefix = "abseil-cpp-18045c4e32cbe6217224f46261b9e2607d6e723d",
      sha256 = "0eb45079ef7b7ad939edb4cd66ff1c48f3ea177ff8877cb890db812dabb9cd1c",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-25T17:34:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b.zip",
           "https://github.com/google/googletest/archive/a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b.zip"
      ],
      strip_prefix = "googletest-a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b",
      sha256 = "d3d307a240e129bb57da8aae64f3b0099bf1b8efff7249df993b619b8641ec77",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-21T08:48:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/db2de74cc8c34131a6f673e35751935cc1897a0d.zip",
           "https://github.com/google/benchmark/archive/db2de74cc8c34131a6f673e35751935cc1897a0d.zip"
      ],
      strip_prefix = "benchmark-db2de74cc8c34131a6f673e35751935cc1897a0d",
      sha256 = "0b6380d26b38a7d06a578dfb286e51d804db418feef7f86a2c2af582badbfb31",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-25T18:44:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/bda09979a30886cbe8a6f69dff0c17da03dda54c.zip",
           "https://github.com/google/tcmalloc/archive/bda09979a30886cbe8a6f69dff0c17da03dda54c.zip"
      ],
      strip_prefix = "tcmalloc-bda09979a30886cbe8a6f69dff0c17da03dda54c",
      sha256 = "ae2c30267d028a4f46f29040944a89ba88edac4ca440137b7dab69dfcc8d32dc",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
