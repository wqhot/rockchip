#!/bin/sh

echo "Content-Type: text/plain"
echo ""

# 获取存储信息
echo "=== Storage Information ==="
df -h
echo ""

# 获取内存信息
echo "=== Memory Information ==="
free -h
echo ""

# 获取系统信息
echo "=== System Information ==="
uname -a
echo ""

# 获取分区信息
echo "=== Partition Information ==="
fdisk -l
echo ""

# 获取日志文件列表
echo "=== Log Files ==="
ls -l /var/log/ 