"""A module for defining WORKSPACE dependencies required for rules_armadillo"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_armadillo_dependencies():
    maybe(
        http_archive,
        name = "openblas",
        sha256 = "b99d0e9c53c6b230bf1a2a3b678cd4dd02a78f4ed174b3d7c5481ae2bb2ea3f1",
        strip_prefix = "rules_openblas-0.1.2",
        url = "https://github.com/phpisciuneri/rules_openblas/archive/refs/tags/v0.1.2.tar.gz",
    )

    maybe(
        http_archive,
        name = "net_sourceforge_projects_arma",
        build_file = "@armadillo//armadillo:BUILD",
        sha256 = "230a5c75daad52dc47e1adce8f5a50f9aa4e4354e0f1bb18ea84efa2e70e20df",
        strip_prefix = "armadillo-12.0.1",
        url = "https://sourceforge.net/projects/arma/files/armadillo-12.0.1.tar.xz",
    )
