#!/bin/sh

# 获取要下载的文件名
filename=$(echo "$QUERY_STRING" | sed 's/.*filename=\([^&]*\).*/\1/')

# 检查文件是否存在
if [ -f "/var/log/$filename" ]; then
    # 设置正确的Content-Type
    echo "Content-Type: application/octet-stream"
    echo "Content-Disposition: attachment; filename=$filename"
    echo ""
    
    # 输出文件内容
    cat "/var/log/$filename"
else
    echo "Content-Type: text/plain"
    echo ""
    echo "File not found: $filename"
fi 