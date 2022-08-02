
  
  if object_id ('"stg"."CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingautohunterNominations_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingautohunterNominations_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view as
    
Select
	NominationDateUTC NominationDateUTC,
	Id ID,
	ListingId ListingID,
	CompanyId CompanyID,
	NominationAccepted Nominationaccepted,
	NominationSalesforceProcessed NominationSalesForceProcessed
From CC_ListingautohunterNominations_Raw
    ');

  CREATE TABLE "stg"."CC_ListingautohunterNominations_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingautohunterNominations_Inter__dbt_tmp_temp_view"
    end


