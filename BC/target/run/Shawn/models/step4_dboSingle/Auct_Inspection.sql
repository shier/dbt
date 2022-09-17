
  
  if object_id ('"dbo"."Auct_Inspection__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Inspection__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Inspection__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Inspection__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Inspection__dbt_tmp_temp_view as
    
Select
	cast([InspectionID] as int) [INSPECTIONID],
	cast([CarID] as int) [CARID],
	cast([OwnerContactID] as int) [OWNERCONTACTID],
	cast([PerFormedByContactID] as int) [PERFORMEDBYCONTACTID],
	cast([Results] as nvarchar(4000)) [RESULTS],
	cast([DateperFormed] as DATETIME) [DATEPERFORMED],
	cast([DateRequested] as DATETIME) [DATEREQUESTED],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Inspection_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Inspection__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Inspection__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Inspection__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Inspection__dbt_tmp_temp_view"
    end


