-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.6.0
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

USE DB_Hotel
GO

------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 1 Tabla-Tbl_Ninhos'

CREATE TABLE [dbo].[Tbl_Ninhos]
(
lNinhos_iD	int identity(1,1) not null,
lCantidadNinhos	int not null,
CONSTRAINT PK_Tbl_Ninhos primary key(lNinhos_iD)
)
Go
Print 'Finalizando 1 Tabla-Tbl_Ninhos'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 2 Tabla-Tbl_Adulto'

CREATE TABLE [dbo].[Tbl_Adulto]
(
lAdultos_iD	int identity(1,1) not null,
lCantidadAdultos int not null,
CONSTRAINT PK_Tbl_Adulto primary key(lAdultos_iD)
)
Go
Print 'Finalizando 2 Tabla-Tbl_Adulto'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Adicionando Columanas a Tabla-Tbl_Reserva'

ALTER TABLE [dbo].[Tbl_Reserva] ADD lAdultos_iD_FK int;
ALTER TABLE [dbo].[Tbl_Reserva] ADD lNinhos_iD_FK int;

Print 'Finalizando Columanas a Tabla-Tbl_Reserva'
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Adicionando Foraneas a Tabla-Tbl_Reserva'
ALTER TABLE [dbo].[Tbl_Reserva] 
ADD CONSTRAINT FK_Tbl_ReservaAdulto foreign key(lAdultos_iD_FK) references [dbo].[Tbl_Adulto](lAdultos_iD);
ALTER TABLE [dbo].[Tbl_Reserva] 
ADD CONSTRAINT FK_Tbl_ReservaNinhos foreign key(lNinhos_iD_FK) references [dbo].[Tbl_Ninhos](lNinhos_iD);

Print 'Finalizando Foraneas a Tabla-Tbl_Reserva'
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------