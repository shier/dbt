{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarInfoID] as int) [CarInfoID],
	cast([Horsepower] as nvarchar(4000)) [Horsepower],
	cast([OriginalHorsepower] as int) [OriginalHorsepower] 
From stg.[Auct_AA_WebData_FinalView]