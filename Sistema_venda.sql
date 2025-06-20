CREATE DATABASE sistema_venda;
USE sistema_venda;
SHOW TABLES;
CREATE TABLE pessoa(
id_pessoa  INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
cpf VARCHAR(15)NOT NULL,
telefone VARCHAR(20),
email VARCHAR(45),
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR (30),
rua VARCHAR (45),
bairro VARCHAR (20),
cep VARCHAR (20),
uf CHAR(2),
situacao CHAR (1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
 FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa)); 
 SELECT * FROM endereco;
 
 
 CREATE TABLE vendedor(
 id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
 salario DECIMAL(10,2),
 matricula VARCHAR (20)NOT NULL,
 situacao CHAR (1) NOT NULL DEFAULT 'A',
 id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa));
SELECT * FROM vendedor;

 CREATE TABLE cliente(
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,
 fidelidade VARCHAR (20) NOT NULL,
desconto  DECIMAL (5,2),
 situacao CHAR (1) NOT NULL DEFAULT 'A',
 id_pessoa INT NOT NULL,
 FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa));
SELECT * FROM cliente;

CREATE TABLE formapagamento(
  id_formapagamento INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR (20) NOT NULL,
  parcela INT,
  prazo INT);
  SELECT * FROM formapagamento;

 CREATE TABLE venda(
 id_venda INT PRIMARY KEY AUTO_INCREMENT,
 data_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 valor_total DECIMAL (10,2) NOT NULL,
 desconto  DECIMAL (5,2), 
 acrescimo DECIMAL (5,2), 
 cupom INT NOT NULL,
 id_vendedor INT NOT NULL,
 id_cliente INT NOT NULL,
 id_formapagamento INT,
 FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor),
 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
 FOREIGN KEY (id_formapagamento) REFERENCES formapagamento (id_formapagamento));
SELECT * FROM venda;

    
  
CREATE TABLE produto(
 id_produto INT PRIMARY KEY AUTO_INCREMENT, 
 denominacao VARCHAR (20) NOT NULL,
 quantidade_estoque INT NOT NULL,
 preco DECIMAL (5,2),
 situacao CHAR (1) NOT NULL DEFAULT 'A');
 SELECT * FROM produto;
 
 
  
  
  
  CREATE TABLE itensvenda(
  id_itensvenda INT PRIMARY KEY AUTO_INCREMENT,
  desconto DECIMAL (5,2),
  acrescimo DECIMAL (5,2),
  quantidade INT,
  preco  DECIMAL (5,2),
  valor_total DECIMAL (10,2),
  cancelado CHAR (1) DEFAULT 'N',
  id_venda INT NOT NULL,
  id_produto INT NOT NULL,
   FOREIGN KEY (id_venda) REFERENCES venda (id_venda),
   FOREIGN KEY (id_produto) REFERENCES produto (id_produto));
   SELECT * FROM itensvenda;
  
  
   
  
  
   SELECT * FROM pessoa;
   SELECT * FROM endereco;
   SELECT * FROM vendedor;
   SELECT * FROM cliente;
    SELECT * FROM formapagamento;
   SELECT * FROM venda;
   SELECT * FROM produto;
   SELECT * FROM itensvenda;
   
   
  
   
   
   SHOW TABLES;
   INSERT INTO pessoa (nome,cpf,telefone,email)
 VALUES('Pedro sauves','245864839','(61)94587823','pedro@gmail.com'),
('Andersom Roberto','789794568','(61)9878986','andersomr@gmail.com'),
('Mirian Alves','654564569','(61)98798756777','miriana@gmail.com'),
('Marcia Marlene','98789456','(61)98798467565','marciamar@gmail.com'),
('Helio paulo','98789456','(61)98798467565','heliop@gmail.com');
SELECT * FROM pessoa;



INSERT INTO endereco (rua,bairro,cidade,uf,cep,id_pessoa)
VALUES('marechal_rondom','itiuba','Brasilia','DF','7193542',1),
('mandaraca','Itamaratu','Sao Paulo','DF','7291520',2),
('Dom Pedro II','Tajai','Curitiba','PA','7103193',3),
('Jacobina filho','Juruma','Salvador','BA','7177578',5),
('rainha da paz','beira rio','Ribeirao','MG','7068532',4);
SELECT * FROM endereco;

INSERT INTO vendedor (salario,matricula,id_pessoa)
VALUES('3000.45','12754',2),
('4241.23','23547',4);
 SELECT * FROM vendedor;
 SELECT * FROM pessoa;
 
 
 
 
 INSERT INTO cliente(fidelidade,desconto,id_pessoa)
 VALUE ('alto',0.05,1),
 ('baixo',0.05,2),
 ('alto',0.05,5),
 ('alto',0.05,3);
 SELECT * FROM cliente;
 
 
 INSERT INTO formapagamento(descricao,parcela,prazo)
 VALUE ('Credito','5','20'),
 ('Debito','3','15'),
 ('Pixe','1','30'),
 ('Boleto','20','10');
  SELECT * FROM formapagamento;
  
  
 
 INSERT INTO venda(data_compra,valor_total,desconto,acrescimo,cupom,id_vendedor,id_cliente,id_formapagamento)
 VALUE ('2024-3-20',235.02,0.05,0.02,1,1,2,4),
 ('2025-7-18',632.00,0.05,0.13,2,2,1,1),
 ('2024-1-26',571.01,0.05,0.10,2,1,4,3);
 SELECT * FROM venda;
 
 
INSERT INTO produto(denominacao,quantidade_estoque,preco) 
 VALUE ('Arroz',3,30.21),
 ('Feijao',5,8.18),
 ('Batata',2,4.12),
 ('Tomante',4,6.03);
 SELECT * FROM produto;
 
 
 
 INSERT INTO itensvenda(desconto,acrescimo,quantidade,preco,valor_total,cancelado,id_venda,id_produto)
 VALUE (0.05,1,3,30.21,235.02,'sim',1,1),
 (0.05,1,5,30.21,335.02,'nao',2,2),
 (0.05,1,4,21.21,015.02,'sim',3,3),
 (0.05,1,2,18.21,107.02,'nao',1,1);
 SELECT * FROM itensvenda;
 
 
 
 
 
 
 
 



































































































































































,bv520 ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,çii
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                       
                                                                                                                                                                        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0                                                                                                                                                                