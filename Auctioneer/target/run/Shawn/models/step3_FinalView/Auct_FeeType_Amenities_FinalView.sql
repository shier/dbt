create view "stg"."Auct_FeeType_Amenities_FinalView__dbt_tmp" as
    
Select
	[FeeType_AmenityID],[FeeTypeID],[Name],[StartDate],[EndDate],[Created],[CreatedByUser],[OrderBy],[Active] 
From stg.[Auct_FeeType_Amenities_Incr] 
Where [dbt_valid_to] is null
