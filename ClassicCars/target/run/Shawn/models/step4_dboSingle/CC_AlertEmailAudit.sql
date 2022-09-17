
  
  if object_id ('"dbo"."CC_AlertEmailAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AlertEmailAudit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_AlertEmailAudit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_AlertEmailAudit__dbt_tmp"
    end


   EXEC('create view dbo.CC_AlertEmailAudit__dbt_tmp_temp_view as
    
Select
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([AlertEmailAuditPK] as int) [AlertEmailAuditPK],
	cast([SavedSearchID] as int) [SavedSearchID],
	cast([AlertFrequency] as nvarchar(4000)) [AlertFrequency],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason] 
From stg.[CC_AlertEmailAudit_FinalView]
    ');

  CREATE TABLE "dbo"."CC_AlertEmailAudit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_AlertEmailAudit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_AlertEmailAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AlertEmailAudit__dbt_tmp_temp_view"
    end


