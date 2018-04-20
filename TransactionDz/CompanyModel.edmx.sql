
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/20/2018 16:39:52
-- Generated from EDMX file: c:\users\сикировт\documents\visual studio 2017\Projects\TransactionDz\TransactionDz\CompanyModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [One_To_One.UsersContext];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ItemSet'
CREATE TABLE [dbo].[ItemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ItemName] nvarchar(max)  NOT NULL,
    [CompanyId] int  NULL
);
GO

-- Creating table 'CompanySet'
CREATE TABLE [dbo].[CompanySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CompanyName] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ItemSet'
ALTER TABLE [dbo].[ItemSet]
ADD CONSTRAINT [PK_ItemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CompanySet'
ALTER TABLE [dbo].[CompanySet]
ADD CONSTRAINT [PK_CompanySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CompanyId] in table 'ItemSet'
ALTER TABLE [dbo].[ItemSet]
ADD CONSTRAINT [FK_CompanyItem]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[CompanySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyItem'
CREATE INDEX [IX_FK_CompanyItem]
ON [dbo].[ItemSet]
    ([CompanyId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------