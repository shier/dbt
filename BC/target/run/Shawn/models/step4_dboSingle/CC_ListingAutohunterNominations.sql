
  
  if object_id ('"dbo"."CC_ListingAutohunterNominations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingAutohunterNominations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingAutohunterNominations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingAutohunterNominations__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingAutohunterNominations__dbt_tmp_temp_view as
    
Select
	cast([NominationDateUTC] as datetime) [NominationDateUTC],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([CompanyID] as int) [CompanyId],
	cast([Nominationaccepted] as bit) [NominationAccepted],
	cast([NominationSalesForceProcessed] as bit) [NominationSalesforceProcessed] 
From stg.[CC_ListingAutohunterNominations_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingAutohunterNominations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingAutohunterNominations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingAutohunterNominations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingAutohunterNominations__dbt_tmp_temp_view"
    end


