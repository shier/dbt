{{ config(materialized='table',schema='dbo')}}
Select
	cast([ClipID] as int) [ClipID],
	cast([ClipTypeID] as int) [ClipTypeID],
	cast([MultiMediaID] as int) [MultiMediaID],
	cast([Active] as int) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_Clip_FinalView]