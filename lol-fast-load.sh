#!/usr/bin/env sh
if sudo sysctl -w abi.vsyscall32=0 || 
	pkexec sh -c 'echo "abi.vsyscall32 = 0" >> /etc/sysctl.conf && sysctl -p'; then
	tmux new -d './launchhelper' ||
		gnome-terminal -- /bin/sh -c './launchhelper' || 
			terminator --command='./launchhelper'
else
	wineserver -k
fi
