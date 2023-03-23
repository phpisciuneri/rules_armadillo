# rules_armadillo

Bazel build rules for [Armadillo](https://arma.sourceforge.net/).

## About

Uses [rules_foreign_cc](https://github.com/bazelbuild/rules_foreign_cc) to do a CMake configuration, build, and install of Armadillo from source.  This allows the user to include `@armadillo` in the `deps` argument in project `BUILD` files. See the examples folder for a simple example.

This leverages [rules_openblas](https://github.com/phpisciuneri/rules_openblas) to first install [OpenBLAS](https://www.openblas.net/) and enables LAPACK support for Armadillo.

**For usage see the instructions with the [latest release](https://github.com/phpisciuneri/rules_armadillo/releases/latest).**

## Tested

- Windows 10
- Ubuntu 20.04.5 LTS

## Troubleshooting

If the CMake configuration or build encounters any errors I recommend:
- Checking the `CMake.log` under `$(GENDIR)/armadillo_foreign_cc` for any errors.  Use `bazel info --show_make_env` if you are unsure of `GENDIR`.
- Then, clone this repository.
- Replace the `http_archive` function with a `local_repository` function pointing to the cloned repo in `WORKSPACE`.
- Adjust the `cmake` rule in `BUILD` with custom settings for your system.

## Future

- I'd like to expose options for the user to have more control over the cmake rule.  For now, you are limited to default options.  
- Expand portability to a broader range of systems and environments.
