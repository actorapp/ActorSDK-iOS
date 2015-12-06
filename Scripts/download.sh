#!/bin/bash
set -ev

sdk_version=$(cat Scripts/SDK_VER)
sha1_checksum=$(cat Scripts/SDK_SHA)

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.zip

echo "${sha1_checksum}  ActorSDK.zip" | shasum -c
echo "Original: ${sha1_checksum}"
shasum "Local: ActorSDK.zip"

unzip -o -q ActorSDK.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
mv ActorSDK.framework.dSYM Frameworks
rm ActorSDK.zip
