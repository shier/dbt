create view "stg"."CC_ShareInfo_FinalView__dbt_tmp" as
    
Select
	[ShareInfoID],[Browser],[Appused],[UserAgent],[UserEmail],[IpAddress],[Latitude],[Longitude],[CreateDateUTC],[UserID],[ListingFK] 
From stg.[CC_ShareInfo_Incr] 
Where [dbt_valid_to] is null
