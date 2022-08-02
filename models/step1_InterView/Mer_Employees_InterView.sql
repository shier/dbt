{{ config(materialized='view',schema='stg')}}
Select
	cast([Id] as nvarchar(4000)) [ID],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([NickName] as nvarchar(4000)) [NickName],
	cast([Email] as nvarchar(4000)) [Email],
	cast([Pin] as nvarchar(4000)) [Pin],
	cast([Role] as nvarchar(4000)) [Role]
From stg.[Mer_Employees_Raw]
