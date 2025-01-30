#!/bin/bash

blue='\e[1;34m'

echo -e "${blue}== By 0xRar - 0xrar.net - 2024 =="
echo -e "offensive security tools installer for a fresh linux install\n\n"

apt update -y && apt upgrade -y


# needed tools
apt install -y vim
apt install -y neovim
apt install -y terminator
apt install -y git


# required programming languages
apt install -y golang
apt install -y python3
apt install -y pipx
apt install -y ruby-rubygems


# adding GOPATH to .bashrc
echo "GOPATH=$HOME/go" >> .bashrc
echo "PATH=$PATH:/usr/local/go/bin/:$GOPATH/bin" >> .bashrc
source ~/.bashrc


# == networking ==
apt install -y ftp
apt install -y ssh
apt install -y wireshark
apt install -y libpcap-dev
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
apt install -y nmap


# == web fingerprinting ==
apt install -y wafw00f
apt install -y whatweb


# == web scanners ==
apt install -y nikto
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest


# == web fuzzers and bruteforcers, wordlists ==
apt install -y hydra
apt install -y ffuf
apt install -y gobuster
apt install -y dirsearch

mkdir ~/usr/share/wordlists; git clone https://github.com/danielmiessler/SecLists.git ~/usr/share/wordlists


# == metasploit ==
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall


## == Active Directory Tools ==
apt install -y bloodhound # bloodhound-gui
pip install bloodhound # bloodhound ingestor
apt install -y python3-impacket
pipx install git+https://github.com/Pennyw0rth/NetExec

