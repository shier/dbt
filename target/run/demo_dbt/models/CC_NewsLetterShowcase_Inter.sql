
  
  if object_id ('"stg"."CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_NewsLetterShowcase_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_NewsLetterShowcase_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view as
    
Select
	CreateDateUTC CreateDateUTC,
	ModifyDateUTC ModifyDateUTC,
	NewsletterIssueFK NewsLetterissuefk,
	ListingFK Listingfk,
	ShowcaseSequence ShowcaseSequence,
	IsActive IsActive
From CC_NewsLetterShowcase_Raw
    ');

  CREATE TABLE "stg"."CC_NewsLetterShowcase_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_NewsLetterShowcase_Inter__dbt_tmp_temp_view"
    end


