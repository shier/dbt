{% snapshot Auct_BCBankAccount_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BCBankAccountID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BCBankAccount_InterView]
{% endsnapshot %}