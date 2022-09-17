
  
  if object_id ('"dbo"."Auct_Users__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Users__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Users__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Users__dbt_tmp_temp_view as
    
Select
	cast([UsersID] as int) [USERSID],
	cast([Name] as varchar(500)) [NAME],
	cast([EmailAddress] as nvarchar(320)) [EMAILADDRESS],
	cast([Password] as varchar(128)) [PASSWORD],
	cast([QuestionID] as int) [QUESTIONID],
	cast([SecretAnswer] as varchar(128)) [SECRETANSWER],
	cast([LastLoggedin] as datetime) [LASTLOGGEDIN],
	cast([LastActivity] as datetime) [LASTACTIVITY],
	cast([Enabled] as char(1)) [ENABLED],
	cast([Reason] as varchar(8000)) [REASON],
	cast([WinLogon] as varchar(64)) [WINLOGON],
	cast([WinDomain] as varchar(64)) [WINDOMAIN],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([SMSNotificationNumber] as varchar(128)) [SMSNOTIFICATIONNUMBER],
	cast([SMSNotificationBit] as int) [SMSNOTIFICATIONBIT],
	cast([DepartmentID] as int) [DEPARTMENTID],
	cast([Phone1] as nvarchar(40)) [PHONE1],
	cast([Phone2] as nvarchar(40)) [PHONE2],
	cast([Title] as nvarchar(4000)) [TITLE],
	cast([DeScripton] as nvarchar(4000)) [DESCRIPTON],
	cast([Address] as nvarchar(256)) [ADDRESS],
	cast([City] as nvarchar(100)) [CITY],
	cast([State] as nvarchar(50)) [STATE],
	cast([PostalCode] as nvarchar(50)) [POSTALCODE] 
From stg.[Auct_Users_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Users__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Users__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Users__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users__dbt_tmp_temp_view"
    end


