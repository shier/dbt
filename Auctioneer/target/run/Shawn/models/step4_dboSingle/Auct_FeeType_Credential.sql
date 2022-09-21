
  
  if object_id ('"dbo"."Auct_FeeType_Credential__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType_Credential__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType_Credential__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType_Credential__dbt_tmp_temp_view as
    
Select
	cast([FeeType_Credential_ID] as int) [FEETYPE_CREDENTIAL_ID],
	cast([CredentialID] as int) [CREDENTIALID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([CredentialQuantity] as int) [CREDENTIALQUANTITY],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([CreatedDate] as datetime) [CREATEDDATE],
	cast([QueueID] as int) [QUEUEID],
	cast([CredentialName] as nvarchar(4000)) [CREDENTIALNAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_FeeType_Credential_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType_Credential__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType_Credential__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType_Credential__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential__dbt_tmp_temp_view"
    end


