# DnsExplorer.sh

## Descrição

DnsExplorer.sh é uma ferramenta em Bash projetada para encontrar informações de domínios de forma automatizada, utilizando consultas WHOIS e RDAP (Registration Data Access Protocol). Ele simplifica a obtenção de detalhes como registro de domínio, NetBlock/ASN e outras informações relevantes associadas a um domínio específico.

## Funcionalidades Principais

- Realiza consultas WHOIS para obter informações na autoridade do domínio.
- Utiliza RDAP para detalhar NetBlock/ASN associados ao domínio.
- Apresenta informações como inetnum, NetRange, NetName e proprietário do bloco de endereços IP vinculado ao domínio.

## Como Usar

Para usar o script, basta especificar o domínio desejado como argumento ao executá-lo. Por exemplo:
```bash
./DnsExplorer.sh example.com
