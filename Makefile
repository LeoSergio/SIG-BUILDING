# Definições
CC := gcc
CFLAGS := -Wall -g

# Diretórios dos arquivos de origem
SRC_DIR := SIG-BUILDING/Projeto-programacao/Projeto/src
PRO_DIR := Projeto-programacao/Projeto
MAIN_DIR := Projeto-Programacao
DIR := SIG-BUILDING

SRC_CLIENTES_DIR := $(SRC_DIR)/clientes
SRC_FUNCIONARIOS_DIR := $(SRC_DIR)/funcionarios
SRC_PRODUTOS_DIR := $(SRC_DIR)/produto
SRC_VENDAS_DIR := $(SRC_DIR)/vendas
SRC_RELATORIO_DIR := $(SRC_DIR)/relatorios
SRC_INTERFACE := $(PRO_DIR)/interface.c
SRC_VALIDA := $(PRO_DIR)/valida.c
MAIN := $(MAIN_DIR)/main.c
DIR := $()/


# Coleta todos os arquivos .c de cada pasta
SRCS := $(wildcard $(SRC_CLIENTES_DIR)/*.c) \
        $(wildcard $(SRC_FUNCIONARIOS_DIR)/*.c) \
        $(wildcard $(SRC_PRODUTOS_DIR)/*.c) \
        $(wildcard $(SRC_VENDAS_DIR)/*.c) \
        $(wildcard $(SRC_RELATORIO_DIR)/*.c) \
        $(PRO_DIR_INTERFACE) \
        $(PRO_DIR_VALIDA) \
        $(MAIN_DIR) \
 
# Arquivos objeto (armazenados no diretório temporário 'obj')
OBJS := $(patsubst %.c, %.o, $(SRCS))

# Cabeçalhos
HDRS := $(wildcard $(SRC_CLIENTES_DIR)/*.h) \
        $(wildcard $(SRC_FUNCIONARIOS_DIR)/*.h) \
        $(wildcard $(SRC_PRODUTOS_DIR)/*.h) \
        $(wildcard $(SRC_VENDAS_DIR)/*.h) \
        $(wildcard $(SRC_RELATORIO_DIR)/*.h) \
        $(SRC_DIR)/interface.h \
        $(SRC_DIR)/valida.h

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
