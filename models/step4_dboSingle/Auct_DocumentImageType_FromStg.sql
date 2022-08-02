{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentImageTypeID] as int) [DocumentImageTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_DocumentImageType_FinalView]