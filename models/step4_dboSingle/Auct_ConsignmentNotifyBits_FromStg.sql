{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentNotifyBit] as int) [ConsignmentNotifyBit],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_ConsignmentNotifyBits_FinalView]