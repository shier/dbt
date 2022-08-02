{% snapshot Auct_BankAccount_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BankAccountID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BankAccount_InterView]
{% endsnapshot %}