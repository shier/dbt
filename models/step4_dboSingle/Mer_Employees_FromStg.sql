{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as varchar(100)) [ID],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Name] as varchar(500)) [Name],
	cast([NickName] as varchar(500)) [NickName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Pin] as varchar(128)) [PIN],
	cast([Role] as varchar(100)) [Role] 
From stg.[Mer_Employees_FinalView]