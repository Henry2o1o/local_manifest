#!/bin/bash


#temp fix for ogg/vorbis
pushd hardware/qcom/audio-caf/msm8996
git fetch https://review.lineageos.org/LineageOS/android_hardware_qcom_audio refs/changes/64/163564/3 && git cherry-pick FETCH_HEAD
popd

#stop sim settings from crashing
pushd packages/services/Telephony
git revert --no-edit 3a782aa
popd