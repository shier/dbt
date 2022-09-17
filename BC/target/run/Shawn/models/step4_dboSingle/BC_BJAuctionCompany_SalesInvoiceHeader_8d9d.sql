
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view as
    
Select
	cast([WCI-AuctionID] as nvarchar(4000)) [WCI-AuctionID],
	cast([No_] as nvarchar(4000)) [No_],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([WCI-LotNo_] as nvarchar(4000)) [WCI-LotNo_],
	cast([WCI-AuctionDocumentNo_] as nvarchar(4000)) [WCI-AuctionDocumentNo_],
	cast([WCI-ImportedDocument] as int) [WCI-ImportedDocument] 
From stg.[BC_BJAuctionCompany_SalesInvoiceHeader_8d9d_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_8d9d__dbt_tmp_temp_view"
    end


