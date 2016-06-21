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

