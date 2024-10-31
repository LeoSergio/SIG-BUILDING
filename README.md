# SIG BUILDING- Um Sistema de Gestão para Loja de Materiais de Construção

<h2>DESCRIÇÃO DO PROJETO </h2>
<p>
Este projeto é um sistema de gestão desenvolvido para uma loja de materiais de construção. Ele foi criado como parte da avaliação da disciplina de Programação na UFRN (Universidade Federal do Rio Grande do Norte).

O sistema permite o gerenciamento de produtos, clientes, vendas e relatórios, facilitando o controle de estoque e o acompanhamento das vendas na loja.
</p>

<h2>ESTRUTURA, MODULARIZAÇÃO E COMPILAÇÃO: </h2>  
<p>
O projeto está organizado de forma modular, com cada funcionalidade principal separada em pastas específicas, facilitando o desenvolvimento e a manutenção do código.

# Compilação do Projeto no Linux
no VScode instale a estensão chamada "Makefile Tools"

Use o Makefile através do comando "make" ,e em seguida use o comando "./main"

# Compilação do Projeto no Windows

Este guia explica como configurar o ambiente e compilar o projeto no Windows utilizando o MSYS2.

## Pré-requisitos

Para compilar o projeto, certifique-se de ter o MSYS2 e o GCC instalados.

### Instalação do MSYS2 e do Make

1. **Baixe e instale o MSYS2**: [https://www.msys2.org](https://www.msys2.org).
   - O MSYS2 emula um terminal do Linux (UNIX) no Windows, permitindo a utilização de ferramentas como `make` e `gcc`.

2. **Atualize os pacotes do MSYS2**:
   - Abra o terminal do MSYS2 e execute o comando:
     ```bash
     pacman -Syu
     ```

3. **Instale o `make`**:
   - Ainda no terminal do MSYS2, instale o `make` com o comando:
     ```bash
     pacman -S make
     ```

### Configuração do GCC

4. **Verifique a instalação do GCC**:
   - Execute o comando abaixo para verificar se o GCC está instalado:
     ```bash
     gcc --version
     ```
   - Caso o GCC não esteja instalado, instale-o com o seguinte comando:
     ```bash
     pacman -S mingw-w64-x86_64-gcc
     ```

5. **Verifique o `PATH`**:
   - Execute o comando para checar se o caminho do GCC está no `PATH`:
     ```bash
     echo $PATH
     ```
   - Se o `PATH` não incluir o caminho do GCC, adicione-o com o comando:
     ```bash
     export PATH=$PATH:/mingw64/bin
     ```

6. **Reinicie o terminal**:
   - Após configurar o `PATH`, feche e reabra o terminal do MSYS2 para aplicar as alterações.

### Compilação do Projeto

7. **Execute o Makefile**:
   - Navegue até o diretório do projeto e execute o comando abaixo para compilar e rodar o projeto:
     ```bash
     make run
     ```

---

Seguindo estas etapas, você estará apto a compilar o projeto corretamente no ambiente Windows usando o MSYS2.

</p>

<h2>TECNOLOGIAS UTILIZADAS </h2>  
<p>
Linguagem: C  

IDE: Visual Studio Code (VSCode)  
</p>
<h2>FUNCIONALIDADES PRINCIPAIS</h2>
<p>
Gestão de Produtos: Cadastro, atualização e exclusão de produtos, com controle de estoque.  

Gestão de Clientes: Registro e atualização de dados dos clientes.  

Gestão de Vendas: Registro de vendas e cálculo do valor total.  

Relatórios: Geração de relatórios de vendas e de produtos em estoque.  
</p>