
  
  if object_id ('"dbo"."Auct_TaxProcessor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxProcessor__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxProcessor__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxProcessor__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxProcessor__dbt_tmp_temp_view as
    
Select
	cast([NexusState] as nvarchar(4000)) [NEXUSSTATE],
	cast([PurchaseState] as nvarchar(4000)) [PURCHASESTATE],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID],
	cast([TaxruleDescription] as nvarchar(4000)) [TAXRULEDESCRIPTION],
	cast([AuctionTypeBit] as int) [AUCTIONTYPEBIT] 
From stg.[Auct_TaxProcessor_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxProcessor__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxProcessor__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxProcessor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxProcessor__dbt_tmp_temp_view"
    end


