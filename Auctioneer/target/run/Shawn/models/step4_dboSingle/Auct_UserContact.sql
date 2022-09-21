
  
  if object_id ('"dbo"."Auct_UserContact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserContact__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserContact__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserContact__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserContact__dbt_tmp_temp_view as
    
Select
	cast([UserContactID] as int) [USERCONTACTID],
	cast([ContactID] as int) [CONTACTID],
	cast([UserContactTypeID] as int) [USERCONTACTTYPEID],
	cast([UsersID] as int) [USERSID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UserContact_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserContact__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserContact__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserContact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserContact__dbt_tmp_temp_view"
    end


