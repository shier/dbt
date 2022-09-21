
  
  if object_id ('"dbo"."Auct_NavisionSalesLine__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionSalesLine__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionSalesLine__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionSalesLine__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionSalesLine__dbt_tmp_temp_view as
    
Select
	cast([DocumentType] as int) [DOCUMENTTYPE],
	cast([AuctionDocumentno] as nvarchar(4000)) [AUCTIONDOCUMENTNO],
	cast([Lineno] as int) [LINENO],
	cast([Type] as int) [TYPE],
	cast([No] as nvarchar(4000)) [NO],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Description2] as nvarchar(4000)) [DESCRIPTION2],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GLOBALDIMENSION1CODE],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GLOBALDIMENSION2CODE],
	cast([ShortCutDimension4Code] as nvarchar(4000)) [SHORTCUTDIMENSION4CODE],
	cast([ShortCutDimension8Code] as nvarchar(4000)) [SHORTCUTDIMENSION8CODE],
	cast([ShortCutDimension3Code] as nvarchar(4000)) [SHORTCUTDIMENSION3CODE],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([WrotetoNavision] as int) [WROTETONAVISION],
	cast([ShortCutDimension5Code] as nvarchar(4000)) [SHORTCUTDIMENSION5CODE],
	cast([Quantity] as numeric(19,4)) [QUANTITY],
	cast([UnitPriceexclTax] as numeric(19,4)) [UNITPRICEEXCLTAX],
	cast([Unitcost] as numeric(19,4)) [UNITCOST] 
From stg.[Auct_NavisionSalesLine_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionSalesLine__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionSalesLine__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionSalesLine__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionSalesLine__dbt_tmp_temp_view"
    end


