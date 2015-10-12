#!/bin/bash
set -ev

sdk_version=0.0.11
sha1_checksum=b1987de180fb47d8eda97553ad283fc7de8c4f17

rm -fr Frameworks

echo "fetching ActorSDK.framework"
curl -OL https://github.com/actorapp/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.framework.zip
echo "${sha1_checksum}  ActorSDK.framework.zip" | shasum -c
unzip -o -q ActorSDK.framework.zip
mkdir -p Frameworks
mv ActorSDK.framework Frameworks
rm ActorSDK.framework.zip
