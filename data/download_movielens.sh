#!/bin/bash

# data/raw 폴더가 없으면 생성
mkdir -p data/raw

# MovieLens Small 데이터셋 다운로드 (ml-latest-small.zip)
echo "Downloading MovieLens dataset..."
curl -o data/raw/ml-latest-small.zip https://files.grouplens.org/datasets/movielens/ml-latest-small.zip

# 압축 해제
echo "Unzipping..."
unzip data/raw/ml-latest-small.zip -d data/raw/

# 압축 파일 삭제 (선택 사항)
rm data/raw/ml-latest-small.zip

echo "Download Complete! Data is in data/raw/ml-latest-small/"