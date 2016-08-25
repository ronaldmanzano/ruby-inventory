IF NOT EXISTS(SELECT * FROM sys.sysobjects WHERE id = OBJECT_ID(N'[dbo].[todos]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
    CREATE TABLE [dbo].[todos](
        [id] [INT] IDENTITY(1,1) NOT NULL,
        [created_at] [DATETIME] NULL,
        [updated_at] [DATETIME] NULL,
        PRIMARY KEY(id)
    )
END