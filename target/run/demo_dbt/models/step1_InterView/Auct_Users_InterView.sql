create view "stg"."Auct_Users_InterView__dbt_tmp" as
    
Select
	[USERSID] [UsersID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	cast([PASSWORD] as nvarchar(4000)) [Password],
	[QUESTIONID] [QuestionID],
	cast([SECRETANSWER] as nvarchar(4000)) [SecretAnswer],
	[LASTLOGGEDIN] [LastLoggedin],
	[LASTACTIVITY] [LastActivity],
	cast([ENABLED] as nvarchar(4000)) [Enabled],
	cast([REASON] as nvarchar(4000)) [Reason],
	cast([WINLOGON] as nvarchar(4000)) [WinLogon],
	cast([WINDOMAIN] as nvarchar(4000)) [WinDomain],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([SMSNOTIFICATIONNUMBER] as nvarchar(4000)) [SMSNotificationNumber],
	[SMSNOTIFICATIONBIT] [SMSNotificationBit],
	[DEPARTMENTID] [DepartmentID],
	cast([PHONE1] as nvarchar(4000)) [Phone1],
	cast([PHONE2] as nvarchar(4000)) [Phone2],
	cast([TITLE] as nvarchar(4000)) [Title],
	cast([DESCRIPTON] as nvarchar(4000)) [DeScripton],
	cast([ADDRESS] as nvarchar(4000)) [Address],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATE] as nvarchar(4000)) [State],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode]
From stg.[Auct_Users_Raw]
