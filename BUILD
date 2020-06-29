load("@rules_pkg//pkg:pkg.bzl", "pkg_tar")
load(":rules.bzl", "my_package_naming", "my_package_re_naming")

my_package_naming(name = "naming_info")

pkg_tar(
    name = "test_naming",
    srcs = [
        ":BUILD",
    ],
    package_file_name = "test_naming-${cpu}-${opt}.tar",
    naming_info = ":naming_info",
)

my_package_re_naming(
    name = "re_naming_info",
    src = "test_naming",
)

pkg_tar(
    name = "test_re_naming",
    extension = "tar.gz",
    deps = [
        ":test_naming",
    ],
    package_file_name = "test_re_naming-${cpu}-${opt}.tar",
    naming_info = ":re_naming_info",
)