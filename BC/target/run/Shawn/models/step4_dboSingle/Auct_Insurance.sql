
  
  if object_id ('"dbo"."Auct_Insurance__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Insurance__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Insurance__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Insurance__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Insurance__dbt_tmp_temp_view as
    
Select
	cast([InsuranceID] as int) [INSURANCEID],
	cast([CompanyName] as nvarchar(4000)) [COMPANYNAME],
	cast([PhoneID] as int) [PHONEID],
	cast([PolicyNumber] as nvarchar(4000)) [POLICYNUMBER],
	cast([AgentName] as nvarchar(4000)) [AGENTNAME],
	cast([ExpirationDate] as DATETIME) [EXPIRATIONDATE],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID] 
From stg.[Auct_Insurance_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Insurance__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Insurance__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Insurance__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Insurance__dbt_tmp_temp_view"
    end


