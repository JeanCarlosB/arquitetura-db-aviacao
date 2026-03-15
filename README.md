# ✈️ Arquitetura de Banco de Dados: Logística de Aviação

Este projeto apresenta a construção de ponta a ponta de um banco de dados relacional focado na gestão logística de rotas aéreas. O fluxo abrange desde a normalização de planilhas brutas até a extração automatizada de dados via scripts em Python.

### 🎯 O Desafio Resolvido
Transformar uma base de dados desestruturada (planilha única) em um modelo relacional robusto e normalizado, permitindo consultas analíticas complexas e garantindo a integridade absoluta das informações logísticas (voos, rotas e aeroportos).

### 📊 Fonte dos Dados
Os dados brutos originais utilizados como ponto de partida para este projeto foram extraídos de um dataset público do **Kaggle**. O foco técnico deste repositório consistiu em capturar essa base plana e desestruturada e submetê-la a um rigoroso processo de normalização no Excel, adequando-a aos padrões de bancos de dados relacionais corporativos antes de sua injeção no PostgreSQL.

### 🛠️ Arquitetura e Tecnologias
* **Excel (Transformação e Limpeza):** Aplicação rigorosa de regras de normalização até a **3ª Forma Normal (3NF)** para fragmentar os dados brutos em entidades distintas, eliminando redundâncias.
* **PostgreSQL & SQL:** Criação da infraestrutura física do banco (DDL) e desenvolvimento de consultas gerenciais avançadas utilizando múltiplos `JOINs`, `GROUP BY` e funções de agregação (DML).
* **Python (psycopg2):** Criação de um script de integração para estabelecer conexão nativa, automatizando o envio de *queries* e o consumo dos dados diretamente pelo terminal.
* **pgERD:** Modelagem visual do Diagrama Entidade-Relacionamento.

### 🚀 Como executar
1. Clone este repositório em sua máquina local.
2. Execute o script `criacao_tabelas.sql` no seu ambiente PostgreSQL (como o pgAdmin) para montar a infraestrutura de tabelas.
3. Importe os 5 arquivos `.csv` fornecidos no repositório para popular as tabelas recém-criadas.
4. Insira as suas credenciais locais de banco de dados no arquivo `conexao.py` e rode o script Python para testar a comunicação direta com o servidor.
