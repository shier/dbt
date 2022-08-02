
  
  if object_id ('"stg"."Auct_Insurance_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Insurance_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Insurance_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Insurance_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Insurance_Inter__dbt_tmp_temp_view as
    
Select
	[INSURANCEID] [InsuranceID],
	cast([COMPANYNAME] as nvarchar(4000)) [CompanyName],
	[PHONEID] [PhoneID],
	cast([POLICYNUMBER] as nvarchar(4000)) [PolicyNumber],
	cast([AGENTNAME] as nvarchar(4000)) [AgentName],
	[EXPIRATIONDATE] [ExpirationDate],
	[CUSTOMERACCOUNTID] [CustomerAccountID]
From stg.[Auct_Insurance_Raw]
    ');

  CREATE TABLE "stg"."Auct_Insurance_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Insurance_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Insurance_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Insurance_Inter__dbt_tmp_temp_view"
    end


