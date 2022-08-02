{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverID] as int) [DriverID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_Driver_FinalView]