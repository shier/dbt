{{ config(materialized='table',schema='dbo')}}
Select
	cast([BannerTypeID] as int) [BannerTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_BannerType_FinalView]