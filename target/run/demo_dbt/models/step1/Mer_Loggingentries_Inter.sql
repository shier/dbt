
  
  if object_id ('"stg"."Mer_Loggingentries_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Loggingentries_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Loggingentries_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Loggingentries_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Loggingentries_Inter__dbt_tmp_temp_view as
    
Select
	[ID] [ID],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([LOGTYPE] as nvarchar(4000)) [LogType],
	cast([ENTRY] as nvarchar(4000)) [Entry],
	[ADD_DATE] [Add_Date]
From stg.[Mer_Loggingentries_Raw]
    ');

  CREATE TABLE "stg"."Mer_Loggingentries_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Loggingentries_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Loggingentries_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Loggingentries_Inter__dbt_tmp_temp_view"
    end


