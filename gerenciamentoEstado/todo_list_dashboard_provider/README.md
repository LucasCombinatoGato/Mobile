# Gerenciador de Tarefas com DashBoard e Provider

Especificações dos requisitos se Software (SRE)

Documentação baseada no ISO/IEEE/IE C29148:2018

## 1. Identificação do Projeto

Projeto: Gerenciador de Tarefas com Dashboard

Versão: 1.0.0
*Primeiro nº Major* = modificações grandes de estrutura
*Segundo nº Minor* = adição de novas faculdades, modificações menores
*Terceiro nº Patch* = correções e mudanças menores (fonte, cores, tamanhos)

Data: 2026-04-23

## 2. Introdução

### 2.1 Propósito

Descrever os requisitos do projeto "GTD", aplicação mobile desenvolvida em flutter com uso de **Provider** e estrutura **MVC**

### 2.2 Escopo

O sistema permitirá:
 - Cadastrar tarefas;
 - Visualizar a lista de tarefas;
 - Alterar o status da tarefa;
 - Remover tarefas concluídas;
 - Visualizar indicadores consolidados em um dashboard

Conceito do Projeto:

 - Modelagem de dados;
 - Separação entre interface e regras de negócio (MVC);
 - Gerenciamento de estado com provider

### 2.3 Acrônimos e Siglas

 - **GTD**: Gerenciamento de tarefas com dashboard

### 2.4 Visão Geral

Este documento apresenta a descrição geral do sistema, os requisitos funcionais e não-funcionais e regras de negócio

## 3. Requisitos

### 3.1 

| ID | REQUISITO | DESCRIÇÃO |
|---|---|---|
| RF-001 | Criar tarefa | O sistema deve permitir que o usuário crie uma nova tarefa com título, descrição e data de vencimento|
| RF-002 | Listar Tarefas | O sistema deve exibir todas as tarefas cadastradas em formato de lista |
| RF-003 | Atualizar Status | O sistema deve permitir alterar o status da tarefa (pendente, em progresso, concluída) |
| RF-004 | Deletar Tarefa | O sistema deve permitir remover tarefas concluídas do sistema |
| RF-005 | Filtrar Tarefas | O sistema deve permitir filtrar tarefas por status e data de vencimento |
| RF-006 | Dashboard de Indicadores | O sistema deve exibir um dashboard com estatísticas consolidadas (total de tarefas, tarefas concluídas, tarefas pendentes) |
| RF-007 | Persistência de Dados | O sistema deve manter os dados de tarefas armazenados localmente no dispositivo |
| RF-008 | Editar Tarefa | O sistema deve permitir que o usuário modifique os dados de uma tarefa existente |

### 3.2 Requisitos Não-Funcionais

## 4. Resgras do Negócio