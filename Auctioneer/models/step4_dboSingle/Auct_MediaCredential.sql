{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaCredentialID] as int) [MEDIACREDENTIALID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([CredentialNumber] as nvarchar(4000)) [CREDENTIALNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaCredential_FinalView]