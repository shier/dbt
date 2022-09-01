
  
  if object_id ('"dbo"."Auct_AcceptionApplicationsBits__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AcceptionApplicationsBits__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AcceptionApplicationsBits__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AcceptionApplicationsBits__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AcceptionApplicationsBits__dbt_tmp_temp_view as
    
Select
	cast([AcceptionApplicationsBit] as int) [AcceptionApplicationsBIT],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_AcceptionApplicationsBits_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AcceptionApplicationsBits__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AcceptionApplicationsBits__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AcceptionApplicationsBits__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AcceptionApplicationsBits__dbt_tmp_temp_view"
    end


