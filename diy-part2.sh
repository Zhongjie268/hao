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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

sed -i 's/ImmortalWrt-2.4G/666999/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/666999_/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

sed -i 's/encryption=none/encryption=psk2/' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "/encryption=psk2/a\\\t\t\t\t\tset wireless.default_\${dev}.key=huiyin268" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 27.x feeds/packages/lang/golang
