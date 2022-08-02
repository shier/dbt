{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentationBitID] as int) [DocumentationBitID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_DocumentationBits_FinalView]