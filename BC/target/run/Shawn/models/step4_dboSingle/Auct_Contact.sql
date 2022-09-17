
  
  if object_id ('"dbo"."Auct_Contact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Contact__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Contact__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Contact__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Contact__dbt_tmp_temp_view as
    
Select
	cast([ContactID] as int) [CONTACTID],
	cast([Name] as varchar(500)) [NAME],
	cast([SalutationID] as int) [SALUTATIONID],
	cast([FirstName] as varchar(500)) [FIRSTNAME],
	cast([MiddleInitial] as varchar(500)) [MIDDLEINITIAL],
	cast([LastName] as varchar(500)) [LASTNAME],
	cast([ContactSuffixID] as int) [CONTACTSUFFIXID],
	cast([ShortNote] as varchar(8000)) [SHORTNOTE],
	cast([UsersID] as int) [USERSID],
	cast([ContactStatusID] as int) [CONTACTSTATUSID],
	cast([PreferredContactMethodID] as int) [PREFERREDCONTACTMETHODID],
	cast([PreferredContactTime] as varchar(64)) [PREFERREDCONTACTTIME],
	cast([EmailAddress] as nvarchar(320)) [EMAILADDRESS],
	cast([SourceID] as int) [SOURCEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DlNumber] as varchar(128)) [DLNUMBER],
	cast([DlState] as varchar(128)) [DLSTATE],
	cast([SSN] as varchar(128)) [SSN],
	cast([DOB] as varchar(128)) [DOB],
	cast([PassportNumber] as varchar(128)) [PASSPORTNUMBER],
	cast([PassportCountry] as varchar(128)) [PASSPORTCOUNTRY],
	cast([LegacyID] as int) [LEGACYID],
	cast([IDRef] as int) [IDREF],
	cast([Active] as bit) [ACTIVE],
	cast([PartnerName] as varchar(8000)) [PARTNERNAME],
	cast([HasAccountigLink] as int) [HASACCOUNTIGLINK],
	cast([AccountingID] as nvarchar(100)) [ACCOUNTINGID],
	cast([VendorAccountingID] as nvarchar(100)) [VENDORACCOUNTINGID],
	cast([CommonID] as int) [COMMONID],
	cast([BCCustomerID] as uniqueidentifier) [BCCUSTOMERID],
	cast([BCVendorID] as uniqueidentifier) [BCVENDORID] 
From stg.[Auct_Contact_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Contact__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Contact__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Contact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Contact__dbt_tmp_temp_view"
    end


