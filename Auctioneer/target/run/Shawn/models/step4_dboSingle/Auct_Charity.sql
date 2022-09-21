
  
  if object_id ('"dbo"."Auct_Charity__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Charity__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Charity__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Charity__dbt_tmp_temp_view as
    
Select
	cast([CharityID] as int) [CHARITYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Active] as int) [ACTIVE],
	cast([WebSiteURL] as nvarchar(4000)) [WEBSITEURL],
	cast([LogoURL] as nvarchar(4000)) [LOGOURL] 
From stg.[Auct_Charity_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Charity__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Charity__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Charity__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity__dbt_tmp_temp_view"
    end


