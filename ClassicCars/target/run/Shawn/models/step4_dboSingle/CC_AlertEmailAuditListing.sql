
  
  if object_id ('"dbo"."CC_AlertEmailAuditListing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AlertEmailAuditListing__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_AlertEmailAuditListing__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_AlertEmailAuditListing__dbt_tmp"
    end


   EXEC('create view dbo.CC_AlertEmailAuditListing__dbt_tmp_temp_view as
    
Select
	cast([AlertEmailAuditListingPK] as int) [AlertEmailAuditListingPK],
	cast([AlertEmailAuditFK] as int) [AlertEmailAuditFK],
	cast([ListingID] as int) [ListingID] 
From stg.[CC_AlertEmailAuditListing_FinalView]
    ');

  CREATE TABLE "dbo"."CC_AlertEmailAuditListing__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_AlertEmailAuditListing__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_AlertEmailAuditListing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AlertEmailAuditListing__dbt_tmp_temp_view"
    end


