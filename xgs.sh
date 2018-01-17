#!/usr/bin/env bash
target=/etc/X11/xorg.conf.d/20-graphics.conf
if grep 'intel_iommu=on iommu=pt' /proc/cmdline; then
	conf=/home/hendrik/projects/xgs/20-intel.conf
else
	conf=/home/hendrik/projects/xgs/20-amdgpu.conf
fi
ln -fs $conf $target
