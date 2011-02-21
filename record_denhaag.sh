#!/bin/sh

MPLAYER=/usr/local/bin/mplayer

case "$1" in
ek)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=1eKamer"
	;;
gvp)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=Prinsterer106"
	;;
tk)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=Plenair101"
	;;
*)
	echo "Usage: ${0} ek|tk [file.dump]"
	echo "\tek : Eerste Kamer"
	echo "\tgvp: Groen van Prinstererzaal"
	echo "\ttk : Tweede kamer"
esac

if [ ${2} ]; then
	# Write stream to file 
	${MPLAYER} -dumpstream ${STREAM}
	mv stream.dump ${2}
else
	${MPLAYER} ${STREAM}
fi



