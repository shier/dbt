{{ config(materialized='table',schema='dbo')}}
Select
	cast([Column1] as nvarchar(4000)) [Column1],
	cast([Column2] as nvarchar(4000)) [Column2] 
From stg.[Mer_Categorystuff_FinalView]