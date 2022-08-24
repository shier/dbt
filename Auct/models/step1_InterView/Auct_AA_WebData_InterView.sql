{{ config(materialized='view',schema='stg')}}
Select
	[CARINFOID] [CarInfoID],
	cast([HorsePower] as nvarchar(4000)) [Horsepower],
	[OriginalHorsePower] [OriginalHorsepower]
From stg.[Auct_AA_WebData_Raw]
