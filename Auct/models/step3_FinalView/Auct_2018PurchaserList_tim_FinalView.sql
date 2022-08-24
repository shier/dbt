{{ config(materialized='view',schema='stg')}}
Select
	[First_Name],[Last_Name],[Email],[Phone],[Address],[Address2],[City],[State],[ZipCode],[Country],[Optin],[AuctionID],[Source] 
From [Auct_2018PurchaserList_tim_Incr]