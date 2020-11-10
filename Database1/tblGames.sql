CREATE TABLE [dbo].[tblGames]
(
	[GameId] INT NOT NULL PRIMARY KEY IDENTITY,
	[GameName] VARCHAR(50) NOT NULL,
	[GENRE] VARCHAR(30) NOT NULL,
	[Producer] VARCHAR(30) NOT NULL,
	[Detail] TEXT NOT NULL,
	[Platform] VARCHAR(20) NOT NULL,
	[Cover] VARCHAR(30),
	[WriterID] INT NOT NULL,
	[Date] DATE NOT NULL, 
    CONSTRAINT [FK_tblGames_TotblRevewers] FOREIGN KEY ([WriterID]) REFERENCES [tblRevewers]([WriterID]) 
)