{{ config(materialized='table',schema='dbo')}}
Select
	cast([ClipTypeID] as int) [ClipTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active] 
From stg.[Auct_ClipType_FinalView]