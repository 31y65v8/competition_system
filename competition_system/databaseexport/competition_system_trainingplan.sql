-- 创建数据库
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system];
END
GO

USE [competition_system];  -- 切换到新创建的数据库
GO

-- 删除表（如果存在）
IF OBJECT_ID(N'dbo.trainingplan', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.trainingplan;
END
GO

-- 创建表
CREATE TABLE dbo.trainingplan (
    [id] BIGINT NOT NULL,
    [name] NVARCHAR(100) NOT NULL,  -- 使用 NVARCHAR 以支持Unicode字符
    [description] NVARCHAR(MAX),     -- 使用 NVARCHAR(MAX) 以支持更长的文本
    PRIMARY KEY ([id])
);
GO

-- 插入数据示例（如果需要的话）
-- INSERT INTO dbo.trainingplan ([id], [name], [description])
-- VALUES (1, N'Training Plan 1', N'Description of Training Plan 1');

-- SQL Server 不需要手动锁定表，所以相关语句已删除

-- 以上 SQL 脚本已完成
