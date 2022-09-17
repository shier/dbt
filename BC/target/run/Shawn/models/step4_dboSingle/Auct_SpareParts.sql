
  
  if object_id ('"dbo"."Auct_SpareParts__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpareParts__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SpareParts__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SpareParts__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SpareParts__dbt_tmp_temp_view as
    
Select
	cast([SparePartsID] as int) [SPAREPARTSID],
	cast([DriverInFormationID] as int) [DRIVERINFORMATIONID],
	cast([SparePartsTypeID] as int) [SPAREPARTSTYPEID],
	cast([BarcodeID] as nvarchar(4000)) [BARCODEID],
	cast([PartsDescription] as nvarchar(4000)) [PARTSDESCRIPTION],
	cast([InActive] as nvarchar(4000)) [INACTIVE],
	cast([InActiveUpdateEventID] as int) [INACTIVEUPDATEEVENTID],
	cast([CheckOutText] as nvarchar(4000)) [CHECKOUTTEXT],
	cast([CheckOutUpdateEventID] as int) [CHECKOUTUPDATEEVENTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([SpaceNumber] as nvarchar(4000)) [SPACENUMBER] 
From stg.[Auct_SpareParts_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SpareParts__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SpareParts__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SpareParts__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpareParts__dbt_tmp_temp_view"
    end


