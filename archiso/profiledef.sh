#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="carli"
iso_label="carli-$(date +%Y%m)"
iso_publisher="Carli Linux <https://www.arcolinuxiso.com>"
iso_application="Carli Linux Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
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
  ["/etc/gshadow"]="0:0:400"	
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/carli-before"]="0:0:755"
  ["/usr/local/bin/carli-final"]="0:0:755"
  ["/usr/local/bin/get-nemesis-on-carli"]="0:0:755"
  ["/usr/local/bin/fix-keys"]="0:0:755" 
)
