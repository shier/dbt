
Select
	cast([CityID] as int) [CITYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([StateAbbreviation] as nvarchar(4000)) [STATEABBREVIATION],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE] 
From stg.[Auct_City_FinalView]