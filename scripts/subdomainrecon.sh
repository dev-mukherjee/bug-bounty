domain=$1
wordlist=$2
resolver=$3

subdomain_enum() {
    #Create all the directories and subdirectories
    mkdir -p $domain $domain/sources $domain/recon $domain/recon/nuclei $domain/recon/waybackurls $domain/recon/gf $domain/recon/wordlists $domain/recon/massdns

    #Subdomain Enumeration
    subfinder -d $domain -o $domain/sources/s1.txt
    assetfinder --subs-only $domain | tee $domain/sources/s2.txt
    amass enum -passive -d $domain -config /root/config/amass_config.ini -o $domain/sources/s3.txt
    curl -s https://dns.bufferover.run/dns?q=.$domain | jq -r .FDNS_A[] | cut -d',' -f2 | sort -u | tee $domain/sources/s4.txt
    crtsh $domain | tee $domain/sources/s5.txt

    #bruteforce subdomain using wordlist
    shuffledns -d $domain -w $wordlist -r $resolver -o $domain/sources/s6.txt

    #add chaos afftet getting API key

    #Sort and Extract all the Unqiue domains
    cat $domain/sources/*.txt >$domain/sources/all.txt
    cat $domain/sources/all.txt | sort -u >$domain/allUnique.txt
}

resolve_domains() {

    #Resolve the subdomains
    shuffledns -d $domain -list $domain/allUnique.txt -o $domain/finalDomains.txt -r $resolver

}

http_probing() {

    #check the valid HTTP and HTTPS domains
    cat $domain/finalDomains.txt | httpx -threads 100 -o $domain/recon/httpx.txt
}

main(){
    subdomain_enum
    resolve_domains
    http_probing
}
