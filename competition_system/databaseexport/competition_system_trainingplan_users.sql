-- �������ݿ�
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system]
    COLLATE SQL_Latin1_General_CP1_CI_AS;  -- ʹ�� SQL Server ��Ĭ���������
END
GO

USE [competition_system];  -- �л����´��������ݿ�
GO

-- ɾ����������ڣ�
IF OBJECT_ID(N'dbo.[trainingplan_users]', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.[trainingplan_users];
END
GO

-- ������
CREATE TABLE dbo.[trainingplan_users] (
    [trainingplan_id] BIGINT NOT NULL,
    [user_id] BIGINT NOT NULL,
    PRIMARY KEY ([trainingplan_id], [user_id]),
    CONSTRAINT [trainingplan_users_trainingplan_FK] FOREIGN KEY ([trainingplan_id]) 
        REFERENCES dbo.[trainingplan] ([id]),
    CONSTRAINT [trainingplan_users_user_FK] FOREIGN KEY ([user_id]) 
        REFERENCES dbo.[user] ([student_id])
);
GO

-- �� SQL Server �У����ݲ���ʱ����Ҫ������
-- ���ݲ���ʾ��
-- INSERT INTO dbo.[trainingplan_users] ([trainingplan_id], [user_id])
-- VALUES (1, 123456);
