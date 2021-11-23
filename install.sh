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
        echo "Don't forget to set up AWS credentials!"
        cd ~/tools
    }

    Aquatone(){
        echo -e "${Green}Installing Aquatone${NC}"
        git clone https://github.com/michenriksen/aquatone.git
        cd aquatone
        go build
        cd ~/tools
    }

    JSParser(){
        echo "Installing JSParser"
        git clone https://github.com/nahamsec/JSParser.git
        cd JSParser
        sudo python setup.py install
        cd ~/tools
    }

    Sublist3r(){
        echo "Installing Sublist3r"
        git clone https://github.com/aboul3la/Sublist3r.git
        cd Sublist3r
        pip install -r requirements.txt
        cd ~/tools
    }
    
    Teh_s3_bucketeers(){
        echo "Installing teh_s3_bucketeers"
        git clone https://github.com/tomdev/teh_s3_bucketeers.git
        cd ~/tools
    }

    Wpscan(){
        echo "Installing Wpscan"
        git clone https://github.com/wpscanteam/wpscan.git
        cd wpscan
        sudo gem install bundler
        bundle install --without test
        cd ~/tools
    }

    Lazys3(){
        echo "Installing lazys3"
        git clone https://github.com/nahamsec/lazys3.git
        cd ~/tools
    }

    Gobuter(){
        echo "Installing Gobuster"
        apt install -y gobuter
        cd ~/tools
    }

    Knock(){
        echo "Installing knock"
        git clone https://github.com/guelfoweb/knock.git
        cd Knock
        pip3 install -r requirements.txt
        cd ~/tools
    }

    Nmap(){
        echo "Intalling Nmap"
        apt install -y nmap
        cd ~/tools
    }

    Massdns(){
        echo "Installing massdns"
        git clone https://github.com/blechschmidt/massdns.git
        cd massdns
        make
        cd ~/tools
    }

    Asnlookup(){
        echo "Installing asnlookup"
        git clone https://github.com/yassineaboukir/asnlookup.git
        cd asnlookup
        pip install -r requirements.txt
        cd ~/tools
    }

    Httprobe(){
        echo "Installing Httprobe"
        git clone https://github.com/tomnomnom/httprobe.git
        cd httprobe
        go build
        cd ~/tools
    }

    Unfurl(){
        echo "Installing Unfurl"
        git clone https://github.com/tomnomnom/unfurl.git
        cd unfurl
        go build
        cd ~/tools
    }
    
    Waybackurls(){
        echo "Installing Waybackurls"
        git clone https://github.com/tomnomnom/waybackurls.git
        cd waybackurls
        go build
        cd ~/tools
    }

    Crtndstry(){
        echo "Installing crtndstry"
        git clone https://github.com/nahamsec/crtndstry.git
        echo "done"
        cd ~/tools
    }

    Seclists(){
        echo "Installing Seclists"
        git clone https://github.com/danielmiessler/SecLists.git
        mv SecLists seclists
        cd ~/tools
    }
}