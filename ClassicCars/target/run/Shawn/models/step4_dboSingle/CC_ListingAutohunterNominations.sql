
  
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
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([CompanyID] as int) [CompanyID],
	cast([Nominationaccepted] as bit) [Nominationaccepted],
	cast([NominationSalesForceProcessed] as bit) [NominationSalesForceProcessed] 
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


