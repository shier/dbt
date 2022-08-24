{% snapshot Auct_BankAccountStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BankAccountStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BankAccountStatus_InterView]
{% endsnapshot %}