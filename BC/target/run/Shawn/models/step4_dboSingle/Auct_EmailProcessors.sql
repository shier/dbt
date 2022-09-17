
  
  if object_id ('"dbo"."Auct_EmailProcessors__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailProcessors__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_EmailProcessors__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_EmailProcessors__dbt_tmp"
    end


   EXEC('create view dbo.Auct_EmailProcessors__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([EmailProcessorID] as int) [EMAILPROCESSORID],
	cast([ProcessorClass] as nvarchar(4000)) [PROCESSORCLASS] 
From stg.[Auct_EmailProcessors_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_EmailProcessors__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_EmailProcessors__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_EmailProcessors__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailProcessors__dbt_tmp_temp_view"
    end


