
  
  if object_id ('"dbo"."CC_SysDiagrams_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SysDiagrams_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SysDiagrams_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SysDiagrams_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SysDiagrams_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Principal_ID] as int) [Principal_ID],
	cast([Diagram_ID] as int) [Diagram_ID],
	cast([Version] as int) [Version],
	cast([Definition] as varbinary(8000)) [Definition] 
From stg.[CC_SysDiagrams_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SysDiagrams_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SysDiagrams_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SysDiagrams_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SysDiagrams_FromStg__dbt_tmp_temp_view"
    end


