#!/usr/bin/env sh
if sudo sysctl -w abi.vsyscall32=1 || 
	pkexec sh -c 'echo "abi.vsyscall32 = 1" >> /etc/sysctl.conf && sysctl -p'; then
	wineserver -k
fi
