
  
  if object_id ('"stg"."CC_ErrorLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ErrorLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ErrorLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ErrorLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ErrorLog_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([UserMessage] as nvarchar(4000)) [UserMessage],
	cast([ExceptionDetails] as nvarchar(4000)) [Exceptiondetails],
	cast([HttpMethod] as nvarchar(4000)) [HttpMethod],
	cast([Url] as nvarchar(4000)) [URL],
	cast([ReferrerUrl] as nvarchar(4000)) [ReferrerURL],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ClientAddress] as nvarchar(4000)) [ClientAddress],
	cast([Headers] as nvarchar(4000)) [Headers],
	cast([Body] as nvarchar(4000)) [Body],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([StackTrace] as nvarchar(4000)) [Stacktrace],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive]
From stg.[CC_ErrorLog_Raw]
    ');

  CREATE TABLE "stg"."CC_ErrorLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ErrorLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ErrorLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ErrorLog_Inter__dbt_tmp_temp_view"
    end


