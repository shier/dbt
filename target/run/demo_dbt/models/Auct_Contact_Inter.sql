
  
  if object_id ('"stg"."Auct_Contact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Contact_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Contact_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Contact_Inter__dbt_tmp_temp_view as
    
Select
	cast(BCVENDORID as nvarchar(4000)) BCVendorID,
	cast(NAME as nvarchar(4000)) Name,
	cast(FIRSTNAME as nvarchar(4000)) FirstName,
	cast(MIDDLEINITIAL as nvarchar(4000)) MiddleInitial,
	cast(LASTNAME as nvarchar(4000)) LastName,
	cast(SHORTNOTE as nvarchar(4000)) ShortNote,
	cast(PASSPORTNUMBER as nvarchar(4000)) PassportNumber,
	cast(PASSPORTCOUNTRY as nvarchar(4000)) PassportCountry,
	cast(PARTNERNAME as nvarchar(4000)) PartnerName,
	cast(ACCOUNTINGID as nvarchar(4000)) AccountingID,
	cast(VENDORACCOUNTINGID as nvarchar(4000)) VendorAccountingID,
	cast(BCCUSTOMERID as nvarchar(4000)) BCCustomerID,
	cast(PREFERREDCONTACTTIME as nvarchar(4000)) PreferredContactTime,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	cast(DLNUMBER as nvarchar(4000)) DlNumber,
	cast(DLSTATE as nvarchar(4000)) DlState,
	cast(SSN as nvarchar(4000)) SSN,
	cast(DOB as nvarchar(4000)) DOB,
	COMMONID CommonID,
	SOURCEID SourceID,
	UPDATEEVENTID UpdateEventID,
	LEGACYID LegacyID,
	IDREF IDRef,
	ACTIVE Active,
	HASACCOUNTIGLINK HasAccountigLink,
	CONTACTID ContactID,
	SALUTATIONID SalutationID,
	CONTACTSUFFIXID ContactSuffixID,
	USERSID UsersID,
	CONTACTSTATUSID ContactStatusID,
	PREFERREDCONTACTMETHODID PreferredContactMethodID,
	CREATED Created
From Auct_Contact_Raw
    ');

  CREATE TABLE "stg"."Auct_Contact_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Contact_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Contact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Inter__dbt_tmp_temp_view"
    end


