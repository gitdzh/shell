#!/bin/bash
#Batch convert json file
 
source activate labelme
for file in `ls `
do
   if [[ $file =~ \.json$ ]];then    # [[ $file =~ \.ABCD$ ]] 匹配以.ABCD结尾的文件
     python ~/labelme-master/labelme/cli/json_to_dataset.py $file	
   fi
done
