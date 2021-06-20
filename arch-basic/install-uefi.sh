#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Guatemala /etc/localtime
#hwclock --systohc
#sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=es_GT.UTF-8" >> /etc/locale.conf
echo "archlinux" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archlinux.localdomain archlinux" >> /etc/hosts
echo root:password | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog mtools base-devel linux-headers xdg-user-dirs xdg-utils inetutils bash-completion openssh terminus-font gzip
#pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils hplip alsa-utils pulseaudio bash-completion openssh reflector acpi acpi_call bridge-utils dnsmasq iptables ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font
pacman -S --noconfirm open-vm-tools xf86-input-vmmouse xf86-video-vmware
# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

#grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable vmtoolsd.service
systemctl enable NetworkManager
systemctl enable sshd
#systemctl enable avahi-daemon
#systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
#systemctl enable reflector.timer
#systemctl enable fstrim.timer
#systemctl enable libvirtd
#systemctl enable firewalld
#systemctl enable acpid

useradd -m bayronq
echo bayronq:password | chpasswd
usermod -aG bayronq bayronq

echo "bayronq ALL=(ALL) ALL" >> /etc/sudoers.d/bayronq


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"




