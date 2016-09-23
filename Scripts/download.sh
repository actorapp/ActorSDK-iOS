#!/bin/bash
set -ev

sdk_version=$(cat Scripts/SDK_VER)
sha1_checksum=$(cat Scripts/SDK_SHA)

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.zip

echo "${sha1_checksum}  ActorSDK.zip" | shasum -c

unzip -o -q ActorSDK.zip
rm ActorSDK.zip
