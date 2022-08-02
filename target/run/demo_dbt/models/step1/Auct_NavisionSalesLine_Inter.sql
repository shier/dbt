
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesLine_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesLine_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view as
    
Select
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	[LINENO] [Lineno],
	[TYPE] [Type],
	cast([NO] as nvarchar(4000)) [No],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([DESCRIPTION2] as nvarchar(4000)) [Description2],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	cast([GLOBALDIMENSION1CODE] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GLOBALDIMENSION2CODE] as nvarchar(4000)) [GlobalDimension2Code],
	cast([SHORTCUTDIMENSION4CODE] as nvarchar(4000)) [ShortCutDimension4Code],
	cast([SHORTCUTDIMENSION8CODE] as nvarchar(4000)) [ShortCutDimension8Code],
	cast([SHORTCUTDIMENSION3CODE] as nvarchar(4000)) [ShortCutDimension3Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision],
	cast([SHORTCUTDIMENSION5CODE] as nvarchar(4000)) [ShortCutDimension5Code],
	[QUANTITY] [Quantity],
	[UNITPRICEEXCLTAX] [UnitPriceexclTax],
	[UNITCOST] [Unitcost]
From stg.[Auct_NavisionSalesLine_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavisionSalesLine_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Inter__dbt_tmp_temp_view"
    end


