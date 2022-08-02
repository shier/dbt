
Select
	[ShareInfoID],[Longitude],[Latitude],[Browser],[Appused],[UserAgent],[UserEmail],[IpAddress],[CreateDateUTC],[ListingFK],[UserID] 
From stg.[CC_ShareInfo_Incr] 
Where [dbt_valid_to] is null