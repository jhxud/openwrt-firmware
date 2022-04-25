#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i "s/DEFAULT_PACKAGES:=/DEFAULT_PACKAGES:=luci luci-base luci-compat luci-lib-ipkg luci-newapi luci-app-firewall luci-app-opkg luci-app-autoreboot \
block-mount automount dnsmasq-full fdisk coremark wget-ssl curl htop bash iptables-mod-tproxy iptables-mod-extra \
kmod-tun kmod-inet-diag kmod-nf-nathelper kmod-nf-nathelper-extra kmod-ipt-ra kmod-lib-zstd kmod-tcp-bbr kmod-usb2 kmod-usb3 /" include/target.mk
