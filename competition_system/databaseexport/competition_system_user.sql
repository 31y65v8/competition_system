-- �������ݿ�
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system]
    COLLATE SQL_Latin1_General_CP1_CI_AS;  -- ʹ�� SQL Server ��Ĭ���������
END
GO

USE [competition_system];  -- �л����´��������ݿ�
GO

-- ɾ���û���������ڣ�
IF OBJECT_ID(N'dbo.[user]', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.[user];
END
GO

-- �����û���
CREATE TABLE dbo.[user] (
    [email] NVARCHAR(100) NOT NULL,
    [phone] NVARCHAR(100) NOT NULL,
    [nickname] NVARCHAR(100) NOT NULL,
    [student_id] BIGINT NOT NULL PRIMARY KEY,
    [password] NVARCHAR(100) NOT NULL,
    [id] BIGINT NOT NULL,
    [is_active] BIT NOT NULL,
    [phone_number] NVARCHAR(255) NULL,
    CONSTRAINT [User_unique] UNIQUE ([email]),
    CONSTRAINT [User_unique_1] UNIQUE ([phone])
);
GO

-- �� SQL Server �У����ݲ���ʱ����Ҫ������
-- ���ݲ���ʾ��
-- INSERT INTO dbo.[user] ([email], [phone], [nickname], [student_id], [password], [id], [is_active], [phone_number])
-- VALUES ('example@example.com', '1234567890', 'Nickname', 123456, 'password123', 1, 1, NULL);
