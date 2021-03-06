USE [TAID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease] DROP CONSTRAINT [fk_SymtomsForDisease_SymtomID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease] DROP CONSTRAINT [fk_SymtomsForDisease_DiseaseID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] DROP CONSTRAINT [fk_PatientReports_SymtomID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_HomeRemediesID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] DROP CONSTRAINT [fk_PatientReports_HomeRemediesID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] DROP CONSTRAINT [fk_PatientReports_DiseaseID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies] DROP CONSTRAINT [fk_HomeRemedies_SymtomID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies] DROP CONSTRAINT [fk_HomeRemedies_DiseaseID]
GO
/****** Object:  Table [dbo].[SymtomsForDisease]    Script Date: 3/12/2017 12:30:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]') AND type in (N'U'))
DROP TABLE [dbo].[SymtomsForDisease]
GO
/****** Object:  Table [dbo].[Symtoms]    Script Date: 3/12/2017 12:30:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Symtoms]') AND type in (N'U'))
DROP TABLE [dbo].[Symtoms]
GO
/****** Object:  Table [dbo].[PatientReports]    Script Date: 3/12/2017 12:30:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientReports]') AND type in (N'U'))
DROP TABLE [dbo].[PatientReports]
GO
/****** Object:  Table [dbo].[HomeRemedies]    Script Date: 3/12/2017 12:30:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HomeRemedies]') AND type in (N'U'))
DROP TABLE [dbo].[HomeRemedies]
GO
/****** Object:  Table [dbo].[DiseaseType]    Script Date: 3/12/2017 12:30:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiseaseType]') AND type in (N'U'))
DROP TABLE [dbo].[DiseaseType]
GO
/****** Object:  Table [dbo].[DiseaseType]    Script Date: 3/12/2017 12:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiseaseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiseaseType](
	[DiseaseID] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseName] [varchar](100) NULL,
	[DiseaseSynonyms] [varchar](500) NULL,
	[DiseaseDetails] [varchar](500) NULL,
 CONSTRAINT [pk_DiseaseID] PRIMARY KEY CLUSTERED 
(
	[DiseaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HomeRemedies]    Script Date: 3/12/2017 12:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HomeRemedies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HomeRemedies](
	[HomeRemediesID] [int] IDENTITY(1,1) NOT NULL,
	[SymtomID] [int] NOT NULL,
	[DiseaseID] [int] NOT NULL,
	[HomeRemedyName] [varchar](100) NULL,
	[HomeRemedyDetailDescription] [varchar](500) NULL,
 CONSTRAINT [pk_HomeRemediesID] PRIMARY KEY CLUSTERED 
(
	[HomeRemediesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatientReports]    Script Date: 3/12/2017 12:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientReports]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PatientReports](
	[PatientReportsID] [int] IDENTITY(1,1) NOT NULL,
	[HomeRemediesID] [int] NOT NULL,
	[SymtomID] [int] NOT NULL,
	[DiseaseID] [int] NOT NULL,
	[PatientName] [varchar](200) NULL,
	[PatientContactNumber] [varchar](20) NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [pk_PatientReportsID] PRIMARY KEY CLUSTERED 
(
	[PatientReportsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Symtoms]    Script Date: 3/12/2017 12:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Symtoms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Symtoms](
	[SymtomID] [int] IDENTITY(1,1) NOT NULL,
	[SymtomName] [varchar](50) NULL,
	[AgeGroup] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Serviority] [varchar](50) NULL,
	[OtherInformation] [varchar](100) NULL,
 CONSTRAINT [pk_SymtomID] PRIMARY KEY CLUSTERED 
(
	[SymtomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SymtomsForDisease]    Script Date: 3/12/2017 12:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SymtomsForDisease](
	[SymtomsForDiseaseID] [int] IDENTITY(1,1) NOT NULL,
	[SymtomID] [int] NOT NULL,
	[DiseaseID] [int] NOT NULL,
 CONSTRAINT [pk_SymtomsForDiseaseID] PRIMARY KEY CLUSTERED 
(
	[SymtomsForDiseaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies]  WITH CHECK ADD  CONSTRAINT [fk_HomeRemedies_DiseaseID] FOREIGN KEY([DiseaseID])
REFERENCES [dbo].[DiseaseType] ([DiseaseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies] CHECK CONSTRAINT [fk_HomeRemedies_DiseaseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies]  WITH CHECK ADD  CONSTRAINT [fk_HomeRemedies_SymtomID] FOREIGN KEY([SymtomID])
REFERENCES [dbo].[Symtoms] ([SymtomID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeRemedies_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeRemedies]'))
ALTER TABLE [dbo].[HomeRemedies] CHECK CONSTRAINT [fk_HomeRemedies_SymtomID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports]  WITH CHECK ADD  CONSTRAINT [fk_PatientReports_DiseaseID] FOREIGN KEY([DiseaseID])
REFERENCES [dbo].[DiseaseType] ([DiseaseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] CHECK CONSTRAINT [fk_PatientReports_DiseaseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_HomeRemediesID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports]  WITH CHECK ADD  CONSTRAINT [fk_PatientReports_HomeRemediesID] FOREIGN KEY([HomeRemediesID])
REFERENCES [dbo].[HomeRemedies] ([HomeRemediesID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_HomeRemediesID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] CHECK CONSTRAINT [fk_PatientReports_HomeRemediesID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports]  WITH CHECK ADD  CONSTRAINT [fk_PatientReports_SymtomID] FOREIGN KEY([SymtomID])
REFERENCES [dbo].[Symtoms] ([SymtomID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_PatientReports_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientReports]'))
ALTER TABLE [dbo].[PatientReports] CHECK CONSTRAINT [fk_PatientReports_SymtomID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease]  WITH CHECK ADD  CONSTRAINT [fk_SymtomsForDisease_DiseaseID] FOREIGN KEY([DiseaseID])
REFERENCES [dbo].[DiseaseType] ([DiseaseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_DiseaseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease] CHECK CONSTRAINT [fk_SymtomsForDisease_DiseaseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease]  WITH CHECK ADD  CONSTRAINT [fk_SymtomsForDisease_SymtomID] FOREIGN KEY([SymtomID])
REFERENCES [dbo].[Symtoms] ([SymtomID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_SymtomsForDisease_SymtomID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SymtomsForDisease]'))
ALTER TABLE [dbo].[SymtomsForDisease] CHECK CONSTRAINT [fk_SymtomsForDisease_SymtomID]
GO
