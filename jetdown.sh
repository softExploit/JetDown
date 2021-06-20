#!/bin/bash


banner() {
printf "$white

		     ██ ███████ ████████ ██████   ██████  ██     ██ ███    ██ 
		     ██ ██         ██    ██   ██ ██    ██ ██     ██ ████   ██ 
		     ██ █████      ██    ██   ██ ██    ██ ██  █  ██ ██ ██  ██ 
		██   ██ ██         ██    ██   ██ ██    ██ ██ ███ ██ ██  ██ ██ 
		 █████  ███████    ██    ██████   ██████   ███ ███  ██   ████ 
                                                              
                                                              
$end
"
printf "		     \e[91m *** \e[36mJetbrain Crack Tool coded by : SoftExploit \e[91m *** \e[0m \n \n \n \n \n";
}

menu() {
printf "$green[1]\e[0m   $red IntelliJ Ultimate\e[0m\n";
printf "$green[2]\e[0m   $red IntelliJ Community\e[0m\n";
printf "$green[3]\e[0m   $red Pycharm Professional\e[0m\n";
printf "$green[4]\e[0m   $red Pycharm Community\e[0m\n";
printf "$green[5]\e[0m   $red Pycharm Edu\e[0m\n";
printf "$green[6]\e[0m   $red Rider\e[0m\n";
printf "$green[7]\e[0m   $red Clion\e[0m\n";
printf "$green[8]\e[0m   $red PhpStorm\e[0m\n";
printf "$green[9]\e[0m   $red WebStorm\e[0m\n";
printf "$green[10]\e[0m  $red GoLand\e[0m\n";
printf "$green[11]\e[0m  $red RubyMine\e[0m\n";
read -p $'\e[97mChoose an options: ' option;
binary="0";
if [[ $option == 1 ]]
then
	message=$(checkMain $intelliu);	
	back=$(logic $message);
	echo "$back";

elif [[ $option == 2 ]]
then
	message=$(checkMain $intellic);
	back=$(logic $message);
	echo "$back";

elif [[ $option == 3 ]]
then
	message=$(checkMain $pythonp);	
	back=$(logic $message);
	echo "$back";

elif [[ $option == 4 ]]
then
	message=$(checkMain $pythonc);
	back=$(logic $message);
	echo "$back";

elif [[ $option == 5 ]]
then
	message=$(checkMain $pythone);	
	back=$(logic $message);
	echo "$back";

elif [[ $option == 6 ]]
then
	message=$(checkMain $rider);
	back=$(logic $message);
	echo "$back";

elif [[ $option == 7 ]]
then
	message=$(checkMain $clion);
	back=$(logic $message);
	echo "$back";

elif [[ $option == 8 ]]
then
	message=$(checkMain $php);	
	back=$(logic $message);
	echo "$back";

elif [[ $option == 9 ]]
then
	message=$(checkMain $webstorm);
	back=$(logic $message);
	echo "$back";

elif [[ $option == 10 ]]
then
	message=$(checkMain $goland);	
	back=$(logic $message);
	echo "$back";

elif [[ $option == 11 ]]
then
	message=$(checkMain $ruby);	
	back=$(logic $message);
	echo "$back";
fi
}

checkToolBox(){
tool=`(ls ~/.local/share/JetBrains| awk '{print $1}' | grep -i tool) 2> /dev/null `;
toolbox="";
if [ $tool == "Toolbox" ]
then
	echo "There's a toolbox checking apps..";
	tool_exist=true;
	local list=`ls ~/.local/share/JetBrains/Toolbox/apps | awk '{print $1}'`;
	for i in $list;do
		if [ ${i} == $goland ]
		then
			toolbox+="${i} "
		
		elif [ ${i} == $pythonp ]
		then
			toolbox+="${i} "
		elif [ ${i} == $python ]
		then 
			toolbox+="${i} "

		elif [ ${i} == $ruby ]
		then
			toolbox+="${i} "

		elif [ ${i} == $rider ]
		then
			toolbox+="${i} "

		elif [ ${i} == $clion ]
		then
			toolbox+="${i} "

		elif [ ${i} == $webstorm ] 
		then
			toolbox+="${i} "

		elif [ ${i} == $android ]
		then
			toolbox+="${i} "

		elif [ ${i} == $php ]
		then
			toolbox+="${i} "

		elif [ ${i} == $pythonc ]
		then
			toolbox+="${i} "

		elif [ ${i} == $intelli ]
		then
			toolbox+="${i} "

		elif [ ${i} == $datag ]
		then
			toolbox+="${i} "
		elif [ ${i} == $intelliu ]
		then
			toolbox+="${i} "
		elif [ ${i} == $intellic ]
		then
			toolbox+="${i} "

		elif [ ${i} == $datal ]
		then
			toolbox+="${i} " 		

		elif [ ${i} == $mps ]
		then
			toolbox+="${i} "

		elif [ ${i} == $project ]
		then
			toolbox+="${i} "

		elif [ ${i} == $pythone ]
		then
			toolbox+="${i} "

		fi

	done

fi
if [ $? -ne 0 ]
then
	echo "There's no Toolbox installed checking else where....";
	tool_exits=false;	
fi

}

