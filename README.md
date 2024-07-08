# DnsExplorer.sh

## Descrição

DnsExplorer.sh é uma ferramenta em Bash projetada para explorar informações de domínios de forma automatizada, utilizando consultas WHOIS e RDAP (Registration Data Access Protocol). Ele simplifica a obtenção de detalhes como registro de domínio, NetBlock/ASN e outras informações relevantes associadas a um domínio específico.

## Funcionalidades Principais

- Realiza consultas WHOIS para obter informações na autoridade do domínio.
- Utiliza RDAP para detalhar NetBlock/ASN associados ao domínio.
- Apresenta informações como inetnum, NetRange, NetName e proprietário do bloco de endereços IP vinculado ao domínio.

## Como Usar

Para usar o script, basta especificar o domínio desejado como argumento ao executá-lo. Por exemplo:
```bash
./DnsExplorer.sh example.com

Substitua <domínio> pelo domínio que você deseja explorar.
Requisitos

    Bash (o script foi testado no Bash 4.4.19).
    Acesso à internet para realizar consultas aos servidores WHOIS e RDAP.

Status do Projeto

Este projeto está atualmente em fase de testes e desenvolvimento ativo. Ainda há melhorias planejadas e novas funcionalidades a serem implementadas.
Aviso Legal

Este script foi desenvolvido para fins educacionais e de testes de segurança. Use-o de maneira ética e responsável. Não utilize este script para acessar sistemas sem autorização.
Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests com melhorias, correções de bugs ou novas funcionalidades.
Licença

Este projeto é licenciado sob a MIT License.
