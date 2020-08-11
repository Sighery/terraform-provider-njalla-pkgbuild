# DEPRECATED

Terraform has a [Registry][Terraform Registry] now where all providers
(official or third-party) can be installed from with the new Terraform v0.13
syntax.

As such, there's no need to make an Arch Linux package anymore. More
information on using this provider with Terraform v0.13 _on any OS_ in the
[provider repository][Terraform Njalla provider installation] itself.

---

# Arch Linux PKGBUILD for the unofficial Terraform Njalla provider

This is the PKGBUILD for the
[unofficial Terraform Njalla provider][Terraform Njalla provider] I develop
and maintain.

This is neither a `-git` nor a `-bin` package. It will only build on new
releases (not pre-releases) from the Terraform Njalla provider.
[These can be seen here][Terraform Njalla provider releases]. However, this
doesn't mean that it will use the pre-compiled binary from the release.
Rather, it will download the source code associated to that release, and
compile the binary in your machine.

## Installation

### Using Sighery's Arch Linux repository

I maintain [my own Arch Linux repository][Sighery's Arch Linux repository], to
which I upload a variety of packages. `terraform-provider-njalla` is one of
those. The linked page contains information on how to set up my repository.

### Building from source using your machine

You can use an AUR helper like `yay`, or use
[makepkg directly][makepkg usage]. If you end up using `makepkg`, you might
want to look into [building in a clean chroot][]. Generally, the command will
be something like:

```bash
makepkg --syncdeps --needed --clean --install
```

### Building from source using Docker

I maintain a base Arch Linux Docker image I use to build my packages. This
image is quite heavy, but it allows for isolated builds and easy clean-up.

To run this package's Dockerfile, and get its output compiled package:

```bash
make archbuild
```


[Terraform Njalla provider]: https://github.com/Sighery/terraform-provider-njalla
[Terraform Njalla provider releases]: https://github.com/Sighery/terraform-provider-njalla/releases
[Sighery's Arch Linux repository]: https://archrepo.sighery.com
[Building in a clean chroot]: https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_clean_chroot
[makepkg usage]: https://wiki.archlinux.org/index.php/Makepkg#Usage
[arch-builder-docker]: https://github.com/Sighery/arch-builder-docker

[Terraform Registry]: https://registry.terraform.io/
[Terraform Njalla provider installation]: https://github.com/Sighery/terraform-provider-njalla#installing
