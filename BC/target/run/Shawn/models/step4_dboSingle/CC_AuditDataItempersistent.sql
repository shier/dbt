
  
  if object_id ('"dbo"."CC_AuditDataItempersistent__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AuditDataItempersistent__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_AuditDataItempersistent__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_AuditDataItempersistent__dbt_tmp"
    end


   EXEC('create view dbo.CC_AuditDataItempersistent__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([ModifiedOn] as datetime) [ModifiedOn],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([OperationType] as nvarchar(4000)) [OperationType],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuditeDOBJect] as nvarchar(4000)) [AuditedObject],
	cast([OlDOBJect] as nvarchar(4000)) [OldObject],
	cast([NewoBJect] as nvarchar(4000)) [NewObject],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue],
	cast([PropertyName] as nvarchar(4000)) [PropertyName] 
From stg.[CC_AuditDataItempersistent_FinalView]
    ');

  CREATE TABLE "dbo"."CC_AuditDataItempersistent__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_AuditDataItempersistent__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_AuditDataItempersistent__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AuditDataItempersistent__dbt_tmp_temp_view"
    end


