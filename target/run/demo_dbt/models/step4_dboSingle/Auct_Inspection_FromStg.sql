
  
  if object_id ('"dbo"."Auct_Inspection_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Inspection_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Inspection_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Inspection_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Inspection_FromStg__dbt_tmp_temp_view as
    
Select
	cast([InspectionID] as int) [InspectionID],
	cast([CarID] as int) [CarID],
	cast([OwnerContactID] as int) [OwnerContactID],
	cast([PerFormedByContactID] as int) [PerFormedByContactID],
	cast([Results] as nvarchar(4000)) [Results],
	cast([DateperFormed] as DATETIME) [DateperFormed],
	cast([DateRequested] as DATETIME) [DateRequested],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Inspection_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Inspection_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Inspection_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Inspection_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Inspection_FromStg__dbt_tmp_temp_view"
    end


