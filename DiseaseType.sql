USE [TAID]
GO

/****** Object:  Table [dbo].[CastMaster]    Script Date: 12/16/2016 5:49:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DiseaseType](
	[DiseaseTypeID] [int] NOT NULL,
	[DiseaseTypeName] [varchar](100) NOT NULL,
	[DiseaseTypeSynonym] [varchar](100) NOT NULL,
	[DiseaseDetails] [varchar](500) NOT NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](10) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [pk_DiseaseTypeID] PRIMARY KEY CLUSTERED 
(
	[DiseaseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


