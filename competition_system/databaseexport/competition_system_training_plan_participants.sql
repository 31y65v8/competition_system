-- �������ݿ�
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'competition_system')
BEGIN
    CREATE DATABASE competition_system;
END;
GO

-- ʹ�����ݿ�
USE competition_system;
GO

-- ɾ���� training_plan_participants �������
IF OBJECT_ID('dbo.training_plan_participants', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.training_plan_participants;
END;
GO

-- ���� training_plan_participants ��
CREATE TABLE dbo.training_plan_participants (
    training_plan_id BIGINT NOT NULL,
    participants_id BIGINT NOT NULL,
    CONSTRAINT FK_trainingplan FOREIGN KEY (trainingplan_id) REFERENCES dbo.trainingplan(id)
);
GO

-- ����ͼ�Լ���Ѿ��ڴ�����ʱ������
-- ��������KEYs����SQL Server��ʹ���ʵ�������������

-- ��������ʱ�������MySQL�����滻Ϊ�ʺ�SQL Server������������

-- ������ݵ���ı�Ҫ���ÿ���ֱ��ͨ��SSMS�����û��ڵ�����ɺ���ӡ�
