USE [pacialWeb2]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 14/11/2018 22:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_Usuario]    Script Date: 14/11/2018 22:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Guardar_Usuario] 
	-- Add the parameters for the stored procedure here
	@usuario varchar(50),
	@nombre varchar(50),
	@apellido varchar(50),
	@contraseña varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO usuarios (usuario, nombre, apellido, contraseña) VALUES (@usuario,@nombre,  @apellido, @contraseña)
END
GO
/****** Object:  StoredProcedure [dbo].[Listar_UsuarioPass]    Script Date: 14/11/2018 22:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listar_UsuarioPass] 
	-- Add the parameters for the stored procedure here
	@usuario varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from usuarios where usuario=@usuario
END
GO
