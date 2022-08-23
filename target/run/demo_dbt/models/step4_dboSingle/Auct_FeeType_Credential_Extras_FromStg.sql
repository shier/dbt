
  
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view as
    
Select
	cast([FeeTypeCredentialExtraID] as int) [FeeTypeCredentialExtraID],
	cast([Active] as bit) [Active],
	cast([Extra_Element_ID] as int) [Extra_Element_ID],
	cast([ExtraTag] as nvarchar(4000)) [ExtraTag],
	cast([ExtraQuantity] as nvarchar(4000)) [ExtraQuantity],
	cast([FeeType_Credential_ID] as int) [FeeType_Credential_ID] 
From stg.[Auct_FeeType_Credential_Extras_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Credential_Extras_FromStg__dbt_tmp_temp_view"
    end


