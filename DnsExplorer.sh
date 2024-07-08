#!/bin/bash

#AUTOR: Deivid Kelven
#Data de criação: 07/06/2024
#Descrição: ...

dns_explorer(){
    corPadrao="\033[0m"
    amarelo="\033[1;33m"
    verdeClaro="\033[1;32m"
    cyan="\033[0;36m"

    if [ -z "$1" ]; then
        echo -e "${amarelo}Uso: $0 <domínio>${corPadrao}"
        exit 1
    fi

    local dominio="$1"
    local iana="www.iana.org"

    echo -e "\n${verdeClaro}DnsExplorer VERSION: 1.0v\n"
    echo -e "${verdeClaro}--------- [$dominio] ---------${corPadrao}"

    exec 3<>/dev/tcp/$iana/80
    echo -e "GET /whois?q=$dominio HTTP/1.1\r\nHost: $iana\r\nUser-Agent: DnsExplorer\r\nConnection: Close\r\n\r\n" >&3
    local resposta=$(cat <&3)
    exec 3<&-
    exec 3>&-

    echo -e "${cyan}Consulta WHOIS na autoridade do domínio:${corPadrao}"
    whois $dominio | grep -v "%" | grep ":" | grep -v ">>>"
    echo -e "${verdeClaro}------------------------------------------${corPadrao}"

    __rdap__ "$dominio"
}

__rdap__(){
    local rdap="www.arin.net"
    local porta=80

    local dominio="$1"
    local resposta

    ip=$(ping -c 1 $dominio | grep "64 bytes" | cut -d "(" -f 2 | cut -d ")" -f 1)

    echo -e "${cyan}Consultando NetBlock/ASN do domínio: $dominio - [RDAP]${corPadrao}\n"

    exec 3<>/dev/tcp/$rdap/$porta
    echo -e "GET /rdap/?query=$dominio HTTP/1.1\r\nHost: $rdap\r\nUser-Agent: DnsExplorer\r\nConnection: Close\r\n\r\n" >&3
    # Lendo a resposta
    while IFS= read -r line; do
        resposta+="$line\n"
    done <&3
    exec 3<&-

    if [[ -z "$resposta" ]]; then
        echo -e "${amarelo}Erro ao consultar o servidor RDAP:${corPadrao}"
        exit 1
    fi
    whois $ip | egrep -w "inetnum|NetRange|netrange|NetName|netname|owner" | cut -d ":" -f 2 
}

dns_explorer "$@"

