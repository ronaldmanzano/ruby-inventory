IF NOT EXISTS(SELECT * FROM sys.sysobjects WHERE id = OBJECT_ID(N'[dbo].[tasks]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
    CREATE TABLE [dbo].[tasks](
        [id] [INT] IDENTITY(1,1) NOT NULL,
        [sampe] INT,
        [created_at] [DATETIME] NULL,
        [updated_at] [DATETIME] NULL,
        PRIMARY KEY(id)
    )
END
