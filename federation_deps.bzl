"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-01-28T02:31:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d.zip"
      ],
      strip_prefix = "rules_cc-ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d",
      sha256 = "ad81ad11d63e97873dda3289383dd733f99f12fadeeadb14227a45e894437dd8",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-02-02T22:16:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip",
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip"
      ],
      strip_prefix = "rules_python-c7e068d38e2fec1d899e1c150e372f205c220e27",
      sha256 = "4b6055b232bfdef4cbde1ea620a478c57b032e96527da3472c2b49dbc1e42048",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-02-02T10:36:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/20869f89edbc38139f46bdc49c8b6c3a1f7bee4c.zip",
           "https://github.com/abseil/abseil-cpp/archive/20869f89edbc38139f46bdc49c8b6c3a1f7bee4c.zip"
      ],
      strip_prefix = "abseil-cpp-20869f89edbc38139f46bdc49c8b6c3a1f7bee4c",
      sha256 = "94f58cddfb7912c30c95abd9ed4252f5e95d422aab3ec621864998941ec3f52d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-01-26T20:43:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/273f8cb059a4e7b089731036392422b5ef489791.zip",
           "https://github.com/google/googletest/archive/273f8cb059a4e7b089731036392422b5ef489791.zip"
      ],
      strip_prefix = "googletest-273f8cb059a4e7b089731036392422b5ef489791",
      sha256 = "2b9ce7cfb1ed140cff3e9828e3948e105a5635b8579febef094ce302915a6b04",
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
      name = "com_github_google_tcmalloc",  # 2021-02-02T15:38:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e89f1bfb7db90eb5d8395f5f02932db49c8f2642.zip",
           "https://github.com/google/tcmalloc/archive/e89f1bfb7db90eb5d8395f5f02932db49c8f2642.zip"
      ],
      strip_prefix = "tcmalloc-e89f1bfb7db90eb5d8395f5f02932db49c8f2642",
      sha256 = "5127a80b579e7a918f8f982839205de08c0c0aa04d42aea709a9cca46fea3898",
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
