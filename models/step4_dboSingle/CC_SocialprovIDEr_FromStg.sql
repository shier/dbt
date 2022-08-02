{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([AppKey] as nvarchar(4000)) [AppKey],
	cast([AppSecret] as nvarchar(4000)) [AppSecret],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_SocialprovIDEr_FinalView]