-- 创建数据库
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system]
    COLLATE SQL_Latin1_General_CP1_CI_AS;  -- 使用 SQL Server 的默认排序规则
END
GO

USE [competition_system];  -- 切换到新创建的数据库
GO

-- 删除表（如果存在）
IF OBJECT_ID(N'dbo.[trainingplan_users]', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.[trainingplan_users];
END
GO

-- 创建表
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

-- 在 SQL Server 中，数据插入时不需要锁定表
-- 数据插入示例
-- INSERT INTO dbo.[trainingplan_users] ([trainingplan_id], [user_id])
-- VALUES (1, 123456);
