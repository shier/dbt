{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentID] as int) [ContentID],
	cast([MetaDataID] as int) [MetaDataID] 
From stg.[Auct_ContentMetaData_FinalView]