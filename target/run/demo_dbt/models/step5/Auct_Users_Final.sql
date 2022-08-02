
  
  if object_id ('"dbo"."Auct_Users_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Users_Final__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Users_Final__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Users_Final__dbt_tmp_temp_view as
    
Select
	[UsersID],[Name],[EmailAddress],[Password],[QuestionID],[SecretAnswer],[LastLoggedin],[LastActivity],[Enabled],[Reason],[WinLogon],[WinDomain],[Created],[UpdateEventID],[SMSNotificationNumber],[SMSNotificationBit],[DepartmentID],[Phone1],[Phone2],[Title],[DeScripton],[Address],[City],[State],[PostalCode] 
From stg.[Auct_Users_Final]
    ');

  CREATE TABLE "dbo"."Auct_Users_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Users_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Users_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users_Final__dbt_tmp_temp_view"
    end


