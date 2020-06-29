load("@rules_pkg//pkg:providers.bzl", "PackageArtifactInfo", "PackageNamingInfo")

def _my_package_naming_impl(ctx):
    return PackageNamingInfo(values = {'cpu': 'arm48', 'opt': 'debug'})

my_package_naming = rule(
    implementation = _my_package_naming_impl,
)
 
def _my_package_re_naming_impl(ctx):
    archive_file_name =ctx.attr.src[PackageArtifactInfo].file_name
    return PackageNamingInfo(values = {'cpu': 'i387', 'opt': 'rebug'})

my_package_re_naming = rule(
    implementation = _my_package_re_naming_impl,
    attrs = {
        "src": attr.label(),
    },
)

