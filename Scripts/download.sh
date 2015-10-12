#!/bin/bash
set -ev

sdk_version=0.0.12
sha1_checksum=b9ea4cb1fcbe09128919db3620d1351ff3d508a7

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.framework.zip
echo "${sha1_checksum}  ActorSDK.framework.zip" | shasum -c
unzip -o -q ActorSDK.framework.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
rm ActorSDK.framework.zip
