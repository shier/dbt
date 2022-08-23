
  
  if object_id ('"dbo"."CC_States_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_States_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_States_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_States_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_States_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([StateCode] as nvarchar(4000)) [StateCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([StateNameslug] as nvarchar(4000)) [StateNameslug],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([CountryID] as int) [CountryID] 
From stg.[CC_States_FinalView]
    ');

  CREATE TABLE "dbo"."CC_States_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_States_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_States_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_States_FromStg__dbt_tmp_temp_view"
    end


