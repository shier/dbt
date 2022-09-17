
  
  if object_id ('"dbo"."Auct_Buyer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Buyer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Buyer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Buyer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Buyer__dbt_tmp_temp_view as
    
Select
	cast([BuyerID] as int) [BUYERID],
	cast([ContactID] as int) [CONTACTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Buyer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Buyer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Buyer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Buyer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Buyer__dbt_tmp_temp_view"
    end


