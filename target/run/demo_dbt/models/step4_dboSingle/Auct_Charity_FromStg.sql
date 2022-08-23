
  
  if object_id ('"dbo"."Auct_Charity_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Charity_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Charity_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Charity_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CharityID] as int) [CharityID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Active] as int) [Active],
	cast([WebSiteURL] as nvarchar(4000)) [WebSiteURL],
	cast([LogoURL] as nvarchar(4000)) [LogoURL] 
From stg.[Auct_Charity_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Charity_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Charity_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Charity_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity_FromStg__dbt_tmp_temp_view"
    end


