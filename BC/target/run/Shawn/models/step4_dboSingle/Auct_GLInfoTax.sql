
  
  if object_id ('"dbo"."Auct_GLInfoTax__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfoTax__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_GLInfoTax__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_GLInfoTax__dbt_tmp"
    end


   EXEC('create view dbo.Auct_GLInfoTax__dbt_tmp_temp_view as
    
Select
	cast([GLInfoName] as nvarchar(4000)) [GLINFONAME],
	cast([AuctionBusinessUnit] as nvarchar(4000)) [AUCTIONBUSINESSUNIT],
	cast([TaxTypeID] as int) [TAXTYPEID],
	cast([GLInfoTaxID] as int) [GLINFOTAXID] 
From stg.[Auct_GLInfoTax_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_GLInfoTax__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_GLInfoTax__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_GLInfoTax__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfoTax__dbt_tmp_temp_view"
    end


