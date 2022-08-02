create view "stg"."Mer_NewInventorystuff_FinalView__dbt_tmp" as
    
Select
	[No_],[No_2],[Description],[Description_2],[Base_Unit_Of_Measure],[Item_Category_Code],[Unit_Price] 
From [Mer_NewInventorystuff_Incr]
