
  
  if object_id ('"dbo"."Auct_ConnectionString__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConnectionString__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConnectionString__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConnectionString__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConnectionString__dbt_tmp_temp_view as
    
Select
	cast([TypeName] as nvarchar(4000)) [TYPENAME],
	cast([ConnectionString] as nvarchar(4000)) [CONNECTIONSTRING],
	cast([Environment] as nvarchar(4000)) [ENVIRONMENT] 
From stg.[Auct_ConnectionString_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConnectionString__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConnectionString__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConnectionString__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConnectionString__dbt_tmp_temp_view"
    end


