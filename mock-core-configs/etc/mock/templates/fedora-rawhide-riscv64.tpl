config_opts['root'] = 'fedora-rawhide-{{ target_arch }}'

config_opts['description'] = 'Fedora Rawhide RISC-V'
config_opts['chroot_setup_cmd'] = 'install @build'

config_opts['dist'] = 'rawhide'
config_opts['extra_chroot_dirs'] = [ '/run/lock', ]
config_opts['releasever'] = '45'

config_opts['package_manager'] = 'dnf5'

config_opts['use_bootstrap'] = False

config_opts['dnf.conf'] = """
[main]
keepcache=1
debuglevel=2
reposdir=/dev/null
logfile=/var/log/yum.log
retries=20
obsoletes=1
gpgcheck=0
assumeyes=1
syslog_ident=mock
syslog_device=
install_weak_deps=0
metadata_expire=0
best=1
protected_packages=
user_agent={{ user_agent }}

# repos

[local]
name=local
baseurl=https://riscv-koji.fedoraproject.org/repos/rawhide/latest/riscv64/
gpgcheck=0
enabled=1
skip_if_unavailable=False

[fedora]
name=fedora
baseurl=https://riscv-koji.fedoraproject.org/repos-dist/rawhide/latest/riscv64/
gpgcheck=0
enabled=0
skip_if_unavailable=False
"""
