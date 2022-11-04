create database oficina;
use oficina;
-- drop database oficina;

-- Criar tabela Tabela de preços
create table tabela_precos(
		idTabela_precos int auto_increment primary key,
		Tipo_servico enum('manutenção preventiva','manutenção corretiva') not null,
        Especialidade enum('Parte Elétrica', 'Mecânica') not null, 
		Pecas_nescessarias varchar(45),
		Quantidade_pecas float,
		Preco_peca float,
		Valor_mao_obra float not null,
		Valor_total float not null
);


-- Criar tabela Preços orçamento
create table precos_orcamento(
	idPO_Orcamento int,
	idPO_Tabela_precos int,
	constraint fk_precos_orcamento foreign key (idPO_Orcamento) references orcamento(idOrcamento),
	constraint fk_precos_tabela foreign key (idPO_Tabela_precos) references tabela_precos(idTabela_precos)
);


-- Criar tabela orçamento
create table orcamento(
		idOrcamento int auto_increment primary key,
        idOCliente int,
        Numero_orcamento varchar(45) not null,
        Aprovado_cliente enum('Sim','Não') not null,
        Data_orcamento date not null, 
        Valor_orcamento float not null,
        Validade_orcamento date not null,
        constraint fk_orcamento_cliente foreign key (idOCliente) references cliente(idCliente)
);


-- Criar tabela Estoque de peças
create table estoque_pecas(
		idEstoque_pecas int auto_increment primary key,
        Nome_peca varchar(45) not null,
        Quantidade_disponivel int not null,
        Valor_unitario float not null,
        Responsavel varchar(45),
        Funcionario_solicitante varchar(45)
);


-- Criar tabela OS esotuqe de peças para ordem de serviço
create table os_estoque_pecas(
        idPecas_estoque_pecas int,
        idPecas_ordem_servico int,
        idPecas_OSOrcamento int,
        constraint fk_pecas_estoque_pecas foreign key (idPecas_estoque_pecas) references estoque_pecas(idEstoque_pecas),
        constraint fk_pecas_ordem_servicos foreign key (idPecas_ordem_servico) references ordem_servico(idOrdem_servico),
        constraint fk_pecas_osorcamento foreign key (idPecas_OSOrcamento) references ordem_servico(idOSOrcamento)
);


-- Ordem de serviço 
create table ordem_servico(
		idOrdem_servico int auto_increment primary key,
        idOSVeiculo int,
        idOSEquipes int,
        idOSOrcamento int,
        Numero char(8) not null,
        Data_emissao date not null,
		pecas_necessarias varchar(45), 
        Valor float,
        Status_ordem enum('Serviço iniciado', 'Serviço concluido'),
        Data_conclusao date,
        constraint fk_ordem_veiculo foreign key (idOSVeiculo) references veiculo(idVeiculo),
        constraint fk_ordem_equipes foreign key (idOSEquipes) references equipes(idEquipes),
        constraint fk_ordem_orcamento foreign key (idOSOrcamento) references orcamento(idOrcamento)
);




-- Criar tabela cliente PJ
create table cliente_pj(
		idClientePJ int auto_increment primary key,
		Razao_social varchar(45) not null,
		Nome_fantasia varchar(45) not null,
		CNPJ char(14) not null,
		Responsavel varchar(45) not null,
		Telefone_1 char(11) not null,
		Telefone_2 char(11),
		Email_1 varchar(45) not null,
		Email_2 varchar(45),
		Endereco_empresarial varchar(45) not null,
		Cidade varchar(45) not null,
		Estado char(2) not null
);

alter table cliente_pj auto_increment=1;



-- Criar tabela cliente
create table cliente(
		idCliente int auto_increment primary key,
        idCClientePF int,
        idCClientePJ int,
        constraint fk_cliente_pf foreign key (idCClientePF) references cliente_pf(idClientePF),
        constraint fk_cliente_pj foreign key (idCClientePJ) references cliente_pj(idClientePJ)
);

alter table cliente auto_increment=1;



-- Criar tabela cliente PF
create table cliente_pf(
		idClientePF int auto_increment primary key,
		Nome varchar(45) not null,
		CPF char(11) not null,
		Data_nascimento date not null,
		Endereco varchar(45) not null,
		Cidade varchar(45) not null,
		Estado char(2) not null,
		Telefone_1 char(11) not null,
		Telefone_2 char(11),
		Email_1 varchar(45) not null,
		Email_2 varchar(45)
);

alter table cliente_pf auto_increment=1;



-- Criar tabela veiculo
create table  veiculo(
		idVeiculo int auto_increment primary key,
        idVCliente int,
        Tipo_veiculo enum('Carro') not null,
        Placa char(7) not null,
        constraint unique_placa_veiculo unique(Placa),
        Marca varchar(45) not null,
        Modelo varchar(45)not null,
        Ano_fabricacao char(4) not null,
        constraint fk_veiculo_cliente foreign key (idVCliente) references cliente(idCliente)
);


-- Criar tabela Equipes
create table equipes(
		idEquipes int primary key,
		Especialidade varchar(45) not null,
		Responsavel varchar(45) not null
);

-- Criar tabela Funcionarios
create table funcionarios(
		idFuncionarios int auto_increment primary key,
		idFEquipes int,
		Codigo_funcionario char(6) not null,
		Nome varchar(45) not null,
		CPF char(11) not null,
		Data_nacimento date not null, 
		Endereco varchar(45) not null,
        CEP char(8) not null,
        Cidade varchar(45),
        Estado char(2),
		Cargo varchar(45) not null,
		Especialidade varchar(45) not null,
		Data_contratacao date not null, 
		Telefone char(11) not null,
		constraint fk_funcionarios_equipes foreign key (idFEquipes) references equipes(idEquipes)
);