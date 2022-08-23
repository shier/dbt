
  
  if object_id ('"dbo"."Auct_TaxProcessor_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxProcessor_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxProcessor_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxProcessor_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxProcessor_FromStg__dbt_tmp_temp_view as
    
Select
	cast([NexusState] as nvarchar(4000)) [NexusState],
	cast([PurchaseState] as nvarchar(4000)) [PurchaseState],
	cast([ClassName] as nvarchar(4000)) [ClassName],
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID],
	cast([TaxruleDescription] as nvarchar(4000)) [TaxruleDescription],
	cast([AuctionTypeBit] as int) [AuctionTypeBit] 
From stg.[Auct_TaxProcessor_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxProcessor_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxProcessor_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxProcessor_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxProcessor_FromStg__dbt_tmp_temp_view"
    end


