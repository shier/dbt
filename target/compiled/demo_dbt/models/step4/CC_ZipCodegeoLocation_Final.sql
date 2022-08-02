
Select
	[ID],[CreateDate],[ModifyDate],[Latitude],[Longitude],[IsActive],[ZipCode] 
From stg.[CC_ZipCodegeoLocation_Incr] 
Where [dbt_valid_to] is null