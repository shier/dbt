{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ExpirationMonth] as int) [ExpirationMonth],
	cast([ExpirationYear] as int) [ExpirationYear],
	cast([CreditCardTypeID] as int) [CreditCardTypeID],
	cast([UserID] as int) [UserID],
	cast([AddressID] as int) [AddressID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourdigits] as nvarchar(4000)) [LastFourdigits],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[AH_CreditCards_FinalView]