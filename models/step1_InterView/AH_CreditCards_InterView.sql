{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[ExpirationMonth] [ExpirationMonth],
	[ExpirationYear] [ExpirationYear],
	[CreditCardTypeId] [CreditCardTypeID],
	[UserId] [UserID],
	[AddressId] [AddressID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourDigits] as nvarchar(4000)) [LastFourdigits],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[AH_CreditCards_Raw]
