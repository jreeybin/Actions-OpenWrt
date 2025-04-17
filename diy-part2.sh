#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# Add luci-app-amlogic
rm -rf package/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/linkease/istore package/luci-app-store
git clone https://github.com/nikkinikki-org/OpenWrt-nikki package/luci-app-nikki
# git clone https://github.com/kenzok8/openwrt-packages package/luci-app-quickstart
# git clone https://github.com/kenzok8/openwrt-packages package/luci-app-adguardhome
