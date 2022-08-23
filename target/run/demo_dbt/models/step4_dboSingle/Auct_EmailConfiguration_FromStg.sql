
  
  if object_id ('"dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Host] as nvarchar(4000)) [Host],
	cast([Domain] as nvarchar(4000)) [Domain],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Password] as nvarchar(4000)) [Password] 
From stg.[Auct_EmailConfiguration_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EmailConfiguration_FromStg__dbt_tmp_temp_view"
    end


