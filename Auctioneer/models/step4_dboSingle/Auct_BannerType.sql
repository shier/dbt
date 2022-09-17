{{ config(materialized='table',schema='dbo')}}
Select
	cast([BannerTypeID] as int) [BANNERTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BannerType_FinalView]