{{ config(materialized='table',schema='dbo')}}
Select
	cast([AcceptionApplicationsBit] as int) [AcceptionApplicationsBIT],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_AcceptionApplicationsBits_FinalView]