
  
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
	cast([ItemID] as int) [ItemID],
	cast([EstimatedValue] as numeric(19,4)) [EstimatedValue],
	cast([Descr] as nvarchar(4000)) [Description],
	cast([ItemTypeID] as int) [ItemTypeID],
	cast([ItemStatusID] as int) [ItemStatusID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ItemTaxTypeID] as int) [ItemtaxTypeID] 
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


