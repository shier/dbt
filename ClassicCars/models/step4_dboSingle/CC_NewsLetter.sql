{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsActive] as bit) [IsActive],
	cast([Email] as nvarchar(320)) [Email],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_NewsLetter_FinalView]