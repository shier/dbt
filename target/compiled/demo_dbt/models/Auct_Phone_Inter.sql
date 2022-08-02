
Select
	PHONEID PhoneID,
	COUNTRYID CountryID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(WEBPHONEID as nvarchar(4000)) WebPhoneID,
	cast(AREACODE as nvarchar(4000)) AreaCode,
	cast(PHONENUMBER as nvarchar(4000)) PhoneNumber,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Phone_Raw