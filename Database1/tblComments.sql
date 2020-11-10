CREATE TABLE [dbo].[tblComments]
(
	[GameId] INT NOT NULL,
	[Comment] TEXT NOT NULL,
	[Date] DATE NOT NULL,
	[UserName] VARCHAR(20) NOT NULL, 
    CONSTRAINT [FK_tblComments_TotblUsers] FOREIGN KEY ([UserName]) REFERENCES [tblUsers]([UserName]), 
    CONSTRAINT [FK_tblComments_TotblGames] FOREIGN KEY ([GameId]) REFERENCES [tblGames]([GameId])
)
