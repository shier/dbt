create view "dbo_stg"."Auct_AA_WebData_InterView__dbt_tmp" as
    
Select
	[CARINFOID] [CarInfoID],
	cast([HorsePower] as nvarchar(4000)) [Horsepower],
	[OriginalHorsePower] [OriginalHorsepower]
From stg.[Auct_AA_WebData_Raw]
