create view "stg"."AH_CreditCards_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([ExpirationMonth] as nvarchar(4000)) [ExpirationMonth],
	cast([ExpirationYear] as nvarchar(4000)) [ExpirationYear],
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
