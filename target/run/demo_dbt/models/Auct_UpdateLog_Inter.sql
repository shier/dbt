
  
  if object_id ('"stg"."Auct_UpdateLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UpdateLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UpdateLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UpdateLog_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	UpdateLogId UpdateLogID,
	cast(TableName as nvarchar(4000)) TableName,
	cast(KeyValue as nvarchar(4000)) KeyValue,
	cast(FieldName as nvarchar(4000)) FieldName,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	cast(NewValue as nvarchar(4000)) Newvalue,
	cast(UserName as nvarchar(4000)) UserName,
	cast(TransactionID as nvarchar(4000)) TransactionID
From Auct_UpdateLog_Raw
    ');

  CREATE TABLE "stg"."Auct_UpdateLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UpdateLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UpdateLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateLog_Inter__dbt_tmp_temp_view"
    end


