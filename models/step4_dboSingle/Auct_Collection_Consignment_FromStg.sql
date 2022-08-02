{{ config(materialized='table',schema='dbo')}}
Select
	cast([CollectionID] as int) [CollectionID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([Active] as int) [Active] 
From stg.[Auct_Collection_Consignment_FinalView]