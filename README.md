
# Docker: Utilização Prática no Cenário de Microsserviços

## **Marcos Vitor | Projeto Prático de Microsserviços com Docker**

O Docker tem ganhado popularidade no mundo da tecnologia devido à sua capacidade de **abstrair ambientes de desenvolvimento**, facilitando a **portabilidade** e **escalabilidade** das aplicações. Neste projeto, abordaremos como o **Docker** pode ser utilizado para criar uma arquitetura de **Microsserviços**, utilizando containers para isolar serviços e otimizando a utilização de recursos. O objetivo deste projeto é criar uma estrutura funcional e escalável, além de integrar o Docker com uma aplicação de **balanço de carga** via **Nginx**.

### **O que é Docker e Microsserviços?**

Docker é uma plataforma que permite que você crie, execute e compartilhe containers. Os containers são unidades leves e portáteis que podem ser usadas para rodar qualquer aplicação de forma isolada e independente do sistema operacional subjacente.

Já os **Microsserviços** são uma abordagem arquitetural onde as funcionalidades de uma aplicação são divididas em pequenos serviços independentes, permitindo que cada serviço seja desenvolvido, testado e escalado separadamente. Com a utilização do Docker, podemos facilmente isolar cada microsserviço em um container.

### **Objetivo do Projeto**

O projeto tem como objetivo criar uma aplicação composta por múltiplos **Microsserviços** e um **banco de dados MySQL**, tudo orquestrado por **Docker**. Será utilizado o **Nginx** como balanceador de carga para distribuir as requisições entre várias instâncias do serviço PHP.

O **banco de dados MySQL** será responsável por armazenar as informações dos usuários, e as **instâncias PHP** irão processar as requisições e interagir com o banco.

### **Pré-requisitos**

Antes de começar, é importante que você tenha:

- **Docker** e **Docker Compose** instalados.
- Conhecimentos básicos em **Linux**, **Docker** e **AWS**.
- Familiaridade com **PHP** e **MySQL**.

### **Arquitetura do Sistema**

A arquitetura do sistema é composta pelos seguintes containers:

1. **MySQL**: Servirá como banco de dados central para armazenar os dados.
2. **PHP (3 instâncias)**: Rodarão a aplicação PHP que interage com o banco de dados e gera os registros.
3. **Nginx**: Atuará como balanceador de carga para distribuir as requisições entre as instâncias PHP.
4. **Docker Compose**: Utilizado para orquestrar todos os containers, facilitando a criação e o gerenciamento da infraestrutura.

### **Como Rodar o Projeto**

1. **Clonar o Repositório:**

   Clone este repositório para a sua máquina local:

   ```bash
   git clone https://github.com/seu-usuario/nome-do-repo.git
   cd nome-do-repo
   ```

2. **Construir os Containers:**

   Utilize o Docker Compose para construir e iniciar os containers:

   ```bash
   docker-compose up --build
   ```

3. **Acessar a Aplicação:**

   Depois que os containers estiverem rodando, acesse a aplicação via browser em:

   ```text
   http://localhost:4500
   ```

   Você verá a aplicação PHP interagindo com o banco de dados MySQL.

### **Estrutura do Projeto**

A estrutura do projeto é a seguinte:

```
/meu-projeto/
│
├── app/
│   └── index.php
│
├── nginx/
│   ├── Dockerfile
│   └── nginx.conf
│
├── mysql/
│   └── banco.sql
│
├── Dockerfile
├── docker-compose.yml
└── .env
```

### **O que está incluso no Projeto?**

- **Dockerfile** para o PHP + Apache.
- **Dockerfile** para o Nginx.
- **docker-compose.yml** para orquestrar a aplicação com MySQL e Nginx.
- **nginx.conf** para configurar o balanceamento de carga entre as instâncias PHP.
- **banco.sql** com a estrutura inicial do banco de dados MySQL.
- **index.php** com lógica para inserir dados no banco de dados.

### **Possíveis Melhorias**

- Adicionar autenticação com **JWT**.
- Criar uma interface frontend para exibir os dados registrados.
- Configurar **CI/CD** utilizando **GitHub Actions** para automatizar testes e deploy.

### **Conclusão**

Esse projeto demonstra como o **Docker** pode ser utilizado para criar uma arquitetura moderna de **Microsserviços**, escalável e isolada. Ao usar o **Nginx** como balanceador de carga, conseguimos distribuir as requisições de forma eficiente entre as instâncias PHP. O **Docker Compose** facilita a orquestração de todos os containers, tornando o gerenciamento de dependências muito mais simples.

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para abrir uma **issue** ou **pull request** no GitHub!

### **Licença**

Esse projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
