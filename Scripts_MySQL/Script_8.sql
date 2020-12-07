create database db_padoca;

use db_padoca;

create table tbFormaPag(
	id int auto_increment,
    formaPag varchar(30),
    meioPag varchar(30),
    descricao varchar(100),
    
    primary key(id)
);

insert into tbFormaPag(formaPag, meioPag, descricao) values("Dinheiro"         , "Fisico"             , "Cédulas e moedas"                                                                      );
insert into tbFormaPag(formaPag, meioPag, descricao) values("PIX"              , "Eletrônico"         , "Transação e pagamento online de alta velocidade"                                       );
insert into tbFormaPag(formaPag, meioPag, descricao) values("Cheque"           , "Fisico"             , "Ordem de pagamento à vista para creditar certa quantia"                                );
insert into tbFormaPag(formaPag, meioPag, descricao) values("Cartão de Débito" , "Eletrônico"         , "Pagamento edebitado diretamente da conta do consumidor na hora da compra"              );
insert into tbFormaPag(formaPag, meioPag, descricao) values("Cartão de Crédito", "Eletrônico"         , "Pagemento efetuado numa data futura à compra, quando é cobrada a fatura do cartão"     );
insert into tbFormaPag(formaPag, meioPag, descricao) values("TED"              , "Eletrônico"         , "Transferência bancária, cai na conta do destinatário no mesmo dia útil"                );
insert into tbFormaPag(formaPag, meioPag, descricao) values("DOC"              , "Eletrônico"         , "Transferência bancária, cai na conta do destinatário no dia útil seguinte a realização");
insert into tbFormaPag(formaPag, meioPag, descricao) values("Boleto"           , "Fisico e Eletrônico", "Pagamento realizado através de codigo de barras"                                       );
insert into tbFormaPag(formaPag, meioPag, descricao) values("QR CODE"          , "Fisico e Eletrônico", "Pagamento realizado através de leitura do QR CODE"                                     );
insert into tbFormaPag(formaPag, meioPag, descricao) values("Aproximação"      , "Fisico e Eletrônico", " pague pela compra aproximando um dispositivo da máquina de cartão"                    );

select * from tbFormaPag;

drop table tbFormaPag;