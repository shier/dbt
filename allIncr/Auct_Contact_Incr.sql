{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ContactID] as varchar), [Name], Cast([SalutationID] as varchar), [FirstName], [MiddleInitial], [LastName], Cast([ContactSuffixID] as varchar), [ShortNote], Cast([UsersID] as varchar), Cast([ContactStatusID] as varchar), Cast([PreferredContactMethodID] as varchar), [PreferredContactTime], [EmailAddress], Cast([SourceID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [DlNumber], [DlState], [SSN], [DOB], [PassportNumber], [PassportCountry], Cast([LegacyID] as varchar), Cast([IDRef] as varchar), Cast([Active] as varchar), [PartnerName], Cast([HasAccountigLink] as varchar), [AccountingID], [VendorAccountingID], Cast([CommonID] as varchar), [BCCustomerID], [BCVendorID])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Contact_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
