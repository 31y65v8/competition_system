-- 创建数据库
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE competition_system;
END;
GO

-- 使用数据库
USE competition_system;
GO

-- 创建 competition 表
IF OBJECT_ID('competition', 'U') IS NOT NULL
BEGIN
    DROP TABLE competition;
END;
GO

CREATE TABLE competition (
    id BIGINT NOT NULL PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(100) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    password NVARCHAR(100) NULL,
    is_public BIT NOT NULL DEFAULT 0
);
GO

-- 外键约束如果有需要另外处理
