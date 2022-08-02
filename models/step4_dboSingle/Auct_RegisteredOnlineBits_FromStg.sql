{{ config(materialized='table',schema='dbo')}}
Select
	cast([RegisteredOnlineBit] as int) [RegisteredOnlineBit],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_RegisteredOnlineBits_FinalView]