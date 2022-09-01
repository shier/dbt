{% snapshot Auct_CustomerAccountStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CustomerAccountStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CustomerAccountStatus_InterView]
{% endsnapshot %}