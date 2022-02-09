#! /bin/bash

WALLDIR="/home/matvey/Pictures/Backgrounds"
LOCKDIR="/home/matvey/Pictures/Lockscreens"
export DISPLAY=:0.0
TIME=$(timedatectl | grep 'Local time' | sed -nre 's/\s*Local time: [A-Z][a-z]{2} [0-9]{4}-[0-9]{2}-[0-9]{2} //p' | sed -nre 's/:[0-9]{2}:[0-9]{2} [A-Z]{3}//p')
TIME=$(expr $TIME + 0)

echo $(($TIME))

if (($((TIME)) >= 17)) && (($((TIME)) < 22))
then
	cp $WALLDIR/es_morning.jpg $WALLDIR/wallpaper1.jpg
	cp $WALLDIR/es2_morning.jpg $WALLDIR/wallpaper2.jpg
	cp $WALLDIR/es3_morning.jpg $WALLDIR/wallpaper3.jpg
	cp $WALLDIR/es4_morning.jpg $WALLDIR/wallpaper4.jpg
	cp $WALLDIR/es5_morning.jpg $WALLDIR/wallpaper5.jpg
	cp $WALLDIR/es6_morning.jpg $WALLDIR/wallpaper6.jpg
	cp $WALLDIR/es7_morning.jpg $WALLDIR/wallpaper7.jpg
	cp $LOCKDIR/OD_house_morn.jpg $LOCKDIR/lockscreen.jpg
elif (($((TIME)) >= 11)) && (($((TIME)) < 17))
then
	cp $WALLDIR/es_day.jpg $WALLDIR/wallpaper1.jpg
	cp $WALLDIR/es2_day.jpg $WALLDIR/wallpaper2.jpg
	cp $WALLDIR/es3_day.jpg $WALLDIR/wallpaper3.jpg
	cp $WALLDIR/es4_day.jpg $WALLDIR/wallpaper4.jpg
	cp $WALLDIR/es5_day.jpg $WALLDIR/wallpaper5.jpg
	cp $WALLDIR/es6_day.jpg $WALLDIR/wallpaper6.jpg
	cp $WALLDIR/es7_day.jpg $WALLDIR/wallpaper7.jpg
	cp $LOCKDIR/OD_house_day.jpg $LOCKDIR/lockscreen.jpg
elif (($((TIME)) >= 6)) && (($((TIME)) < 11))
then
	cp $WALLDIR/es_morning.jpg $WALLDIR/wallpaper1.jpg
	cp $WALLDIR/es2_morning.jpg $WALLDIR/wallpaper2.jpg
	cp $WALLDIR/es3_morning.jpg $WALLDIR/wallpaper3.jpg
	cp $WALLDIR/es4_morning.jpg $WALLDIR/wallpaper4.jpg
	cp $WALLDIR/es5_morning.jpg $WALLDIR/wallpaper5.jpg
	cp $WALLDIR/es6_morning.jpg $WALLDIR/wallpaper6.jpg
	cp $WALLDIR/es7_morning.jpg $WALLDIR/wallpaper7.jpg
	cp $LOCKDIR/OD_house_morn.jpg $LOCKDIR/lockscreen.jpg
else
	cp $WALLDIR/es_night.jpg $WALLDIR/wallpaper1.jpg
	cp $WALLDIR/es2_night.jpg $WALLDIR/wallpaper2.jpg
	cp $WALLDIR/es3_night.jpg $WALLDIR/wallpaper3.jpg
	cp $WALLDIR/es4_night.jpg $WALLDIR/wallpaper4.jpg
	cp $WALLDIR/es5_night.jpg $WALLDIR/wallpaper5.jpg
	cp $WALLDIR/es6_night.jpg $WALLDIR/wallpaper6.jpg
	cp $WALLDIR/es7_night.jpg $WALLDIR/wallpaper7.jpg
	cp $LOCKDIR/OD_house_night.jpg $LOCKDIR/lockscreen.jpg
fi

#feh --bg-scale $WALLDIR/wallpaper1.jpg
betterlockscreen -u $LOCKDIR/lockscreen.jpg --blur 
