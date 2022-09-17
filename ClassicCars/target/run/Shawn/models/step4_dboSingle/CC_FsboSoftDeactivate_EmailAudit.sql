
  
  if object_id ('"dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp"
    end


   EXEC('create view dbo.CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view as
    
Select
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason],
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([ListingModifyDate] as datetime) [ListingModifyDate],
	cast([FsboSoftDeactivate_EmailAuditPK] as int) [FsboSoftDeactivate_EmailAuditPK],
	cast([ListingID] as int) [ListingID],
	cast([Deactivatestage] as int) [Deactivatestage] 
From stg.[CC_FsboSoftDeactivate_EmailAudit_FinalView]
    ');

  CREATE TABLE "dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_FsboSoftDeactivate_EmailAudit__dbt_tmp_temp_view"
    end


