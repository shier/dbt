
  
  if object_id ('"dbo"."Auct_MultiMediaType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MultiMediaType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MultiMediaType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MultiMediaType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MultiMediaType__dbt_tmp_temp_view as
    
Select
	cast([MultiMediaTypeID] as int) [MULTIMEDIATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE],
	cast([Extension] as nvarchar(4000)) [EXTENSION] 
From stg.[Auct_MultiMediaType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MultiMediaType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MultiMediaType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MultiMediaType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MultiMediaType__dbt_tmp_temp_view"
    end


