-- 创建数据库
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE competition_system;
END;
GO

-- 使用数据库
USE competition_system;
GO

-- 删除表 training_plan_participants 如果存在
IF OBJECT_ID('dbo.training_plan_participants', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.training_plan_participants;
END;
GO

-- 创建 training_plan_participants 表
CREATE TABLE dbo.training_plan_participants (
    training_plan_id BIGINT NOT NULL,
    participants_id BIGINT NOT NULL,
    CONSTRAINT FK_trainingplan FOREIGN KEY (trainingplan_id) REFERENCES dbo.trainingplan(id)
);
GO

-- 外键和键约束已经在创建表时声明。
-- 对于其他KEYs，在SQL Server中使用适当的索引创建。

-- 插入数据时，锁表的MySQL命令替换为适合SQL Server的批处理事务。

-- 完成数据导入的必要设置可以直接通过SSMS的设置或在导入完成后添加。
