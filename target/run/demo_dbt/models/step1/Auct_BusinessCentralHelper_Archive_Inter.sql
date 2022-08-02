
  
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view as
    
Select
	[BUSINESSCENTRALARCHIVEID] [BusinessCentralArchiveID],
	cast([BUSINESSCENTRALHELPER_METHODNAME] as nvarchar(4000)) [BusinessCentralHelper_MethodName],
	cast([BUSINESSCENTRALHELPER_PARAMETERTYPENAME] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterTypeName],
	cast([BUSINESSCENTRALHELPER_PARAMETERPAYLOAD] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterPayload],
	[INVOICEID] [InvoiceID],
	cast([BUSINESSCENTRAL_DOCUMENTNO] as nvarchar(4000)) [BusinessCentral_Documentno],
	[PROCESSED] [Processed]
From stg.[Auct_BusinessCentralHelper_Archive_Raw]
    ');

  CREATE TABLE "stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BusinessCentralHelper_Archive_Inter__dbt_tmp_temp_view"
    end


