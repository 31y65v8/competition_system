-- �������ݿ�
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system];
END
GO

USE [competition_system];  -- �л����´��������ݿ�
GO

-- ɾ����������ڣ�
IF OBJECT_ID(N'dbo.trainingplan', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.trainingplan;
END
GO

-- ������
CREATE TABLE dbo.trainingplan (
    [id] BIGINT NOT NULL,
    [name] NVARCHAR(100) NOT NULL,  -- ʹ�� NVARCHAR ��֧��Unicode�ַ�
    [description] NVARCHAR(MAX),     -- ʹ�� NVARCHAR(MAX) ��֧�ָ������ı�
    PRIMARY KEY ([id])
);
GO

-- ��������ʾ���������Ҫ�Ļ���
-- INSERT INTO dbo.trainingplan ([id], [name], [description])
-- VALUES (1, N'Training Plan 1', N'Description of Training Plan 1');

-- SQL Server ����Ҫ�ֶ�������������������ɾ��

-- ���� SQL �ű������
