#!/bin/bash
set -ev

sdk_version=0.0.13
sha1_checksum=2ac0800b6e04c0fb52e43c112c5d7a148115a86a

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.framework.zip
echo "${sha1_checksum}  ActorSDK.framework.zip" | shasum -c
unzip -o -q ActorSDK.framework.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
rm ActorSDK.framework.zip
