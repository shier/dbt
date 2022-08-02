
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view as
    
Select
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	[LNENO] [Lneno],
	[TYPE] [Type],
	cast([NO] as nvarchar(4000)) [No],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([DESCRIPTION2] as nvarchar(4000)) [Description2],
	[QUANTITY] [Quantity],
	[DIRECTUNITCOSTEXCLTAX] [DirectUnitcostexclTax],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	cast([GLOBALDIM1CODE] as nvarchar(4000)) [Globaldim1Code],
	cast([GLOBALDIM2CODE] as nvarchar(4000)) [Globaldim2Code],
	cast([SHORTCUTDIM4CODE] as nvarchar(4000)) [ShortCutdim4Code],
	cast([SHORTCUTDIM5CODE] as nvarchar(4000)) [ShortCutdim5Code],
	cast([SHORTCUTDIM8CODE] as nvarchar(4000)) [ShortCutdim8Code],
	cast([SHORTCUTDIM3CODE] as nvarchar(4000)) [ShortCutdim3Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision]
From stg.[Auct_NavisionPurchaseLine_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Inter__dbt_tmp_temp_view"
    end


