#!/bin/sh

MPLAYER=/usr/local/bin/mplayer

case "$1" in
ek)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=1eKamer"
	;;
*)
	echo "Usage: ${0} ek|tk [file.dump]"
	echo "\tek: Eerste Kamer"
	echo "\ttk: Tweede kamer"
esac

if [ ${2} ]; then
	# Write stream to file 
	${MPLAYER} -dumpstream ${STREAM}
	mv stream.dump ${2}
else
	${MPLAYER} ${STREAM}
fi



