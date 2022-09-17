
  
  if object_id ('"dbo"."Auct_Item__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Item__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Item__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Item__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Item__dbt_tmp_temp_view as
    
Select
	cast([EstimatedValue] as numeric(19,4)) [ESTIMATEDVALUE],
	cast([ItemID] as int) [ITEMID],
	cast([Descr] as nvarchar(4000)) [DESCR],
	cast([ItemTypeID] as int) [ITEMTYPEID],
	cast([ItemStatusID] as int) [ITEMSTATUSID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID] 
From stg.[Auct_Item_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Item__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Item__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Item__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Item__dbt_tmp_temp_view"
    end


