{% snapshot Auct_PaymentMethod_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PaymentMethodID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PaymentMethod_InterView]
{% endsnapshot %}