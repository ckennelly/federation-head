"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-01-10T12:54:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a4a1ccffc666db5376342789ad021a943fb84256.zip",
           "https://github.com/bazelbuild/rules_python/archive/a4a1ccffc666db5376342789ad021a943fb84256.zip"
      ],
      strip_prefix = "rules_python-a4a1ccffc666db5376342789ad021a943fb84256",
      sha256 = "b8c25b89ce184accfaec6d8d923d41709acad6876c7f9b71c1ba669312ed44a0",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-20T21:43:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/22771d471930ce88e1e75d0ca9dd8c65a7b0f895.zip",
           "https://github.com/abseil/abseil-cpp/archive/22771d471930ce88e1e75d0ca9dd8c65a7b0f895.zip"
      ],
      strip_prefix = "abseil-cpp-22771d471930ce88e1e75d0ca9dd8c65a7b0f895",
      sha256 = "9ed58d5837a9363600ec227d00fe8c2f0c7ef3be471f6e6e6a55b50b0e117ce0",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-01-15T20:54:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/d128fc8252d53baad6ea456fa08cbf9028d255f4.zip",
           "https://github.com/google/googletest/archive/d128fc8252d53baad6ea456fa08cbf9028d255f4.zip"
      ],
      strip_prefix = "googletest-d128fc8252d53baad6ea456fa08cbf9028d255f4",
      sha256 = "759cd1e778dea67ee2dcb0910d308d34dd8cc211043e301937419912e0f46e56",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-01-05T09:54:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip",
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip"
      ],
      strip_prefix = "benchmark-8df87f6c879cbcabd17c5cfcec7b89687df36953",
      sha256 = "da89d07439a4ba0e649a3d957af639db15b3d2ee65731a4b58e674a59f82b893",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-01-22T19:25:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0f461e661aeed6ea29ac09575f98f0eceff8ca4b.zip",
           "https://github.com/google/tcmalloc/archive/0f461e661aeed6ea29ac09575f98f0eceff8ca4b.zip"
      ],
      strip_prefix = "tcmalloc-0f461e661aeed6ea29ac09575f98f0eceff8ca4b",
      sha256 = "d154294502d76a67395b75dd355088f9b6b3444c1971f9c91fb4a780b095179c",
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
