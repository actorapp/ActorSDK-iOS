#!/bin/bash
set -ev

sdk_version=0.0.14
sha1_checksum=0af2d1f3e008ef168f2b4a1d7a008ed2295377dc

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.framework.zip
echo "${sha1_checksum}  ActorSDK.framework.zip" | shasum -c
unzip -o -q ActorSDK.framework.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
rm ActorSDK.framework.zip
