
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CountryID] as varchar), Cast([EventID] as varchar), Cast([Active] as varchar), Cast([MailListUploadID] as varchar), Cast([Created] as varchar), [Address2], [City], [StateProvince], [County], [Careof], [PostalCode], [ErrorMessage], [TransactionID], [FirstName], [LastName], [Middle], [Address1])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Upload_Inter]
	)
Select * From hashData
