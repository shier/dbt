
  
  if object_id ('"dbo"."Auct_MyTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MyTable__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MyTable__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MyTable__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MyTable__dbt_tmp_temp_view as
    
Select
	cast([MyTableID] as int) [myTableId],
	cast([Code] as nvarchar(4000)) [code],
	cast([Description] as nvarchar(4000)) [description] 
From stg.[Auct_MyTable_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MyTable__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MyTable__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MyTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MyTable__dbt_tmp_temp_view"
    end


