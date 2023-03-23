"""A module for defining WORKSPACE dependencies required for rules_armadillo"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_armadillo_dependencies():
    maybe(
        http_archive,
        name = "openblas",
        sha256 = "ca24ee0022dae4a03e70ee52eb5b977c480e0c4827e3a85fa4c259b4f3882cc4",
        strip_prefix = "rules_openblas-0.1.1",
        url = "https://github.com/phpisciuneri/rules_openblas/archive/refs/tags/v0.1.1.tar.gz",
    )

    maybe(
        http_archive,
        name = "net_sourceforge_projects_arma",
        build_file = "@armadillo//armadillo:BUILD",
        sha256 = "230a5c75daad52dc47e1adce8f5a50f9aa4e4354e0f1bb18ea84efa2e70e20df",
        strip_prefix = "armadillo-12.0.1",
        url = "https://sourceforge.net/projects/arma/files/armadillo-12.0.1.tar.xz",
    )
