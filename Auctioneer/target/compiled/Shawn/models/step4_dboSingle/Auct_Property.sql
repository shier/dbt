
Select
	cast([PropertyID] as int) [PROPERTYID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([PropertyTypeKey] as int) [PROPERTYTYPEKEY],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as datetime) [CREATED],
	cast([PropertySpace] as nvarchar(4000)) [PROPERTYSPACE],
	cast([CurrentPropertyTransactionID] as int) [CURRENTPROPERTYTRANSACTIONID],
	cast([GUIDStamp] as nvarchar(4000)) [GUIDSTAMP],
	cast([Active] as nvarchar(4000)) [ACTIVE],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_Property_FinalView]