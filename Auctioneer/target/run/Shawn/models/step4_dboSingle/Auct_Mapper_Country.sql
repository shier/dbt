
  
  if object_id ('"dbo"."Auct_Mapper_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mapper_Country__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Mapper_Country__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Mapper_Country__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Mapper_Country__dbt_tmp_temp_view as
    
Select
	cast([MaptoID] as int) [MAPTOID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_Mapper_Country_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Mapper_Country__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Mapper_Country__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Mapper_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mapper_Country__dbt_tmp_temp_view"
    end


