﻿CREATE TABLE [dbo].[MyDestination] (
    [SK_Customers]         INT            IDENTITY (1, 1) NOT NULL,
    [CustomerAlternateKey] NVARCHAR (15)  NOT NULL,
    [Title]                NVARCHAR (8)   NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [MiddleName]           NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NULL,
    [BirthDate]            DATE           NULL,
    [MaritalStatus]        NCHAR (1)      NULL,
    [Suffix]               NVARCHAR (10)  NULL,
    [Gender]               NVARCHAR (1)   NULL,
    [EmailAddress]         NVARCHAR (50)  NULL,
    [YearlyIncome]         MONEY          NULL,
    [TotalChildren]        TINYINT        NULL,
    [NumberChildrenAtHome] TINYINT        NULL,
    [EnglishEducation]     NVARCHAR (40)  NULL,
    [EnglishOccupation]    NVARCHAR (100) NULL,
    [HouseOwnerFlag]       NCHAR (1)      NULL,
    [NumberCarsOwned]      TINYINT        NULL,
    [DWH_Hash]             CHAR (66)      NULL,
    CONSTRAINT [PK_MyDestination] PRIMARY KEY CLUSTERED ([SK_Customers] ASC)
);

