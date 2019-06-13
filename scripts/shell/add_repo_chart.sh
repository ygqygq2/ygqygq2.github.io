#!/usr/bin/env bash

#获取脚本所存放目录
cd `dirname $0`
bash_path=`pwd`

chart_name="$1"
charts_dir="../../charts/"
charts_url="http://ygqygq2.github.io/charts"

helm package $chart_name
mv -f *.tgz $charts_dir
helm repo index $charts_dir --url $charts_url

