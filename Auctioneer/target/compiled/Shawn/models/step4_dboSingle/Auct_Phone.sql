
Select
	cast([PhoneID] as int) [PHONEID],
	cast([CountryID] as int) [COUNTRYID],
	cast([AreaCode] as varchar(5)) [AREACODE],
	cast([PhoneNumber] as nvarchar(40)) [PHONENUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE],
	cast([WebPhoneID] as uniqueidentifier) [WEBPHONEID] 
From stg.[Auct_Phone_FinalView]