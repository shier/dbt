
  
  if object_id ('"dbo"."Auct_Report_Form__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Report_Form__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Report_Form__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Report_Form__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Report_Form__dbt_tmp_temp_view as
    
Select
	cast([ReportFormID] as int) [REPORTFORMID],
	cast([ReportID] as int) [REPORTID],
	cast([FormID] as int) [FORMID],
	cast([EventID] as nvarchar(4000)) [EVENTID],
	cast([PackageOrder] as int) [PACKAGEORDER],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Report_Form_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Report_Form__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Report_Form__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Report_Form__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Report_Form__dbt_tmp_temp_view"
    end


