
  
  if object_id ('"dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([AppKey] as nvarchar(4000)) [AppKey],
	cast([AppSecret] as nvarchar(4000)) [AppSecret],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_SocialprovIDEr_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SocialprovIDEr_FromStg__dbt_tmp_temp_view"
    end


