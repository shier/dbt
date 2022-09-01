{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	cast([BadMake] as nvarchar(4000)) [BadMake],
	cast([BadModel] as nvarchar(4000)) [BadModel],
	cast([GoodMake] as nvarchar(4000)) [GoodMake],
	cast([GoodModel] as nvarchar(4000)) [GoodModel],
	cast([GoodTrim] as nvarchar(4000)) [GoodTrim],
	[IsActive] [IsActive]
From stg.[CC_MakeModelCorrection_Raw]
