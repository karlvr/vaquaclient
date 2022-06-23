#!/bin/zsh -eu

ant -DRELEASE=$version -Ddebug=true
mkdir -p ~/Development/charles/repo/com/xk72/violetlib/VAquaClient/$version
mkdir -p  ~/.m2/repository/com/xk72/violetlib/VAquaClient/$version
cp dist/VAquaClient.jar ~/Development/charles/repo/com/xk72/violetlib/VAquaClient/$version/VAquaClient-$version.jar
cp dist/VAquaClient.jar ~/.m2/repository/com/xk72/violetlib/VAquaClient/$version/VAquaClient-$version.jar
(cd ../src && jar cf ../release/VAquaClient-$version-sources.jar .)
cp VAquaClient-$version-sources.jar ~/.m2/repository/com/xk72/violetlib/VAquaClient/$version/
