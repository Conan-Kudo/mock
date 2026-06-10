---
layout: default
title: Release Notes - Mock Core Configs 44.3
---

## [Release 44.3](https://rpm-software-management.github.io/mock/Release-Notes-Configs-44.3) - 2026-06-10

### Mock Core Configs changes

- Set `bootstrap_image_ready=True` for AlmaLinux configs.  AlmaLinux container
  images now have `python3-dnf-plugins-core` available by default, so Mock skips
  updating the bootstrap chroot after extracting the image.

- The `fedora-release-eln` package was renamed to `fedora-eln-release`; the Mock
  configuration that explicitly lists this package in `chroot_setup_cmd` has been
  adjusted accordingly.

- Re-enabled container-based bootstrap for AlmaLinux 10 and AlmaLinux Kitten 10
  x86_64_v2 configs.  The `use_bootstrap_image = False` workaround is no longer
  needed and has been removed.

- Added RISC-V 64-bit architecture support for Fedora 44.  The config uses the
  RISC-V Koji infrastructure at `riscv-koji.fedoraproject.org`.

#### The following contributors have contributed to this release:

- Andrew Lukoshko
- cheese1
- Marcin Juszkiewicz
- Miroslav Suchý

Thank You!
