
  
  if object_id ('"stg"."CC_ListingAudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingAudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingAudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingAudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingAudit_Inter__dbt_tmp_temp_view as
    
Select
	[AuditPK] [AuditPK],
	[ListingFK] [ListingFK],
	[AuditDateTimeUTC] [AuditDateTimeUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([DDLAction] as nvarchar(4000)) [DdlAction],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([OldValue] as nvarchar(4000)) [Oldvalue],
	cast([NewValue] as nvarchar(4000)) [Newvalue]
From stg.[CC_ListingAudit_Raw]
    ');

  CREATE TABLE "stg"."CC_ListingAudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingAudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingAudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingAudit_Inter__dbt_tmp_temp_view"
    end


