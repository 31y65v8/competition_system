-- 创建数据库
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE [competition_system];
END
GO

USE [competition_system];  -- 切换到创建的数据库
GO

-- 删除表（如果存在）
IF OBJECT_ID(N'dbo.trainingplan_competition', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.trainingplan_competition;
END
GO

-- 创建表
CREATE TABLE dbo.trainingplan_competition (
    trainingplan_id BIGINT NOT NULL,
    competition_id BIGINT NOT NULL,
    PRIMARY KEY (trainingplan_id, competition_id)
);
GO

-- 创建外键约束
-- 为 competition_id 添加外键约束
ALTER TABLE dbo.trainingplan_competition
ADD CONSTRAINT FK_trainingplan_competition_competition
FOREIGN KEY (competition_id) REFERENCES dbo.competition (id);
GO

-- 为 trainingplan_id 添加外键约束
ALTER TABLE dbo.trainingplan_competition
ADD CONSTRAINT FK_trainingplan_competition_trainingplan
FOREIGN KEY (trainingplan_id) REFERENCES dbo.trainingplan (id);
GO


-- SQL Server 不需要手动锁定或解锁表，因此移除 `LOCK TABLES` 相关语句

-- 以上 SQL 脚本已完成
