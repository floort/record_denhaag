#!/bin/sh

MPLAYER=/usr/local/bin/mplayer

case "$1" in
ek)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=1eKamer"
	;;
gvp)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=Prinsterer106"
	;;
tb)
	STREAM="http://wm.media53.kpnstreaming.nl/kpn=TweedeKamerL=Thorbecke111"
	;;
tk)
	STREAM="http://wm.media51.kpnstreaming.nl/kpn=TweedeKamerL=Plenair101"
	;;
ts)
	STREAM="http://wm.media41.kpnstreaming.nl/kpn=TweedeKamerL=Troelstra116"
	;;
*)
	echo "Usage: ${0} ek|gvp|tb|tk|ts [file.dump]"
	echo "\tek : Eerste Kamer"
	echo "\tgvp: Groen van Prinstererzaal"
	echo "\ttb : Thorbeckezaal"
	echo "\ttk : Tweede kamer"
	echo "\tts : Troelstrazaal"
	exit
esac

if [ ${2} ]; then
	# Write stream to file 
	${MPLAYER} -dumpstream ${STREAM}
	mv stream.dump ${2}
else
	${MPLAYER} ${STREAM}
fi



