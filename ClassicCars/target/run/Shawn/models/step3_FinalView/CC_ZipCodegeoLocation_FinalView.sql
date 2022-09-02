create view "stg"."CC_ZipCodegeoLocation_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[ZipCode],[IsActive],[Latitude],[Longitude] 
From stg.[CC_ZipCodegeoLocation_Incr] 
Where [dbt_valid_to] is null
