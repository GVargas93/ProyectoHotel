USE DB_Hotel
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllClientes' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllClientes
GO

CREATE PROCEDURE [dbo].sp_SelectAllClientes
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, lNacionalidad_iD_FK, sDocumento, sTelefono, sDireccion, sApellido, sNombre
FROM            Tbl_Cliente
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertCliente
GO

CREATE PROCEDURE [dbo].sp_InsertCliente
(
	@lNacionalidad_iD_FK int,
	@sDocumento varchar(250),
	@sTelefono varchar(250),
	@sDireccion varchar(250),
	@sApellido varchar(250),
	@sNombre varchar(250)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Cliente] ([lNacionalidad_iD_FK], [sDocumento], [sTelefono], [sDireccion], [sApellido], [sNombre]) VALUES (@lNacionalidad_iD_FK, @sDocumento, @sTelefono, @sDireccion, @sApellido, @sNombre);
	
SELECT lCliente_iD, lNacionalidad_iD_FK, sDocumento, sTelefono, sDireccion, sApellido, sNombre FROM Tbl_Cliente WHERE (lCliente_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateCliente
GO

CREATE PROCEDURE [dbo].sp_UpdateCliente
(
	@lNacionalidad_iD_FK int,
	@sDocumento varchar(250),
	@sTelefono varchar(250),
	@sDireccion varchar(250),
	@sApellido varchar(250),
	@sNombre varchar(250),
	@Original_lCliente_iD int,
	@lCliente_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Cliente] SET [lNacionalidad_iD_FK] = @lNacionalidad_iD_FK, [sDocumento] = @sDocumento, [sTelefono] = @sTelefono, [sDireccion] = @sDireccion, [sApellido] = @sApellido, [sNombre] = @sNombre WHERE (([lCliente_iD] = @Original_lCliente_iD));
	
SELECT lCliente_iD, lNacionalidad_iD_FK, sDocumento, sTelefono, sDireccion, sApellido, sNombre FROM Tbl_Cliente WHERE (lCliente_iD = @lCliente_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteCliente
GO

CREATE PROCEDURE [dbo].sp_DeleteCliente
(
	@Original_lCliente_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Cliente] WHERE (([lCliente_iD] = @Original_lCliente_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'SelectClienteByID' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].SelectClienteByID
GO

CREATE PROCEDURE [dbo].SelectClienteByID
(
	@lCliente_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, lNacionalidad_iD_FK, sDocumento, sTelefono, sDireccion, sApellido, sNombre
FROM            Tbl_Cliente
WHERE        (lCliente_iD = @lCliente_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllNacionalidades' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllNacionalidades
GO

CREATE PROCEDURE [dbo].sp_SelectAllNacionalidades
AS
	SET NOCOUNT ON;
SELECT        lNacionalidad_iD, sNacionalidad, sPais
FROM            Tbl_Nacionalidad
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertNacionalidad' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertNacionalidad
GO

CREATE PROCEDURE [dbo].sp_InsertNacionalidad
(
	@sNacionalidad varchar(250),
	@sPais varchar(250)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Nacionalidad] ([sNacionalidad], [sPais]) VALUES (@sNacionalidad, @sPais);
	
SELECT lNacionalidad_iD, sNacionalidad, sPais FROM Tbl_Nacionalidad WHERE (lNacionalidad_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateNacionalidad' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateNacionalidad
GO

CREATE PROCEDURE [dbo].sp_UpdateNacionalidad
(
	@sNacionalidad varchar(250),
	@sPais varchar(250),
	@Original_lNacionalidad_iD int,
	@lNacionalidad_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Nacionalidad] SET [sNacionalidad] = @sNacionalidad, [sPais] = @sPais WHERE (([lNacionalidad_iD] = @Original_lNacionalidad_iD));
	
SELECT lNacionalidad_iD, sNacionalidad, sPais FROM Tbl_Nacionalidad WHERE (lNacionalidad_iD = @lNacionalidad_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteNacionalidad' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteNacionalidad
GO

CREATE PROCEDURE [dbo].sp_DeleteNacionalidad
(
	@Original_lNacionalidad_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Nacionalidad] WHERE (([lNacionalidad_iD] = @Original_lNacionalidad_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectNacionalidadById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectNacionalidadById
GO

CREATE PROCEDURE [dbo].sp_SelectNacionalidadById
(
	@lNacionalidad_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lNacionalidad_iD, sNacionalidad, sPais
FROM            Tbl_Nacionalidad
WHERE        (lNacionalidad_iD = @lNacionalidad_iD)
GO



