{% snapshot Auct_Payment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PaymentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Payment_InterView]
{% endsnapshot %}