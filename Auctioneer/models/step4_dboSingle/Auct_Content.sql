{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentID] as int) [CONTENTID],
	cast([ContentTypeID] as int) [CONTENTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE],
	cast([DateCreated] as DATETIME) [DATECREATED] 
From stg.[Auct_Content_FinalView]