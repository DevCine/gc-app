create database bddcommerce 
use bddcommerce
create table produit (
ref int primary key not null,
code_bare int ,
désignation nvarchar(100) not null,
famille nvarchar(50),
marque nvarchar(50),
date_produit datetime)
create table bon_commande(
NumPiece_bc int primary key not null,
date_bc datetime,
observation nvarchar(100),
valider_bc bit,
piece_réglé_bc bit)
create table fournisseur (
code_f int primary key not null,
nom nvarchar(50) not null,
adresse_f nvarchar(50),
tel_f varchar(21),
email_f varchar(30),
sold_init_f real,
sold_fin_f real)
create table bon_livraison (
num_piece_bl int primary key not null,
date_bl datetime,
observation nvarchar(100),
valider_bl bit,
piece_réglé_bl bit)
create table stock (
code_s int primary key not null,
s_initial int,
s_actuel int,
alert int)
create table client(
code_c int primary key not null,
nom_c nvarchar(30) not null,
adresse_c nvarchar(50),
tel_c varchar(21),
email_c varchar(30),
sold_init_c real,
sold_fin_c real)
create table versement_client(
num_versement_c int primary key not null,
date_vc datetime,
valider_c bit,
versement_c real,
rest_c real,
observation_c nvarchar(100))
create table versement_frns(
num_versement_f int primary key not null,
date_vf datetime,
valider_f bit,
versement_f real,
rest_f real,
observation_f nvarchar(100))
create table facture_achat(
Npiece_achat int primary key not null,
date_fact_achat datetime,
montant_achat real,
valider_fact_a bit,
piece_reglé_a bit)
create table facture_vente(
Npiece_vente int primary key not null,
date_fact_vente datetime,
montant_vente real,
valider_fact_v bit,
piece_reglé_v bit)
alter table produit
add code_s int foreign key references stock(code_s)
alter table bon_commande
add code_f int foreign key references fournisseur(code_f)
alter table bon_commande
add Npiece_achat int foreign key references facture_achat(Npiece_achat)
alter table fournisseur
add num_versement_f int foreign key references versement_frns (num_versement_f)
alter table bon_livraison 
add Npiece_vente int foreign key references facture_vente (Npiece_vente)
alter table bon_livraison
add code_c int foreign key references client (code_c)
alter table fournisseur
drop FK__fournisse__num_v__276EDEB3 
alter table fournisseur
drop column num_versement_f
alter table versement_client
add code_c int foreign key references client(code_c)
alter table versement_frns
add code_f int foreign key references fournisseur(code_f)
create table detail_cmnd (
NumPiece_bc int not null,
ref int not null,
qte_cmnd int,
prix_ht_cmnd real,
tva_cmnd real,
remise_cmnd real,
prix_ttc_cmnd real,
réglé_cmnd bit,
constraint pk_detail_cmnd primary key (NumPiece_bc,ref),
constraint fk_cmnd foreign key (NumPiece_bc) references bon_commande(NumPiece_bc),
constraint fk_produit foreign key (ref) references produit(ref))

create table detail_livr (
num_piece_bl int not null,
ref int not null,
qte_min int,
qte_max int,
prix_qte int,
prix_ht_livr real,
remise_livr real,
prix_ttc_livr real,
réglé_livr bit,
constraint pk_detail_livr primary key (num_piece_bl,ref),
constraint fk_livraison foreign key (num_piece_bl) references bon_livraison(num_piece_bl),
constraint fk_produit_livr foreign key (ref) references produit(ref))
 




 
