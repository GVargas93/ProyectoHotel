USE DB_Hotel
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllTipoHabitaciones' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllTipoHabitaciones
GO

CREATE PROCEDURE [dbo].sp_SelectAllTipoHabitaciones
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sDescripcion, sNombre
FROM            Tbl_TipoHabitacion
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_InsertTipoHabitacion
(
	@sDescripcion varchar(50),
	@sNombre varchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_TipoHabitacion] ([sDescripcion], [sNombre]) VALUES (@sDescripcion, @sNombre);
	
SELECT lTipoHabitacion_iD, sDescripcion, sNombre FROM Tbl_TipoHabitacion WHERE (lTipoHabitacion_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_UpdateTipoHabitacion
(
	@sDescripcion varchar(50),
	@sNombre varchar(50),
	@Original_lTipoHabitacion_iD int,
	@lTipoHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_TipoHabitacion] SET [sDescripcion] = @sDescripcion, [sNombre] = @sNombre WHERE (([lTipoHabitacion_iD] = @Original_lTipoHabitacion_iD));
	
SELECT lTipoHabitacion_iD, sDescripcion, sNombre FROM Tbl_TipoHabitacion WHERE (lTipoHabitacion_iD = @lTipoHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_DeleteTipoHabitacion
(
	@Original_lTipoHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_TipoHabitacion] WHERE (([lTipoHabitacion_iD] = @Original_lTipoHabitacion_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'SelectTipoHabitacionById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].SelectTipoHabitacionById
GO

CREATE PROCEDURE [dbo].SelectTipoHabitacionById
(
	@lTipoHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sDescripcion, sNombre
FROM            Tbl_TipoHabitacion
WHERE        (lTipoHabitacion_iD = @lTipoHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllHabitaciones' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllHabitaciones
GO

CREATE PROCEDURE [dbo].sp_SelectAllHabitaciones
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lTipoHabitacion_iD_FK, sDescripcion, lCosto, bEstado, lNumeroHabitacion
FROM            Tbl_Habitacion
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertHabitacion
GO

CREATE PROCEDURE [dbo].sp_InsertHabitacion
(
	@lTipoHabitacion_iD_FK int,
	@sDescripcion varchar(250),
	@lCosto int,
	@bEstado bit,
	@lNumeroHabitacion int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Habitacion] ([lTipoHabitacion_iD_FK], [sDescripcion], [lCosto], [bEstado], [lNumeroHabitacion]) VALUES (@lTipoHabitacion_iD_FK, @sDescripcion, @lCosto, @bEstado, @lNumeroHabitacion);
	
SELECT lHabitacion_iD, lTipoHabitacion_iD_FK, sDescripcion, lCosto, bEstado, lNumeroHabitacion FROM Tbl_Habitacion WHERE (lHabitacion_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateHabitacion
GO

CREATE PROCEDURE [dbo].sp_UpdateHabitacion
(
	@lTipoHabitacion_iD_FK int,
	@sDescripcion varchar(250),
	@lCosto int,
	@bEstado bit,
	@lNumeroHabitacion int,
	@Original_lHabitacion_iD int,
	@lHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Habitacion] SET [lTipoHabitacion_iD_FK] = @lTipoHabitacion_iD_FK, [sDescripcion] = @sDescripcion, [lCosto] = @lCosto, [bEstado] = @bEstado, [lNumeroHabitacion] = @lNumeroHabitacion WHERE (([lHabitacion_iD] = @Original_lHabitacion_iD));
	
SELECT lHabitacion_iD, lTipoHabitacion_iD_FK, sDescripcion, lCosto, bEstado, lNumeroHabitacion FROM Tbl_Habitacion WHERE (lHabitacion_iD = @lHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteHabitacion
GO

CREATE PROCEDURE [dbo].sp_DeleteHabitacion
(
	@Original_lHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Habitacion] WHERE (([lHabitacion_iD] = @Original_lHabitacion_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'SelectHabitacionById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].SelectHabitacionById
GO

CREATE PROCEDURE [dbo].SelectHabitacionById
(
	@lHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lTipoHabitacion_iD_FK, sDescripcion, lCosto, bEstado, lNumeroHabitacion
FROM            Tbl_Habitacion
WHERE        (lHabitacion_iD = @lHabitacion_iD)
GO



