
  
  if object_id ('"dbo"."Auct_Reporting__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reporting__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Reporting__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Reporting__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Reporting__dbt_tmp_temp_view as
    
Select
	cast([ReportingID] as int) [ReportingID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParentReportingID] as int) [ParentReportingID],
	cast([DataRetrievalClassName] as nvarchar(4000)) [DataRetrievalClassName],
	cast([IsActive] as bit) [IsActive],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder] 
From stg.[Auct_Reporting_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Reporting__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Reporting__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Reporting__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reporting__dbt_tmp_temp_view"
    end


