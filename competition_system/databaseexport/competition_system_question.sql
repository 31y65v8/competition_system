-- �������ݿ⣨��������ڣ�
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE competition_system;
END;
GO

-- ʹ�����ݿ�
USE competition_system;
GO

-- ɾ���� question �������
IF OBJECT_ID('dbo.question', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.question;
END;
GO

-- ���� question ��
CREATE TABLE dbo.question (
    id BIGINT NOT NULL PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(100) NOT NULL,
    input_description NVARCHAR(100) NULL,
    output_description NVARCHAR(100) NULL,
    sample_input NVARCHAR(100) NULL,
    sample_output NVARCHAR(100) NULL,
    timelimit INT NULL,
    memorylimit NVARCHAR(100) NULL,
    memory_limit INT NOT NULL,
    time_limit INT NOT NULL,
    CONSTRAINT Question_unique UNIQUE (name)
);
GO

-- �ύ�������ݺ���������ʱ���������ÿɸ��ݾ����������
