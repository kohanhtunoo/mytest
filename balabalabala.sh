#!/bin/bash

clear
n=1
while [ $n == 1 ] ; do

dt=$(date)

cday=$(date +%d)
cmonth=$(date +%m)
cyear=$(date +%Y)
echo "enter year.........eg."1885","1988","2016",etc"
read year
myyear=$year

echo "enter month..........eg."1","9","12",etc"
read m
mymonth=$m

if [ $m == 1 ] ; then
	mh=0
	hm=3
elif [ $m == 10 ] ; then
	mh=0
	hm=4
elif [ $m == 5 ] ; then
	mh=1
	hm=5
elif [ $m == 8 ] ; then
	mh=2
	hm=6
elif [ $m == 2 ] ; then
	mh=3
	hm=6
elif [ $m == 3 ] ; then
	mh=3
	hm=0
elif [ $m == 11 ] ; then
	mh=3
	hm=0
elif [ $m == 6 ] ; then
	mh=4
	hm=1
elif [ $m == 9 ] ; then
	mh=5
	hm=2
elif [ $m == 12 ] ; then
	mh=5
	hm=2
elif [ $m == 4 ] ; then
	mh=6
	hm=3
elif [ $m == 7 ] ; then
	mh=6
	hm=3
else 
	echo "fuck you baby.something is wrong"
fi

echo "enter day.........eg."1","12","20","31",etc"
read d


myday=$d

if [ $mymonth == 4 ] ; then
	if [ $myday -lt 17 ] ; then
	myyear=$(($myyear-639))
	else
	myyear=$(($myyear-638))
	fi
elif [ $mymonth -lt 4 ] ; then
	myyear=$(($myyear-639))
else
	myyear=$(($myyear-638))

fi

if [ $cmonth -lt $m ] ; then
age=$(($cyear-$year))
echo "your age is:" $age
else
age=$(($cyear+1-$year))
echo "your age is :" $age
fi


while [ $year -gt 28 ] ; do
	year=$(($year-28))
done


y=$(($year%4))

if [ $y == 0 ] ; then

x=$(($year/4))
res=$(($year+$x+$hm+$d-5))
echo $res
res=$(($res%7))


else

x=$(($year/4))
res=$(($year+$x+$mh+$d-1))

res=$(($res%7))


fi

if [ $res == 0 ] ; then
	ans="saturday"
elif [ $res == 1 ] ; then
	ans="sunday"
elif [ $res == 2 ] ; then
	ans="monday"
elif [ $res == 3 ] ; then
	ans="tuesday"
elif [ $res == 4 ] ; then
	ans="wednessday"
elif [ $res == 5 ] ; then
	ans="thursday"
elif [ $res == 6 ] ; then
	ans="friday"
fi



echo "your day is:"$ans

echo "your myanmar year is:" $myyear

if [ $ans == sunday ] ; then
		d=1
		e=1
	elif [ $ans == monday ] ; then
		d=2
		e=2
	elif [ $ans == tuesday ] ; then
		d=3
		e=3
	elif [ $ans == wednessday ] ; then
		d=4
		e=4
	elif [ $ans == thursday ] ; then
		d=5
		e=6
	elif [ $ans == friday ] ; then
		d=6
		e=0
	elif [ $ans == saturday ] ; then
		d=7
		e=5
	else 
	echo "fuck you baby.something is wrong"  
	fi

	while [ $myyear -gt 7 ] ; do
		myyear=$(($myyear-7))
	done


	if [ $myyear -lt $d ] ; then
		myyear=$(($myyear+7))
	fi

	x=$(($myyear-$d))

	if [ $x == 0 ] ; then
		echo "you are bingaphwar"
	elif [ $x == 1 ] ; then
		echo "you are ahtunphwar"
	elif [ $x == 2 ] ; then
		echo "you are rarzaphwar"
	elif [ $x == 3 ] ; then
		echo "you are adipatiphwar"
	elif [ $x == 4 ] ; then
		echo "you are maranaphwar"
	elif [ $x == 5 ] ; then
		echo "you are thikephwar"
	elif [ $x == 6 ] ; then
		echo "you are putiphwar"
	else
	echo "Fuck You,something is wrong"
	fi
	
	cur=$(($age+$e-1))

	while [ $cur -gt 8 ] ; do
		cur=$(($cur-8))
	done

	if [ $cur == 1 ] ; then
		echo "you are in sun"
	elif [ $cur == 2 ] ; then
		echo "you are in moon"
	elif [ $cur == 3 ] ; then
		echo "you are in mars"
	elif [ $cur == 4 ] ; then
		echo "you are in marcury"
	
	elif [ $cur == 5 ] ; then
		echo "you are in saturn"
	elif [ $cur == 6 ] ; then
		echo "you are in jupiter"
	elif [ $cur == 7 ] ; then
		echo "you are in rahu"
	elif [ $cur == 8 ] ; then
		echo "you are in venus"
	else
	echo "Fuck You. Something is wrong"
	fi


done




















