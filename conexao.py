import psycopg2
from psycopg2 import Error
    
try:
    # Conecte-se a um banco de dados existente
    connection = psycopg2.connect(
        user="SEU_USUARIO_AQUI",
        password="SUA_SENHA_AQUI",
        host="localhost",
        port="5432",
        database="NOME_DO_SEU_BANCO")

    # Crie um cursor para realizar operações de banco de dados
    cursor = connection.cursor()
    # Print PostgreSQL details
    print("Informações do servidor PostgreSQL")
    print(connection.get_dsn_parameters(), "\n")
    # Executando uma consulta SQL
    cursor.execute("SELECT(version());")
    print("\n")
    # Buscar resultado
    record = cursor.fetchone()
    print("Você está conectado a - ", record, "\n")

    cursor.execute("SELECT * FROM aeroporto")
    cabecalho = [desc[0] for desc in cursor.description]
    print(cabecalho)
    a = cursor.fetchall()
    print(a)

except (Exception, Error) as error:
    print("Erro ao conectar ao PostgreSQL", error)
finally:
    if (connection):
        cursor.close()
        connection.close()
        print("A conexão PostgreSQL está fechada agora!")