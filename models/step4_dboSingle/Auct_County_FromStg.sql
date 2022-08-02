{{ config(materialized='table',schema='dbo')}}
Select
	cast([StateAbbreviation] as nvarchar(4000)) [StateAbbreviation],
	cast([County] as nvarchar(4000)) [County] 
From stg.[Auct_County_FinalView]