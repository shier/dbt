{% snapshot Auct_BCBankAccountLookup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BCBankAccountLookupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BCBankAccountLookup_InterView]
{% endsnapshot %}