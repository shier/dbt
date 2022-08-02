{{ config(materialized='view',schema='stg')}}
Select
	[PROPERTYID] [PropertyID],
	[CONSIGNMENTID] [ConsignmentID],
	[PROPERTYTYPEKEY] [PropertyTypeKey],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created],
	cast([PROPERTYSPACE] as nvarchar(4000)) [PropertySpace],
	[CURRENTPROPERTYTRANSACTIONID] [CurrentPropertyTransactionID],
	cast([GUIDSTAMP] as nvarchar(4000)) [GUIDStamp],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	[AUCTIONID] [AuctionID]
From stg.[Auct_Property_Raw]
