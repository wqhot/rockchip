#!/bin/sh

echo "Content-Type: text/plain"
echo ""

# 检查是否有文件上传
if [ "$REQUEST_METHOD" = "POST" ]; then
    # 获取上传的文件名
    filename=$(echo "$QUERY_STRING" | sed 's/.*filename=\([^&]*\).*/\1/')
    
    # 创建临时目录
    mkdir -p /tmp/uploads
    
    # 读取上传的文件内容并保存
    cat > "/tmp/uploads/$filename"
    
    echo "File uploaded successfully: $filename"
else
    echo "No file uploaded"
fi 