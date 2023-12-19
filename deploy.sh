# deploy

set -e
rm -rf dist
yarn build
cd dist

git init
git add .
git commit -m "feat: update tree animation"
git branch -M main
git remote add origin git@github.com:Carina957/tree-animation-preview.git
git push -f -u origin main

cd -
echo -e "\033[36m部署完毕 \033[0m"
echo -e "\033[36m仓库地址: https://github.com/Carina957/tree-animation-preview \033[0m"
echo -e "\033[36m预览地址: https://Carina957.github.io/tree-animation-preview \033[0m"