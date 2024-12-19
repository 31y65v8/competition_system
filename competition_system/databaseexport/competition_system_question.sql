-- 创建数据库（如果不存在）
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE competition_system;
END;
GO

-- 使用数据库
USE competition_system;
GO

-- 删除表 question 如果存在
IF OBJECT_ID('dbo.question', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.question;
END;
GO

-- 创建 question 表
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

-- 提交插入数据和其他操作时的事务设置可根据具体情况调整
