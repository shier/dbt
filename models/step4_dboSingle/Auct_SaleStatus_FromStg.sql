{{ config(materialized='table',schema='dbo')}}
Select
	cast([SaleStatusID] as int) [SaleStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ClassName] as nvarchar(4000)) [ClassName] 
From stg.[Auct_SaleStatus_FinalView]