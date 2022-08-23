
  
  if object_id ('"dbo"."Auct_AccountType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AccountType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AccountType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AccountType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AccountTypeID] as int) [Accounttypeid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [Updateeventid] 
From stg.[Auct_AccountType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AccountType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AccountType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AccountType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountType_FromStg__dbt_tmp_temp_view"
    end


