
With hashData as (
		Select
			HASHBYTES('MD5', concat(BCVendorID, Name, FirstName, MiddleInitial, LastName, ShortNote, PassportNumber, PassportCountry, PartnerName, AccountingID, VendorAccountingID, BCCustomerID, PreferredContactTime, EmailAddress, DlNumber, DlState, SSN, DOB, Cast(CommonID as varchar), Cast(SourceID as varchar), Cast(UpdateEventID as varchar), Cast(LegacyID as varchar), Cast(IDRef as varchar), Cast(Active as varchar), Cast(HasAccountigLink as varchar), Cast(SalutationID as varchar), Cast(ContactSuffixID as varchar), Cast(UsersID as varchar), Cast(ContactStatusID as varchar), Cast(PreferredContactMethodID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Contact_Inter]
	)
Select * From hashData
