#!/bin/sh
command(){
	echo "함수 안"
	eval $1
}
echo "프로그램 시작"
command $1


