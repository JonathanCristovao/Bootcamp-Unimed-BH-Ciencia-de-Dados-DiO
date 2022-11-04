use oficina;

        
-- Peças presentes no estoque
select nome_peca from estoque_pecas order by nome_peca;

-- Valor de todas as peças no estoque
select sum(round((Quantidade_disponivel*Valor_unitario),2)) as Valor_total_em_estoque from estoque_pecas;

-- Quantidade de OS
select count(*) from ordem_servico;

-- Responsaveis pelas OS;
select Especialidade, Tipo_veiculo, concat(Marca, ' | ', Modelo) as Marca_Modelo, Placa from equipes
		inner join ordem_servico on idEquipes = idOSEquipes
        inner join veiculo on idVeiculo = idOSVeiculo
        order by Especialidade and Tipo_veiculo and Marca_Modelo;

-- Nome do funcionario responsavel de cada equipe e o numero das OS por equipe;
select Responsavel, Numero from equipes e 
		inner join ordem_servico os on idEquipes = idOSEquipes;

-- OS Concluidas
select count(*) from ordem_servico where Status_ordem = 'Serviço concluido'; 


-- Veiculos de cada cliente PF 
select nome, marca, modelo  from cliente_pf
		inner join cliente on idClientePF = idCClientePF
        inner join veiculo on idcliente = idVCliente
        order by nome;
        
-- Valor gasto por cada cliente PF
select Razao_Social, CNPJ, Valor from cliente_pf
		inner join cliente on idCClientePF = idCClientePF
        inner join orcamento on idCliente = idOCliente
        inner join ordem_servico on idOrcamento = idOSOrcamento;    