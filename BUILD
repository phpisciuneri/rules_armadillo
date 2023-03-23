load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

cmake(
    name = "armadillo",
    cache_entries = {
        "CMAKE_PREFIX_PATH": "$EXT_BUILD_DEPS/openblas",
        "OPENBLAS_PROVIDES_LAPACK": "true",
        "BUILD_SHARED_LIBS": "false",
    },
    lib_source = "@net_sourceforge_projects_arma//:all-src",
    linkopts = select({
        "@bazel_tools//src/conditions:linux": ["-lpthread"],
    }),
    out_data_dirs = ["share"],
    out_static_libs = select({
        "@bazel_tools//src/conditions:linux": ["libarmadillo.a"],
        "@bazel_tools//src/conditions:windows": ["armadillo.lib"],
    }),
    visibility = ["//visibility:public"],
    deps = ["@openblas"],
)
