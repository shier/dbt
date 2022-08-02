create view "stg"."Mer_Categorystuff_InterView__dbt_tmp" as
    
Select
	cast([column1] as nvarchar(4000)) [Column1],
	cast([column2] as nvarchar(4000)) [Column2]
From stg.[Mer_Categorystuff_Raw]
