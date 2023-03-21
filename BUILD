load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

cmake(
    name = "armadillo",
    cache_entries = {
        "CMAKE_PREFIX_PATH": "$EXT_BUILD_DEPS/openblas",
        "OPENBLAS_PROVIDES_LAPACK": "true",
    },
    lib_source = "@net_sourceforge_projects_arma//:all-src",
    visibility = ["//visibility:public"],
    deps = ["@openblas"],
)
