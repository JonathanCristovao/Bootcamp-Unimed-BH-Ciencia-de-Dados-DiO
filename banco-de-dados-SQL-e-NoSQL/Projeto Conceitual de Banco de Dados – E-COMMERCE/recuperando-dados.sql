use ecommerce;


-- Quantidade de clientes cadastrados
select count(*) from cliente;

--Quantidade de pedidos feitos por cliente
select c.idCliente, Nome_completo, count(*) as Numero_de_pedidos from cliente as c 
					inner join pedido as p on c.idCliente = p.IdPedidoCliente
			group by idCliente;
            

-- Quantidade de produtos cadastrados com preço maior que 1000 reais
select count(*) from produto where Preco_unitario > 1000;


-- Valor em reais de cada produto no estoque
select p.Nome, pe.Quantidade_estoque, p.Preco_unitario, round(p.Preco_unitario*Quantidade_estoque,2) as Valor_estoque from produto p
		inner join produto_em_estoque pe on idProduto=idEsProduto
        order by pe.Quantidade_estoque;


-- Empresa responsavel pela entrega em cada pedido, nome do cliente e endereço de entrega
select ef.Razao_social, ef.Responsavel, c.Nome_completo, p.Status_do_pedido, 
		concat(Logradouro,': ', Endereco,', ', Numero_Residencial,' - ', Bairro) as Endereço,
        concat(Cidade, '/', Estado) as Cidade_Estado, CEP
	from empresa_frete ef
			inner join entrega e on idEmpresa_frete = idEntregaEmpresa_frete
			inner join pedido p on idPedidoEntrega = idEntrega
			inner join cliente c on idCliente = idPedidoCliente
			order by ef.Razao_social, Nome_completo;



-- Relação do Nome do Cliente, CPF com o numero da carteira digital
select Nome_completo, CPF, Numero_carteira from cliente c
		inner join formas_pagamento on idCliente = idFormas_pagamento_cliente
		inner join carteira_digital on idCarteira_digital = idFormas_pagamento_carteira_digital
        order by Nome_completo;
		
        
-- Relação do Nome do Produto com a quantidade em estoque, retornando somente os que tem mais que 1000 produtos em estoque para que seja feita algo, como uma promoção para vende-los;
select p.Nome, pe.Quantidade_estoque from produto p
		inner join produto_em_estoque pe on idProduto=idEsProduto
        having pe.Quantidade_estoque > 1000
        order by pe.Quantidade_estoque;

