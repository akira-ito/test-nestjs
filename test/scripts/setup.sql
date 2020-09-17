CREATE DATABASE dbE2E;
GO
USE dbE2E;
GO
CREATE LOGIN userE2E WITH PASSWORD = 'passwordE2E@';
GO
CREATE USER userE2E FOR LOGIN userE2E;
GO
ALTER SERVER ROLE sysadmin ADD MEMBER [userE2E];
GO

CREATE TABLE Contatos (
	Codigo float NOT NULL,
	CodFil float NULL,
	Nome varchar(60) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Fantasia varchar(40) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Endereco varchar(60) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Bairro varchar(25) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Cidade varchar(40) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	CEP varchar(8) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	UF varchar(2) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Fone1 varchar(11) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Fone2 varchar(11) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Email varchar(40) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Contato varchar(30) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	TpCli varchar(1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Agencia varchar(6) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	CNPJ varchar(14) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	IE varchar(24) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	IM varchar(15) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	CPF varchar(11) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	RG varchar(15) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	UltCont datetime NULL,
	DtNovoCont datetime NULL,
	Responsavel varchar(40) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Situacao float NULL,
	DtSituacao datetime NULL,
	Obs varchar(80) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	RamoAtiv smallint NULL,
	CodOrigem smallint NULL,
	OperIncl varchar(10) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Dt_Incl datetime NULL,
	Operador varchar(10) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Dt_Alter datetime NULL,
	Hr_Alter varchar(5) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	CodPessoa float NULL,
	CodCli varchar(12) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Fax varchar(11) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	OrigDados varchar(3) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	CodRamoAtivFat int NULL,
	FlgInstitFinan tinyint DEFAULT 0 NULL,
	FlgContrICMS tinyint DEFAULT 0 NULL,
	FlgOrgaoPublico tinyint DEFAULT 0 NULL,
	FlgOptanteSN tinyint DEFAULT 0 NULL,
	FlgSubsTributaria tinyint DEFAULT 0 NULL,
	Latitude varchar(20) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	Longitude varchar(20) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
	IdAnaliseCredito int NULL,
	AnaliseCredito tinyint NULL,
	CONSTRAINT PK__Contatos__4E6B1248 PRIMARY KEY (Codigo)
)
 CREATE NONCLUSTERED INDEX iCodCli ON dbo.Contatos (  CodCli ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 70   ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ]
 CREATE NONCLUSTERED INDEX iFantasia ON dbo.Contatos (  Fantasia ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 70   ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ]
 CREATE NONCLUSTERED INDEX iNome ON dbo.Contatos (  Nome ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 70   ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ]
 CREATE NONCLUSTERED INDEX iUltCont ON dbo.Contatos (  UltCont ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 70   ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ]
GO

