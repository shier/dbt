
Select
	cast([ID] as int) [Id],
	cast([ExpirationMonth] as nvarchar(4000)) [ExpirationMonth],
	cast([ExpirationYear] as nvarchar(4000)) [ExpirationYear],
	cast([CreditCardTypeID] as int) [CreditCardTypeId],
	cast([UserID] as int) [UserId],
	cast([AddressID] as int) [AddressId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourdigits] as nvarchar(4000)) [LastFourDigits],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[AH_CreditCards_FinalView]