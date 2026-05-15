#!/bin/bash
#
# diy-part1.sh - 配置feeds源（在Update feeds之前执行）
# OpenWrt 25.12 版本
#

echo "=========================================="
echo "OpenWrt 25.12 Build"
echo "diy-part1.sh - 配置feeds源"
echo "=========================================="

# 配置feeds源（25.12分支）
echo "[1/3] 配置feeds源..."

cat > feeds.conf << 'EOF'
src-git packages https://github.com/openwrt/packages.git;openwrt-25.12
src-git luci https://github.com/openwrt/luci.git;openwrt-25.12
src-git printing https://github.com/dywlphy/openwrt-feed-printing.git;main
src-git timecontrol https://github.com/sirpdboy/luci-app-timecontrol
EOF

echo "[2/3] 当前feeds配置:"
cat feeds.conf

echo ""
echo "[3/3] OpenWrt版本信息:"
echo "Branch: openwrt-25.12"
echo "Kernel: 6.12"
echo "Target: x86_64"

echo ""
echo "=========================================="
echo "diy-part1.sh 执行完成"
echo "=========================================="
