{% snapshot Auct_AccountType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AccountTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AccountType_InterView]
{% endsnapshot %}