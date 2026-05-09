# ✈️ Arquitetura e Modelagem de Banco de Dados Logístico
### *Estruturação de dados robusta e normalização de ativos de aviação*

<p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=sql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Database_Design-005C84?style=for-the-badge&logo=db&logoColor=white" alt="Design">
</p>

## 🎯 Visão do Projeto e Valor de Negócio
Este projeto resolve o desafio de transformar bases de dados desestruturadas (planilhas planas) em modelos relacionais robustos. O foco foi construir uma infraestrutura logística para gestão de rotas aéreas, garantindo a integridade absoluta das informações e permitindo consultas analíticas complexas para suporte à decisão.

## ⚙️ Destaques da Solução (Foco Builder)
* **Modelagem Profissional (3NF):** Fragmentação de dados brutos extraídos do Kaggle em entidades distintas, aplicando rigorosamente as regras da **3ª Forma Normal** para eliminar redundâncias e anomalias.
* **Consultas Analíticas Avançadas:** Desenvolvimento de queries SQL complexas utilizando múltiplos **JOINs**, agrupamentos e funções de agregação para extrair insights operacionais sobre voos e aeroportos.
* **Integração e Automação:** Implementação de conexão nativa entre Python e **PostgreSQL** via `psycopg2`, automatizando o fluxo de extração e manipulação de dados diretamente via terminal.
* **Infraestrutura Escalável:** Criação de toda a arquitetura física do banco (DDL) e documentação visual através de Diagramas Entidade-Relacionamento (pgERD).

## 🛠️ Tecnologias Utilizadas
* **PostgreSQL**: SGBD para gerenciamento de dados relacionais e execução de DML/DDL.
* **Python (psycopg2)**: Automação de conexão e consumo de dados.
* **SQL**: Linguagem para modelagem e extração de inteligência de negócio.
* **Excel**: Utilizado para a etapa inicial de limpeza e normalização estrutural.

## 🚀 Como executar o projeto
1. Clone este repositório em sua máquina local.
2. Execute o script `criacao_tabelas.sql` no seu ambiente PostgreSQL para montar a infraestrutura de tabelas.
3. Importe os arquivos `.csv` fornecidos no repositório para popular as tabelas.
4. Insira as suas credenciais de banco de dados no arquivo `conexao.py` e execute o script Python para testar a comunicação direta.

---
**Jean Carlos Barros da Mata**
*Engenheiro de Soluções Técnicas*
📧 [jeansol.dev@gmail.com](mailto:jeansol.dev@gmail.com) | 🔗 [LinkedIn](https://linkedin.com/in/jean-carlos-barros)