checkMain(){

	local jetprog=`(ls ~/.local/share/JetBrains/ | awk '{print $1}') 2> /dev/null`;
	
	local baseMain=`(ls ~/.local/share/JetBrains/ | awk '{print $1}' | grep -i $1) 2> /dev/null`;
	
	local maybeerror=`(ls ~/.local/share/JetBrains/$baseMain 2> /dev/null)`;	
	if [ "$?" != "0" ]
	then 
		echo "error";
		
	else
		local flex=`ls ~/.local/share/JetBrains/$baseMain`;
		for kik in $flex;do
			if [ $kik == "eval-restart" ]
			then	
				cleanUp $1;
				exit;

			fi
		done

		local locat=`find . -name "eval-restart" -type d`
		if [ $locat == "./eval-restart" ]
		then
			local mov=`(cp -r eval-restart/ ~/.local/share/JetBrains/$baseMain) 2> /dev/null`;
			echo -e "$green[+]$end Enjoy!! $yellow$1$end just got $red Soft $end$blue Exploited $end$red:$end$blue}$end";
			exit;
			
		fi
		
	fi
	


}

checkDirEmty(){

	local ytme=`(echo "$1" | cut -d "/" -f 5)`;
	if [ -z $ytme ]
	then
		echo "error";
	else 
		echo "$1";
	fi
}

cleanUp(){
	baseToolbox=$(lastResort $1); #ALREADY WORK CHECKED
	echo "$baseToolbox";
}

errorHandleForCU(){
	if [ $1 == "error" ]
	then
	 exit;	
	fi

}

installInToolBox(){
	local base=`find ~/.local/share/JetBrains/Toolbox/apps -name "build.txt" -type f`;
	for lo in $base;
	do
		local program=`echo "$lo" | cut -d "/" -f 9`;
		if [ $program == "$1" ]
		then
			local buildId=`(find ~/.local/share/JetBrains/Toolbox/apps/$1/ch-0/ -type d | cut -d "/" -f 11 | tr "\n" " " | awk '{print $20}')`;
		fi

	done	
	local folder=`(ls ~/.local/share/JetBrains/Toolbox/apps/$1/ | awk '{print $1}')`;
	if [ -z "$folder" ]
	then
		echo -e "$red[-]$end $white Folder empty no such application$end";
	else
		
		local folder2=`(ls ~/.local/share/JetBrains/Toolbox/apps/$1/ch-0/$buildId/plugins/)`;	
		for dark in $folder2;
		do
			if [ $dark == "eval-restart" ]
			then
				echo -e "$green[+]$end $blue Already Installed$end";
				exit
			fi
		done
		local location=`find . -name "eval-restart" -type d`;
		if [ $location == "./eval-restart" ]
		then
			local moved=`(cp -r eval-restart/ ~/.local/share/JetBrains/Toolbox/apps/$1/ch-0/$buildId/plugins/) 2> /dev/null`;
			echo -e "$green[+]$end Enjoy!! $yellow$1$end just got $red Soft $end $blue Exploited $end $red:$end$blue}$end";
			exit;
		else
			echo -e "$red[-]$end $white you miissing some files$end";
			exit
		fi
			
		
	fi
}
alreadyInstall(){
	local dir=`($1)`

}

lastResort(){
	notInToolBox=""
	for d in $toolbox;do
		if [ $d == $1 ]
		then
			installInToolBox $1;
		else
			notInToolBox+="${d} ";
		fi
	done
	if [ -z "$notInToolBox" ]
	then
		echo -e "$green[+]$end $blue Already Installed$end";
		exit
	else
		some="ntb";
		echo "$some";
	fi
}
logic(){
data="0";
for k in $1;do
	if [ $k == "ntb" ]
	then
		data="1";
	fi
done
if [ $data == "0" ]
then	
	echo -e "$message";
else
	echo -e "$green[+]$end $white It's already installed!!$end";
fi

}

base(){
dir="~/.local/share/JetBrains/";
intelliu="IDEA-U";
intellic="IDEA-C";
python="Pycharm";
pythonp="PyCharm-P";
pythonc="Pycharm-C";
puthone="Pycharm-E"
intelli="IntelliJIdea";
ruby="RubyMine";
goland="Goland";
webstorm="WebStorm";
intelli="intelli";
clion="Clion";
rider="Rider";
android="AndroidStudio";
datal="Datalore";
datag="DataGrip";
mps="MPS";
project="Projector";
php="PhpStorm";

end="\e[0m";
red="\e[91m";
blue="\e[36m";
green="\e[92m";
white="\e[97m";
yellow="\e[93m";
}
#installing(){
#

#}

main(){
base
checkToolBox
clear;
banner
menu
}

main

