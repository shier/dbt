{{ config(materialized='view',schema='stg')}}
Select
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([email] as nvarchar(4000)) [Email],
	cast([phone] as nvarchar(4000)) [Phone],
	cast([address] as nvarchar(4000)) [Address],
	cast([address2] as nvarchar(4000)) [Address2],
	cast([city] as nvarchar(4000)) [City],
	cast([state] as nvarchar(4000)) [State],
	cast([zipcode] as nvarchar(4000)) [ZipCode],
	cast([country] as nvarchar(4000)) [Country],
	cast([OptIn] as nvarchar(4000)) [Optin],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([Source] as nvarchar(4000)) [Source]
From stg.[Auct_2018PurchaserList_tim_Raw]
