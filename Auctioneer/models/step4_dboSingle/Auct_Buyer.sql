{{ config(materialized='table',schema='dbo')}}
Select
	cast([BuyerID] as int) [BUYERID],
	cast([ContactID] as int) [CONTACTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Buyer_FinalView]