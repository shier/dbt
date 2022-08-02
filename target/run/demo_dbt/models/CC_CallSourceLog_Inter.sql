
  
  if object_id ('"stg"."CC_CallSourceLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_CallSourceLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_CallSourceLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_CallSourceLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_CallSourceLog_Inter__dbt_tmp_temp_view as
    
Select
	CreateDateUTC CreateDateUTC,
	CallSourceLogPK CallSourceLogpk,
	Success Success,
	cast(IPAddress as nvarchar(4000)) IpAddress,
	cast(Message as nvarchar(4000)) Message,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(ADFDoc as nvarchar(4000)) AdfDoc
From CC_CallSourceLog_Raw
    ');

  CREATE TABLE "stg"."CC_CallSourceLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_CallSourceLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_CallSourceLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_CallSourceLog_Inter__dbt_tmp_temp_view"
    end


