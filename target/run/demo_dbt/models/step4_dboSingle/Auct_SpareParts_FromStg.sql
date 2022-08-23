
  
  if object_id ('"dbo"."Auct_SpareParts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpareParts_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SpareParts_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SpareParts_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SpareParts_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SparePartsID] as int) [SparepartsID],
	cast([DriverInFormationID] as int) [DriverInFormationID],
	cast([SparePartsTypeID] as int) [SparepartsTypeID],
	cast([BarcodeID] as nvarchar(4000)) [BarcodeID],
	cast([PartsDescription] as nvarchar(4000)) [PartsDescription],
	cast([InActive] as nvarchar(4000)) [InActive],
	cast([InActiveUpdateEventID] as int) [InActiveUpdateEventID],
	cast([CheckOutText] as nvarchar(4000)) [CheckOutText],
	cast([CheckOutUpdateEventID] as int) [CheckOutUpdateEventID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([SpaceNumber] as nvarchar(4000)) [SpaceNumber] 
From stg.[Auct_SpareParts_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SpareParts_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SpareParts_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SpareParts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpareParts_FromStg__dbt_tmp_temp_view"
    end


