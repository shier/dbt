
  
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential_Extras__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType_Credential_Extras__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType_Credential_Extras__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([FeeTypeCredentialExtraID] as int) [FEETYPECREDENTIALEXTRAID],
	cast([Extra_Element_ID] as int) [EXTRA_ELEMENT_ID],
	cast([ExtraTag] as nvarchar(4000)) [EXTRATAG],
	cast([ExtraQuantity] as nvarchar(4000)) [EXTRAQUANTITY],
	cast([FeeType_Credential_ID] as int) [FEETYPE_CREDENTIAL_ID] 
From stg.[Auct_FeeType_Credential_Extras_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType_Credential_Extras__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType_Credential_Extras__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential_Extras__dbt_tmp_temp_view"
    end


