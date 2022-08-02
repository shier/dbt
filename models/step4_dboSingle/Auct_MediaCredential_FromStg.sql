{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaCredentialID] as int) [MediaCredentialID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([CredentialNumber] as nvarchar(4000)) [CredentialNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaCredential_FinalView]