
  
  if object_id ('"stg"."CC_Showcase_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Showcase_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Showcase_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Showcase_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Showcase_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	EndDate EndDate,
	Id ID,
	ListingId ListingID,
	PaymentTypeId PaymentTypeID,
	isActive IsActive,
	cast(SalesforceOpportunityId as nvarchar(4000)) SalesForceOpportunityID
From CC_Showcase_Raw
    ');

  CREATE TABLE "stg"."CC_Showcase_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Showcase_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Showcase_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Showcase_Inter__dbt_tmp_temp_view"
    end


