use oficina;

-- Cliente PF
insert into cliente_pf (Nome,CPF,Data_nascimento,Endereco,Cidade,Estado,Telefone_1,Telefone_2,Email_1,Email_2)
		values ('Maria Silva','12345678910','1990-01-07','Rua 1','Belo Horizonte','MG','31912487964',null,'m_silva@gmail.com',null),
				('João Carneiro','12345678987','1994-02-09','Rua 1','Belo Horizonte','MG','31987452312',null,'j_carneiro@gmail.com',null),
				('Kayque Martins','12345678965','2001-03-05','Rua 5','Belo Horizonte','MG','319874562147',null,'k_martins@gmail.com',null),
				('Marcos Vinicius','12345678954','1996-04-02','Rua 1','Belo Horizonte','MG','31974125465',null,'m_vinicius@gmail.com',null),
				('Amanda Silva','12345678932','1992-05-30','Rua 1','Belo Horizonte','MG','31985471231',null,'a_silva@gmail.com',null),
				('Marcus Costa','12345678912','1994-06-15','Rua 4','Belo Horizonte','MG','31995474521',null,'m_costa@gmail.com',null),
				('Marcela Cristina','12345678933','1980-07-08','Rua 1','Belo Horizonte','MG','31985477412',null,'m_cristina@gmail.com',null),
				('Ricardo Oliveira','12345678988','1886-08-03','Rua 3','Belo Horizonte','MG','31958745896',null,'r_oliveira@gmail.com',null),
				('Edna Bueno','12345678978','1889-09-02','Rua 1','Belo Horizonte','MG','31912347412',null,'e_bueno@gmail.com',null),
				('Camila Ferreira','12345678978','1995-10-01','Rua 2','Belo Horizonte','MG','31912341564',null,'c_ferreira@gmail.com',null),


-- Cliente
insert into cliente (idCClientePF,idCClientePJ) values
		(1,null),
		(2,null),
		(3,null),
		(4,null),
		(5,null),
		(6,null),
		(7,null),
		(8,null),
		(9,null),
		(10,null),
		(null,1),
		(null,2),
		(null,3),
		(null,4),
		(null,5),
		(null,6);

-- Cliente PJ
insert into cliente_pj (Razao_social,Nome_fantasia,CNPJ,Responsavel,Telefone_1 ,Telefone_2 ,Email_1,Email_2,Endereco_empresarial,Cidade,Estado)
		values ('AC Ltda','Acabamentos comercio','48740351000165','Amanda Ferreira','31985472369'null,'ferreira@acabamentoscomercio.com',null,'Rua 23','BH','MG'),
				('TCH Ltda','Tech informatica ','00428307000430','Durval Sousa','31932587459',null,'souza@techinformatica.com',null,'Rua 6','BH','MG'),
				('TELENET Ltda','Telenet do Brasil','10970887000285','Bueno Costa','31987412574',null,'costa@telenetbrasil.com',null,'Rua 15','BH','MG'),
				('INFRA Ltda','Infraestrutura construtora','34028316000103','Arnaldo martins','31954789865',null,'martins@infraconstrutora.com.br',null,'Rua 8','BH','MG'),
		


-- Veiculo
insert into veiculo (idVCliente,Tipo_veiculo,Placa,Marca,Modelo,Ano_fabricacao) values
	    ('1','Carro','QWE1234','Fiat','Uno','2010'),
		('2','Carro','DFG4321','volkswagen','Gol','2009'),
		('3','Carro','HJK1224','volkswagen','Polo','2014'),
		('4','Carro','ALK3214','Honda','Fit','2018'),
		('5','Carro','UIO6789','Jeep','Renegade','2020'),
		('6','Carro','GRT4567','Honda','HRV','2021'),
		('7','Carro','HYN7654','volkswagen','Gol','2015'),
		('8','Carro','LMN3345','Fiat','Palio','2010'),
		('9','Carro','POI9086','Fiat','Uno','2005'),
		('10','Carro','EDC5544','Jeep','Compass','2018');

-- Estoque_pecas
insert into estoque_pecas (Nome_peca,Quantidade_disponivel,Valor_unitario,Responsavel,Funcionario_solicitante) values
		('Pastilhas de freio','62','20.00','Pedro Castro','Pedro Castro'),
		('pneu','5','319.90','João Silva','Pedro Castro');
		('fusivel','13','60.59','Pedro Castro','João Silva'),
		('bateria','40','120.20','João Silva','Pedro Castro'),
			
