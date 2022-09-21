
  
  if object_id ('"dbo"."Auct_ConsignmentLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentLog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentLog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentLog__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentLog__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentLogID] as int) [CONSIGNMENTLOGID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([NoteType] as nvarchar(4000)) [NOTETYPE],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([UsersID] as int) [USERSID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID] 
From stg.[Auct_ConsignmentLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentLog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentLog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentLog__dbt_tmp_temp_view"
    end


