
  
  if object_id ('"dbo"."Auct_GLInfoTax_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfoTax_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_GLInfoTax_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_GLInfoTax_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_GLInfoTax_FromStg__dbt_tmp_temp_view as
    
Select
	cast([GLInfoTaxID] as int) [GLInfoTaxID],
	cast([GLInfoName] as nvarchar(4000)) [GLInfoName],
	cast([AuctionBusinessUnit] as nvarchar(4000)) [AuctionBusinessUnit],
	cast([TaxTypeID] as int) [TaxTypeID] 
From stg.[Auct_GLInfoTax_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_GLInfoTax_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_GLInfoTax_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_GLInfoTax_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfoTax_FromStg__dbt_tmp_temp_view"
    end


