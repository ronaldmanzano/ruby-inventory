IF NOT EXISTS(SELECT * FROM sys.sysobjects WHERE id = OBJECT_ID(N'[dbo].[users]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
    CREATE TABLE [dbo].[users](
        [id] [INT] IDENTITY(1,1) NOT NULL,
        [name] [NVARCHAR](255) NULL,
        [email] [NVARCHAR](255) NULL,
        [password_digest] [NVARCHAR](255) NULL,
        [created_at] [DATETIME] NULL,
        [updated_at] [DATETIME] NULL,
    PRIMARY KEY CLUSTERED 
    (
        [id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
END

GO

IF EXISTS (SELECT * FROM sysindexes WHERE name = 'ix_users_email')
    DROP INDEX ix_users_email ON users

CREATE NONCLUSTERED INDEX [ix_users_email] ON users (email)

GO

