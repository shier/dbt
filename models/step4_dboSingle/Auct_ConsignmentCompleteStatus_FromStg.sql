{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentCompleteStatusID] as int) [ConsignmentCompleteStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder],
	cast([Active] as bit) [Active] 
From stg.[Auct_ConsignmentCompleteStatus_FinalView]