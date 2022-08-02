
  
  if object_id ('"stg"."CC_Listingaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listingaudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listingaudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Listingaudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Listingaudit_Inter__dbt_tmp_temp_view as
    
Select
	cast(NewValue as nvarchar(4000)) Newvalue,
	cast(UserName as nvarchar(4000)) UserName,
	cast(DDLAction as nvarchar(4000)) DdlAction,
	cast(FieldName as nvarchar(4000)) FieldName,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	AuditPK Auditpk,
	ListingFK Listingfk,
	AuditDateTimeUTC AuditDateTimeUTC
From CC_Listingaudit_Raw
    ');

  CREATE TABLE "stg"."CC_Listingaudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listingaudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Listingaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listingaudit_Inter__dbt_tmp_temp_view"
    end


