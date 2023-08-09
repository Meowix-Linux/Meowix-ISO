#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="meowixlinux"
iso_label="MWIX_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%g%m)"
iso_publisher="Meowix Linux <https://github.com/Meowix-Linux>"
iso_application="Meowix Linux Live CD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%g.%m)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/start-polybar"]="0:0:755"
  ["/usr/local/bin/meowix-post-install-tool"]="0:0:755"
  ["/usr/local/bin/create-calamares-lockfile"]="0:0:755"
  ["/usr/local/bin/smartfetch"]="0:0:755"
  ["/etc/skel/.config/bspwm/bspwmrc"]="0:0:755"
  ["/etc/skel/.config/sxhkd/sxhkdrc"]="0:0:644"
  ["/etc/skel/.xinitrc"]="0:0:755"
)
