IF NOT EXISTS(SELECT * FROM sys.sysobjects WHERE id = OBJECT_ID(N'[dbo].[projects]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
    CREATE TABLE [dbo].[projects](
        [id] [INT] IDENTITY(1,1) NOT NULL,
        [name] VARCHAR(100) NOT NULL,
        [created_at] [DATETIME] NULL,
        [updated_at] [DATETIME] NULL,
        PRIMARY KEY(id)
    )
END
