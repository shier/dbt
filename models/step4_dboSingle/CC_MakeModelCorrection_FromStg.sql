{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([BadMake] as nvarchar(4000)) [BadMake],
	cast([BadModel] as nvarchar(4000)) [BadModel],
	cast([GoodMake] as nvarchar(4000)) [GoodMake],
	cast([GoodModel] as nvarchar(4000)) [GoodModel],
	cast([GoodTrim] as nvarchar(4000)) [GoodTrim],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModelCorrection_FinalView]