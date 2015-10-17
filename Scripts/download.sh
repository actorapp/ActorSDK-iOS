#!/bin/bash
set -ev

sdk_version=$(cat SDK_VER)
sha1_checksum=$(cat SDK_SHA)

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.framework.zip
echo "${sha1_checksum}  ActorSDK.framework.zip" | shasum -c
unzip -o -q ActorSDK.framework.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
rm ActorSDK.framework.zip
