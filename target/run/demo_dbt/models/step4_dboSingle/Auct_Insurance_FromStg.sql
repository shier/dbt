
  
  if object_id ('"dbo"."Auct_Insurance_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Insurance_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Insurance_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Insurance_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Insurance_FromStg__dbt_tmp_temp_view as
    
Select
	cast([InsuranceID] as int) [InsuranceID],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([PhoneID] as int) [PhoneID],
	cast([PolicyNumber] as nvarchar(4000)) [PolicyNumber],
	cast([AgentName] as nvarchar(4000)) [AgentName],
	cast([ExpirationDate] as DATETIME) [ExpirationDate],
	cast([CustomerAccountID] as int) [CustomerAccountID] 
From stg.[Auct_Insurance_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Insurance_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Insurance_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Insurance_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Insurance_FromStg__dbt_tmp_temp_view"
    end


