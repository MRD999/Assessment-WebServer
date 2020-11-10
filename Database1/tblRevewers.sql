CREATE TABLE [dbo].[tblRevewers]
(
	[FirstName] VARCHAR(20) NOT NULL,
	[LastName] VARCHAR(20) NOT NULL,
	[WriterID] INT NOT NULL PRIMARY KEY,
	[Password] VARCHAR(MAX) NOT NULL,
)
