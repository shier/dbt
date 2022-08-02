
  
  if object_id ('"stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view as
    
Select
	[FSBOSoftDeactivate_EmailAuditPK] [FsboSoftDeactivate_EmailAuditPK],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillId] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillRejectReason] as nvarchar(4000)) [MandrillrejectReason],
	[DateSentUTC] [DateSentUTC],
	[ListingModifyDate] [ListingModifyDate],
	[ListingId] [ListingID],
	[DeactivateStage] [Deactivatestage]
From stg.[CC_FsboSoftDeactivate_EmailAudit_Raw]
    ');

  CREATE TABLE "stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_FsboSoftDeactivate_EmailAudit_Inter__dbt_tmp_temp_view"
    end


