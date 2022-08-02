
Select
	[FeeType_AmenityID],[OrderBy],[FeeTypeID],[StartDate],[EndDate],[Created],[Active],[Name],[CreatedByUser] 
From stg.[Auct_Amenities_Incr] 
Where [dbt_valid_to] is null