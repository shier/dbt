
  
  if object_id ('"stg"."Auct_Archive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Archive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Archive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Archive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Archive_Inter__dbt_tmp_temp_view as
    
Select
	cast(BUSINESSCENTRALHELPER_PARAMETERPAYLOAD as nvarchar(4000)) BusinessCentralHelper_ParaMeterPayload,
	cast(BUSINESSCENTRAL_DOCUMENTNO as nvarchar(4000)) BusinessCentral_Documentno,
	cast(BUSINESSCENTRALHELPER_METHODNAME as nvarchar(4000)) BusinessCentralHelper_MethodName,
	cast(BUSINESSCENTRALHELPER_PARAMETERTYPENAME as nvarchar(4000)) BusinessCentralHelper_ParaMeterTypeName,
	PROCESSED Processed,
	BUSINESSCENTRALARCHIVEID BusinessCentralArchiveID,
	INVOICEID InvoiceID
From Auct_Archive_Raw
    ');

  CREATE TABLE "stg"."Auct_Archive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Archive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Archive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Archive_Inter__dbt_tmp_temp_view"
    end


