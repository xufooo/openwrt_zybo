#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# fix ERROR: module '/workdir/openwrt/build_dir/target-arm_cortex-a9+neon_musl_eabi/linux-zynq/linux-5.4.255/arch/arm/crypto/sha1-arm.ko' is missing.
# echo 'CONFIG_ARM_CRYPTO=y' >>target/linux/zynq/config-5.4 

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# Modify AdGuardHome default configuration
sed -i 's/\/var\/adguardhome/\/etc\/AdGuardHome/g' feeds/packages/net/adguardhome/files/adguardhome.config
sed -i 's/adguardhome.yaml/AdGuardHome.yaml/g' feeds/packages/net/adguardhome/files/adguardhome.init
