
  
  if object_id ('"dbo"."Auct_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysDiagrams__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysDiagrams__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysDiagrams__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysDiagrams__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Principal_ID] as int) [PrincIPal_ID],
	cast([Diagram_ID] as int) [Diagram_ID],
	cast([Version] as int) [Version],
	cast([Definition] as varbinary(8000)) [Definition] 
From stg.[Auct_SysDiagrams_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysDiagrams__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysDiagrams__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysDiagrams__dbt_tmp_temp_view"
    end


