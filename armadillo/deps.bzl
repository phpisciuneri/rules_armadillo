"""A module for defining WORKSPACE dependencies required for rules_armadillo"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_armadillo_dependencies():
    maybe(
        http_archive,
        name = "openblas",
        sha256 = "cba377eeb528aedf12ef1e3b46b35c40f7b7d384568fea0a19d18f3378b1ccb9",
        strip_prefix = "rules-openblas-0.1.0",
        url = "https://github.com/phpisciuneri/rules-openblas/archive/refs/tags/v0.1.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "net_sourceforge_projects_arma",
        build_file = "@armadillo//armadillo:BUILD",
        sha256 = "230a5c75daad52dc47e1adce8f5a50f9aa4e4354e0f1bb18ea84efa2e70e20df",
        strip_prefix = "armadillo-12.0.1",
        url = "https://sourceforge.net/projects/arma/files/armadillo-12.0.1.tar.xz",
    )
