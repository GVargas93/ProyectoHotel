USE DB_Hotel
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllReservas' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllReservas
GO

CREATE PROCEDURE [dbo].sp_SelectAllReservas
AS
	SET NOCOUNT ON;
SELECT        lReserva_iD, lEstado_iD_FK, lCliente_iD_FK, lHabitacion_iD_FK, sObservacion, lCostoTotal, dFechaSalida, dFechaEntrada
FROM            Tbl_Reserva
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertReserva' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertReserva
GO

CREATE PROCEDURE [dbo].sp_InsertReserva
(
	@lEstado_iD_FK int,
	@lCliente_iD_FK int,
	@lHabitacion_iD_FK int,
	@sObservacion varchar(250),
	@lCostoTotal int,
	@dFechaSalida datetime,
	@dFechaEntrada datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Reserva] ([lEstado_iD_FK], [lCliente_iD_FK], [lHabitacion_iD_FK], [sObservacion], [lCostoTotal], [dFechaSalida], [dFechaEntrada]) VALUES (@lEstado_iD_FK, @lCliente_iD_FK, @lHabitacion_iD_FK, @sObservacion, @lCostoTotal, @dFechaSalida, @dFechaEntrada);
	
SELECT lReserva_iD, lEstado_iD_FK, lCliente_iD_FK, lHabitacion_iD_FK, sObservacion, lCostoTotal, dFechaSalida, dFechaEntrada FROM Tbl_Reserva WHERE (lReserva_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateReserva' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateReserva
GO

CREATE PROCEDURE [dbo].sp_UpdateReserva
(
	@lEstado_iD_FK int,
	@lCliente_iD_FK int,
	@lHabitacion_iD_FK int,
	@sObservacion varchar(250),
	@lCostoTotal int,
	@dFechaSalida datetime,
	@dFechaEntrada datetime,
	@Original_lReserva_iD int,
	@lReserva_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Reserva] SET [lEstado_iD_FK] = @lEstado_iD_FK, [lCliente_iD_FK] = @lCliente_iD_FK, [lHabitacion_iD_FK] = @lHabitacion_iD_FK, [sObservacion] = @sObservacion, [lCostoTotal] = @lCostoTotal, [dFechaSalida] = @dFechaSalida, [dFechaEntrada] = @dFechaEntrada WHERE (([lReserva_iD] = @Original_lReserva_iD));
	
SELECT lReserva_iD, lEstado_iD_FK, lCliente_iD_FK, lHabitacion_iD_FK, sObservacion, lCostoTotal, dFechaSalida, dFechaEntrada FROM Tbl_Reserva WHERE (lReserva_iD = @lReserva_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteReserva' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteReserva
GO

CREATE PROCEDURE [dbo].sp_DeleteReserva
(
	@Original_lReserva_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Reserva] WHERE (([lReserva_iD] = @Original_lReserva_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'SelectReservasById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].SelectReservasById
GO

CREATE PROCEDURE [dbo].SelectReservasById
(
	@lReserva_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lReserva_iD, lEstado_iD_FK, lCliente_iD_FK, lHabitacion_iD_FK, sObservacion, lCostoTotal, dFechaSalida, dFechaEntrada
FROM            Tbl_Reserva
WHERE        (lReserva_iD = @lReserva_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllEstados' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllEstados
GO

CREATE PROCEDURE [dbo].sp_SelectAllEstados
AS
	SET NOCOUNT ON;
SELECT        lEstado_iD, sNombre
FROM            Tbl_Estado
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertEstado' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertEstado
GO

CREATE PROCEDURE [dbo].sp_InsertEstado
(
	@sNombre varchar(250)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Estado] ([sNombre]) VALUES (@sNombre);
	
SELECT lEstado_iD, sNombre FROM Tbl_Estado WHERE (lEstado_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateEstado' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateEstado
GO

CREATE PROCEDURE [dbo].sp_UpdateEstado
(
	@sNombre varchar(250),
	@Original_lEstado_iD int,
	@lEstado_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Estado] SET [sNombre] = @sNombre WHERE (([lEstado_iD] = @Original_lEstado_iD));
	
SELECT lEstado_iD, sNombre FROM Tbl_Estado WHERE (lEstado_iD = @lEstado_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteEstado' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteEstado
GO

CREATE PROCEDURE [dbo].sp_DeleteEstado
(
	@Original_lEstado_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Estado] WHERE (([lEstado_iD] = @Original_lEstado_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'SelectEstadoById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].SelectEstadoById
GO

CREATE PROCEDURE [dbo].SelectEstadoById
(
	@lEstado_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lEstado_iD, sNombre
FROM            Tbl_Estado
WHERE        (lEstado_iD = @lEstado_iD)
GO


