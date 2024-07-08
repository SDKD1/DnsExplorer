# DnsExplorer
O script `DnsExplorer.sh` foi feito para trazer informações de domínios através de consultas WHOIS e RDAP. Ele automatiza o processo de consulta e exibe informações relevantes de um domínio, como detalhes de registro, NetBlock/ASN, autoridade e outras informações associadas.



# DnsExplorer.sh

## Descrição

DnsExplorer.sh é uma ferramenta desenvolvida em Bash para explorar informações de domínios através de consultas WHOIS e RDAP (Registration Data Access Protocol). Ele automatiza o processo de consulta e exibição de informações relevantes de um domínio, como detalhes de registro, NetBlock/ASN, e outras informações associadas.

## Funcionalidades Principais

- Consulta WHOIS na autoridade do domínio especificado.
- Consulta RDAP para informações detalhadas de NetBlock/ASN associadas ao domínio.
- Exibe detalhes como inetnum, NetRange, NetName, e proprietário do bloco de endereços IP associado ao domínio.

## Uso

Para utilizar o script, basta especificar o domínio desejado como argumento ao executá-lo. Por exemplo:
```bash
./DnsExplorer.sh example.com
