
  
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
	cast([CredentialID] as int) [CredentialID],
	cast([FeeType_Credential_ID] as int) [FeeType_Credential_ID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([CredentialQuantity] as int) [CredentialQuantity],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([QueueID] as int) [QueueID],
	cast([CredentialName] as nvarchar(4000)) [CredentialName],
	cast([Active] as bit) [Active] 
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


