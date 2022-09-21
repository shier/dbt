
  
  if object_id ('"dbo"."Auct_MailingList__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MailingList__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MailingList__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MailingList__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MailingList__dbt_tmp_temp_view as
    
Select
	cast([TransactionID] as nvarchar(4000)) [TRANSACTIONID],
	cast([FirstName] as nvarchar(4000)) [FIRSTNAME],
	cast([LastName] as nvarchar(4000)) [LASTNAME],
	cast([Middle] as nvarchar(4000)) [MIDDLE],
	cast([Address1] as nvarchar(4000)) [ADDRESS1],
	cast([Address2] as nvarchar(4000)) [ADDRESS2],
	cast([City] as nvarchar(4000)) [CITY],
	cast([StateProvince] as nvarchar(4000)) [STATEPROVINCE],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE],
	cast([CountryID] as int) [COUNTRYID],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([EventID] as int) [EVENTID],
	cast([Careof] as nvarchar(4000)) [CAREOF],
	cast([MailListID] as int) [MAILLISTID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_MailingList_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MailingList__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MailingList__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MailingList__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MailingList__dbt_tmp_temp_view"
    end


