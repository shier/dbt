{{ config(materialized='table',schema='dbo')}}
Select
	cast([TagPK] as int) [TagPK],
	cast([TagName] as nvarchar(4000)) [TagName],
	cast([Slug] as nvarchar(4000)) [Slug] 
From stg.[CC_Tags_FinalView]