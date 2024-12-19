-- �������ݿ�
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system];
END
GO

USE [competition_system];  -- �л������������ݿ�
GO

-- ɾ����������ڣ�
IF OBJECT_ID(N'dbo.trainingplan_competition', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.trainingplan_competition;
END
GO

-- ������
CREATE TABLE dbo.trainingplan_competition (
    trainingplan_id BIGINT NOT NULL,
    competition_id BIGINT NOT NULL,
    PRIMARY KEY (trainingplan_id, competition_id)
);
GO

-- �������Լ��
-- Ϊ competition_id ������Լ��
ALTER TABLE dbo.trainingplan_competition
ADD CONSTRAINT FK_trainingplan_competition_competition
FOREIGN KEY (competition_id) REFERENCES dbo.competition (id);
GO

-- Ϊ trainingplan_id ������Լ��
ALTER TABLE dbo.trainingplan_competition
ADD CONSTRAINT FK_trainingplan_competition_trainingplan
FOREIGN KEY (trainingplan_id) REFERENCES dbo.trainingplan (id);
GO


-- SQL Server ����Ҫ�ֶ����������������Ƴ� `LOCK TABLES` ������

-- ���� SQL �ű������
