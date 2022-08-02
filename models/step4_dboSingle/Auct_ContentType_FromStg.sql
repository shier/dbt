{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentTypeID] as int) [ContentTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active] 
From stg.[Auct_ContentType_FinalView]