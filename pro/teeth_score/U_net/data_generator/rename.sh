#!/bin/bash
#用法：在终端使用"./renames.sh"运行
echo "===本脚本实现批量重命名某种类型文件为相同前缀+数字的文件===";
echo "！警告：一定要确保输入的前缀加上数字后，不和原先已有的文件名重复，否则文件会因为替换而丢失";
echo --------------------------------------------------------------------
echo "？---输入批量文件所在目录(如：/home/andy/图片)（当前目录输入 .即可）---";
read  directory;
cd  "$directory";
echo "？---输入要重命名文件类型和前缀（如：png  img_  (区分大小写)）[以空格分割]---";
read ext  begin;
echo ">>>开始批量重命名  $directory 下的 $ext 文件>>>>>>>>>>>>>>";
let  i=0;
             for it in   *.$ext; do
                   mv "$it"   "$begin$i.$ext";
                   let i=i+1;
             done
echo "===完成$i个文件批量重命名，文件列表如下：";
ls  *.$ext
echo -----------------------------------------------------------------------
