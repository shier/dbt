{{ config(materialized='table',schema='dbo')}}
Select
	cast([MyTableID] as int) [MyTableID],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_MyTable_FinalView]