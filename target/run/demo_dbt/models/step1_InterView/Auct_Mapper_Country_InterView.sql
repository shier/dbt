create view "stg"."Auct_Mapper_Country_InterView__dbt_tmp" as
    
Select
	[MAPTOID] [MaptoID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_Mapper_Country_Raw]
