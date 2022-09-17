
  
  if object_id ('"dbo"."CC_ListingAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingAudit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingAudit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingAudit__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingAudit__dbt_tmp_temp_view as
    
Select
	cast([AuditPK] as int) [AuditPK],
	cast([ListingFK] as int) [ListingFK],
	cast([AuditDateTimeUTC] as datetime) [AuditDateTimeUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([DdlAction] as nvarchar(4000)) [DdlAction],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue] 
From stg.[CC_ListingAudit_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingAudit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingAudit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingAudit__dbt_tmp_temp_view"
    end


