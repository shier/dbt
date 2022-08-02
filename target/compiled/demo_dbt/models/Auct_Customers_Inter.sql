
Select
	CONTACTTYPEID ContactTypeID,
	CONTACTID ContactID,
	CUSTOMERACCOUNTID CustomerAccountID,
	cast(NAME as nvarchar(4000)) Name,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	cast(Type as nvarchar(4000)) Type
From Auct_Customers_Raw