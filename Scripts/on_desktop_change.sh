bspc subscribe | while read line
do
	ind=0
	for i in $(seq 1 7);
	do
		i=$((i+1))
		str=$(echo $line | awk -v ind=$i -F : '{print $ind}')
		if [[ $str =~ "F" ]] || [[ $str =~ "O" ]]; then
			ind=$((i-1))
		fi
	done
	case $ind in
		1)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper1.jpg
		;;
		2)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper2.jpg
		;;
		3)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper3.jpg
		;;
		4)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper4.jpg
		;;
		5)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper5.jpg
		;;
		6)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper6.jpg
		;;
		7)
			feh --bg-scale $HOME/Pictures/Backgrounds/wallpaper7.jpg
		;;
	esac
done