-- Tabela_precos
insert into tabela_precos (Tipo_servico,Especialidade,Pecas_nescessarias,Quantidade_pecas,Preco_peca,Valor_mao_obra,Valor_total) values
		('manutenção preventiva','Pastilhas de freio',null,null,null,'100.00','80.00'),
		('manutenção preventiva','Troca de pneus',null,null,null,'100.00','2000.00'),
		('manutenção corretiva','Troca de Fusiveis',null,null,null,'100.00','50.00'),
		('manutenção corretiva','bateria',null,null,null,'100.00','250.00');
        


-- Equipes
insert into equipes (idEquipes,Especialidade,Responsavel) values
		('1','Parte Elétrica','Pedro Castro'),
		('2','Parte Elétrica','João Silva'),
		('3','Mecânica','Antônio Jose'),
		('4','Mecânica','Ronaldo Ferreira');

-- Funcionarios
insert into funcionarios (idFEquipes,Codigo_funcionario,Nome,CPF,Data_nacimento ,Endereco,CEP,Cidade,Estado,Cargo,Especialidade,Data_contratacao,Telefone)
		values ('1','1234567','Pedro Castro','12345678910','1980-01-01','Rua 5','30672772','Belo Horizonte','MG','Chefe Mecânica','Mecânica automotiva','2020-04-21','31912222222'),
				('2','1234521','João Silva','09876543211','1990-02-02','Rua 5','30672772','Belo Horizonte','MG','Mecânico','Mecânica automotiva','2015-12-15','31985487485'),
				('1','1234544','Antônio Jose','11123454567','1991-03-03','Rua 5','830672772','Belo Horizonte','MG','Eletricista Mecânico','Elétrica automotiva','2018-03-13','319322222'),
				('2','11234553','Ronaldo Ferreira','09876556784','1992-04-04','Rua 5','30672772','Belo Horizonte','MG','Eletricista Mecânico','Elétrica automotiva','2019-06-18','3192444444'),
				

-- Orcamento
insert into orcamento (idOCliente,Numero_orcamento,Aprovado_cliente,Data_orcamento,Valor_orcamento,Validade_orcamento) values
		('1','10000000','Sim','2022-01-01','300.00','2020-01-16'),
		('3','10000007','Sim','2022-01-12','600.00','2022-01-12'),
		('4','10000008','Sim','2022-02-02','500.00','2022-02-02'),
		('5','10000009','Sim','2022-02-03','400.00','2022-02-03'),
		('6','10000011','Sim','2022-02-05','300.00','2022-02-05'),
		('7','10000012','Sim','2022-04-10','2000.00','2022-04-10'),
		('8','10000025','Sim','2022-05-14','500.00','2022-05-14'),
		('9','10000030','Sim','2022-01-02','200.00','2022-01-02'),
		('10','10000032','Sim','2022-03-10','100.00','2022-03-10'),
		

-- Precos_orcamento
insert into precos_orcamento (idPO_Orcamento,idPO_Tabela_precos) values
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
-- Ordem_servico
insert into ordem_servico (idOSVeiculo,idOSEquipes,idOSOrcamento,Numero,Data_emissao,pecas_necessarias,Valor,Status_ordem,Data_conclusao) values
		('1','1','1','10000000','2022-01-16','Fusiveis','100.00','Serviço concluido','2022-01-16'),
		('2','z','2','10000007','2022-09-08','bateria','500.00','Serviço iniciado',null),
		('1','1','1','10000008','2022-03-07','pastilhas de freito','300.00','Serviço iniciado',null),
		'2','2','2''10000009','2022-02-01','motor de arranque','900.00','Serviço iniciado',null),
		('5','2','5','10000010','2022-08-25','amortecedor','2000.00','Serviço concluido','2022-08-29'),
		('2','2','2','10000011','2022-09-13','filtro de combustivel','150.00','Serviço concluido','2022-09-13'),
		('1','1','1','10000012','2022-04-24','velas','200.00','Serviço iniciado',null),
		('2','2','2','10000025','2022-01-12','puxador porta malas','50.00','Serviço concluido','2022-01-12'),
		('2','2','2','10000030','2022-05-21','fluido de freio','80.00','Serviço iniciado',null),
		('1','1','1','10000032','2022-05-06','alinhamento','120.00','Serviço concluido','2022-05-06'),