
Select
	cast([AddressID] as int) [ADDRESSID],
	cast([Address1] as nvarchar(256)) [ADDRESS1],
	cast([Address2] as nvarchar(256)) [ADDRESS2],
	cast([City] as nvarchar(100)) [CITY],
	cast([StateProvince] as nvarchar(50)) [STATEPROVINCE],
	cast([PostalCode] as nvarchar(50)) [POSTALCODE],
	cast([Country] as int) [COUNTRY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Careof] as varchar(100)) [CAREOF],
	cast([Active] as bit) [ACTIVE],
	cast([County] as nvarchar(100)) [COUNTY],
	cast([WeBaddressID] as uniqueidentifier) [WEBADDRESSID] 
From stg.[Auct_Address_FinalView]