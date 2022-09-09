{% snapshot Auct_PaymentOverride_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PaymentOverride_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PaymentOverride_InterView]
{% endsnapshot %}