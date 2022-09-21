
  
  if object_id ('"dbo"."Auct_EmailConfiguration__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailConfiguration__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_EmailConfiguration__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_EmailConfiguration__dbt_tmp"
    end


   EXEC('create view dbo.Auct_EmailConfiguration__dbt_tmp_temp_view as
    
Select
	cast([Host] as nvarchar(4000)) [HOST],
	cast([Domain] as nvarchar(4000)) [DOMAIN],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([Password] as nvarchar(4000)) [PASSWORD] 
From stg.[Auct_EmailConfiguration_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_EmailConfiguration__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_EmailConfiguration__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_EmailConfiguration__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailConfiguration__dbt_tmp_temp_view"
    end


