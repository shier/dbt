{{ config(materialized='table',schema='dbo')}}
Select
	cast([TagName] as nvarchar(4000)) [TagName],
	cast([Slug] as nvarchar(4000)) [Slug],
	cast([TagPK] as int) [TagPK] 
From stg.[CC_Tags_FinalView]