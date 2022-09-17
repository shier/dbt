
  
  if object_id ('"dbo"."CC_CallSourceLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CallSourceLog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_CallSourceLog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_CallSourceLog__dbt_tmp"
    end


   EXEC('create view dbo.CC_CallSourceLog__dbt_tmp_temp_view as
    
Select
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([AdfDoc] as nvarchar(4000)) [AdfDoc],
	cast([CallSourceLogPK] as int) [CallSourceLogPK],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([Success] as bit) [Success] 
From stg.[CC_CallSourceLog_FinalView]
    ');

  CREATE TABLE "dbo"."CC_CallSourceLog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_CallSourceLog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_CallSourceLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CallSourceLog__dbt_tmp_temp_view"
    end


