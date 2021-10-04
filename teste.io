// https://dbdiagram.io/

Table client {
  x1_id int [pk, increment] 
  x1_name varchar
  x1_cpf char(11)
}

Table categoria  {
  x3_id int [pk, increment] 
  x3_descricao varchar
}

Table produto  {
  x2_id int [pk, increment] 
  x2_descricao varchar
  x2_categoria int [ref: > categoria.x3_id]  
  x2_valor numeric(15,2)
}

Table pedido  {
  x4_id int [pk, increment] 
  x4_client int [ref: > client.x1_id]
  x4_valor_total numeric(15,2)
}

Table pedido_itens {
  x5_id int [pk, increment] 
  x5_pedido int [ref: > pedido.x4_id]
  x4_produto int [ref: > produto.x2_id]
  x4_valor_unitario numeric(15,2)
  x5_quantidade int
}

