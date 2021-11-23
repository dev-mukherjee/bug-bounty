#! /usr/bin/bash

#Colors
Red='\033[0;31m'
NC='\033[0m' # No Color
Green='\033[0;32m'
Yellow='\033[1;33m'

updatataion(){
    echo -e "${Green}Updating your distro${NC}"
    apt update -y 
    apt full-upgrade -y
    apt dist-upgrade -y
}

initialization(){
    echo -e "${Green}Creating Your Arsenal${NC}"
    cd ~
    mkdir -p tools
}

dependensies(){
    echo -e "${Green}Installing All Dependesies${NC}"
    sudo apt-get install -y libcurl4-openssl-dev
    sudo apt-get install -y libssl-dev
    sudo apt-get install -y jq
    sudo apt-get install -y ruby-full
    sudo apt-get install -y libcurl4-openssl-dev
    sudo apt-get install -y libxml2
    sudo apt-get install -y libxml2-dev
    sudo apt-get install -y libxslt1-dev
    sudo apt-get install -y ruby-dev
    sudo apt-get install -y build-essential
    sudo apt-get install -y libgmp-dev
    sudo apt-get install -y zlib1g-dev
    sudo apt-get install -y build-essential
    sudo apt-get install -y libssl-dev
    sudo apt-get install -y libffi-dev
    sudo apt-get install -y python-dev
    sudo apt-get install -y python-setuptools
    sudo apt-get install -y libldns-dev
    sudo apt-get install -y python-dnspython
}

main-dependensies(){
    echo -e "${Green}Installing All Main-Dependesies${NC}"
    sudo apt-get install -y git
    sudo apt-get install -y nmap
    sudo apt-get install -y python
    sudo apt-get install -y python3
    sudo apt-get install -y python3-pip
    sudo apt-get install -y python-pip
    sudo apt-get install -y nodejs
    sudo apt-get install -y npm
    #sudo apt-get install -y snap
    sudo apt-get install -y chromium-browser
    sudo apt-get install -y rename
    sudo apt-get install -y xargs
    sudo apt-get install -y ruby
    sudo apt-get install -y apache2
    sudo apt-get install -y ngrok
    sudo apt-get install -y mysql
    sudo apt-get install -y golang
    sudo apt-get install -y golang-go
    sudo apt-get install -y gcc
    sudo apt-get install -y g++
    sudo apt-get install -y c++
}

tools(){
    echo -e "${Green}Installing All Tools${NC}"
    Aws-cli(){
        echo -e "${Green}Installing Aws-Cli${NC}"
        apt install -y awscli
        echo -e "${Yellow}Don't forget to set up AWS credentials!${NC}"
        cd ~/tools
    }

    Amass(){
        echo -e "${Green}Installing Amass${NC}"
        wget https://github.com/OWASP/Amass/releases/download/v3.15.0/amass_linux_amd64.zip
        unzip amass_linux_amd64.zip
        rm amass_linux_amd64.zip
        mv amass_linux_amd64 amass
        cd amass_linux_amd64
        cp amass /usr/local/bin/amass
        wget https://raw.githubusercontent.com/OWASP/Amass/master/examples/config.ini
        echo -e "${Yellow}Don't forget to populate your amass config file in $pwd!${NC}"
        cd ~/tools
    }

    Aquatone(){
        echo -e "${Green}Installing Aquatone${NC}"
        git clone https://github.com/michenriksen/aquatone.git
        cd aquatone
        go build
        cp aquatone /usr/local/bin/aquatone
        cd ~/tools
    }

    JSParser(){
        echo -e "${Green}Installing JSParser${NC}"
        git clone https://github.com/nahamsec/JSParser.git
        cd JSParser
        sudo python setup.py install
        cd ~/tools
    }

    Sublist3r(){
        echo -e "${Green}Installing Sublist3r${NC}"
        git clone https://github.com/aboul3la/Sublist3r.git
        cd Sublist3r
        pip install -r requirements.txt
        cd ~/tools
    }
    
    Teh_s3_bucketeers(){
        echo -e "${Green}Installing teh_s3_bucketeers${NC}"
        git clone https://github.com/tomdev/teh_s3_bucketeers.git
        cd ~/tools
    }

    Wpscan(){
        echo -e "${Green}Installing Wpscan${NC}"
        git clone https://github.com/wpscanteam/wpscan.git
        cd wpscan
        sudo gem install bundler
        bundle install --without test
        cd ~/tools
    }

    Lazys3(){
        echo -e "${Green}Installing lazys3${NC}"
        git clone https://github.com/nahamsec/lazys3.git
        cd ~/tools
    }

    Gobuter(){
        echo -e "${Green}Installing Gobuster${NC}"
        apt install -y gobuter
        cd ~/tools
    }

    Knock(){
        echo -e "${Green}Installing knock${NC}"
        git clone https://github.com/guelfoweb/knock.git
        cd Knock
        pip3 install -r requirements.txt
        cd ~/tools
    }

    Nmap(){
        echo -e "${Green}Intalling Nmap${NC}"
        apt install -y nmap
        cd ~/tools
    }

    Massdns(){
        echo -e "${Green}Installing Massdns${NC}"
        git clone https://github.com/blechschmidt/massdns.git
        cd massdns
        make
        cd ~/tools
    }

    Asnlookup(){
        echo -e "${Green}Installing Asnlookup${NC}"
        git clone https://github.com/yassineaboukir/asnlookup.git
        cd asnlookup
        pip install -r requirements.txt
        cd ~/tools
    }

    Httprobe(){
        echo -e "${Green}Installing Httprobe${NC}"
        git clone https://github.com/tomnomnom/httprobe.git
        cd httprobe
        go build
        cp httprobe /usr/local/bin/httprobe
        cd ~/tools
    }

    Unfurl(){
        echo -e "${Green}Installing Unfurl${NC}"
        git clone https://github.com/tomnomnom/unfurl.git
        cd unfurl
        go build
        cd ~/tools
    }
    
    Waybackurls(){
        echo -e "${Green}Installing Waybackurls${NC}"
        git clone https://github.com/tomnomnom/waybackurls.git
        cd waybackurls
        go build
        cp waybackurls /usr/local/bin/waybackurls
        cd ~/tools
    }

    Crtndstry(){
        echo -e "${Green}Installing crtndstry${NC}"
        git clone https://github.com/nahamsec/crtndstry.git
        echo "done"
        cd ~/tools
    }

    Seclists(){
        echo -e "${Green}Installing Seclists${NC}"
        git clone https://github.com/danielmiessler/SecLists.git
        mv SecLists seclists
        cd ~/tools
    }

    Crtsh(){
        echo -e "${Green}Installing Crtsh.Py${NC}"
        git clone https://github.com/YashGoti/crtsh.git
        cd crtsh
        pip3 install -r requirements.txt
        cp crtsh.py /usr/local/bin/crtsh
    }

    echo -e "${Green}Tools Installation Finished${NC}"
    chmod +x ./bugkill.sh
}