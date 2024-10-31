# Definições
CC := gcc
CFLAGS := -Wall -g

# Diretórios dos arquivos de origem
SRC_CLIENTES_DIR := Projeto/src/clientes
SRC_FUNCIONARIOS_DIR := Projeto/src/funcionarios
SRC_PRODUTOS_DIR := Projeto/src/produto
SRC_VENDAS_DIR := Projeto/src/vendas
SRC_RELATORIO_DIR := Projeto/src/relatorios
SRC_INTERFACE := Projeto/interface.c
SRC_VALIDA := Projeto/valida.c
MAIN := main.c

# Coleta todos os arquivos .c de cada pasta
SRCS := $(wildcard $(SRC_CLIENTES_DIR)/*.c) \
        $(wildcard $(SRC_FUNCIONARIOS_DIR)/*.c) \
        $(wildcard $(SRC_PRODUTOS_DIR)/*.c) \
        $(wildcard $(SRC_VENDAS_DIR)/*.c) \
        $(wildcard $(SRC_RELATORIO_DIR)/*.c) \
        $(SRC_INTERFACE) \
        $(SRC_VALIDA) \
        $(MAIN)

# Arquivos objeto (armazenados no diretório temporário 'obj')
OBJS := $(patsubst %.c, %.o, $(SRCS))

# Cabeçalhos
HDRS := $(wildcard $(SRC_CLIENTES_DIR)/*.h) \
        $(wildcard $(SRC_FUNCIONARIOS_DIR)/*.h) \
        $(wildcard $(SRC_PRODUTOS_DIR)/*.h) \
        $(wildcard $(SRC_VENDAS_DIR)/*.h) \
        $(wildcard $(SRC_RELATORIO_DIR)/*.h) \
        Projeto/interface.h \
        Projeto/valida.h

# Executável
TARGET := main

# Regra principal: compilar e linkar todos os objetos necessários
all: $(TARGET)

# Compilar objetos
%.o: %.c $(HDRS)
	$(CC) $(CFLAGS) -c $< -o $@

# Linkar os objetos para criar o executável final
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Limpar arquivos objeto e executável
clean:
	rm -f $(OBJS) $(TARGET)

# Executar o programa
run: all
	./$(TARGET)