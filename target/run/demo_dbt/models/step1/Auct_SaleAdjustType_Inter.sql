
  
  if object_id ('"stg"."Auct_SaleAdjustType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleAdjustType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleAdjustType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleAdjustType_Inter__dbt_tmp_temp_view as
    
Select
	[SALEADJUSTTYPEID] [SaleAdjustTypeID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([PROCESSORNAME] as nvarchar(4000)) [ProcessorName],
	cast([HTMLDESCRIPTION] as nvarchar(4000)) [HtmlDescription],
	cast([CLASSNAME] as nvarchar(4000)) [ClassName]
From stg.[Auct_SaleAdjustType_Raw]
    ');

  CREATE TABLE "stg"."Auct_SaleAdjustType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleAdjustType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleAdjustType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustType_Inter__dbt_tmp_temp_view"
    end


