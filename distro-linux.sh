#!/data/data/com.termux/files/usr/bin/sh
# varias distro linux sem root especialmente no termux
# autor: [olive]
apt update
apt install figlet

clear

if [ -f $PREFIX/bin/lolcat ]
then
# menu principal
system_os() {
	echo "\033[01;94m
	{1} - Ubuntu
	{2} - Debian
	{3} - Kali Linux
	{4} - Parrot Security OS
	{5} - Fedora
	{6} - CentOs
	{7} - OpenSuse 
	{8} - ArchLinux
	"
}

# comandos de instalacao das distribuicoes pra linha de comandos
comando_ubuntu() {
	echo "INTALANDO Ubuntu"
	cd ~
	pkg install wget proot -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh

}
comando_debian() {
	echo "INTALANDO ubuntu"
	cd ~
	pkg install wget proot -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
}
comando_kali() {
	echo "INSTALANDO kali"
	cd ~
	pkg install wget proot -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
}
comando_parrot() {
	echo "INSTALANDO Parrot"
	cd ~
	pkg install wget proot -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh
}
comando_fedora() {
	echo "INSTALANDO fedora"
	cd ~
	pkg install wget proot tar -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Fedora/fedora.sh && bash fedora.sh
}
comando_centos() {
	echo "INSTALANDO CentOs"
	cd ~
	pkg install wget proot tar -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/CentOS/centos.sh && bash centos.sh
}
comando_opensuse() {
	echo "INSTALANDO OpenSUSE"
	cd ~
	pkg install wget proot tar -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/openSUSE/armhf/opensuse.sh && bash opensuse.sh
}
comando_archlinux() {
	echo "INSTALANDO ArchLinux"
	cd ~
	pkg install wget proot tar -y && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh
	
}

banner() {
	clear
	figlet Distro-Linux | lolcat -a -d 2
	echo "Distribuicoes para linux" | lolcat
}

banner
system_os
echo "Qual Distro Instalar [?] Ou Ctr+C pra sair" | lolcat
read resp

case $resp in
	"1")
		echo "Deseja Instalar ubuntu [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_ubuntu
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"2")
		echo "Deseja instalar debian [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_debian
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"3")
		echo "Deseja instalar kali [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_kali
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"4")
		echo "Deseja instalar parrot? [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_parrot
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"5")
		echo "Deseja instalar fedora [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_fedora
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"6")
		echo "Deseja instalar CentOs [y/n]? " | lolcat
		read r
		if test $r = "y"
		then
			comando_centos
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"7")
		echo "Deseja instalar OpenSUSE [y/n]?" | lolcat
		read r
		if test $r = "y"
		then
			comando_opensuse
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	"8")
		echo "Deseja instalar ArchLinux[y/n]" | lolcat
		read r
		if test $r = "y"
		then
			comando_archlinux
			echo "Enter para voltar ou Ctr+C para sair" | lolcat
			read r
			./distro-linux.sh
		else
			./distro-linux.sh
		fi;;
	*)
esac
else
	apt install ruby; gem install lolcat; ./distro-linux.sh
fi
