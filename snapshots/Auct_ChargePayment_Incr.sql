{% snapshot Auct_ChargePayment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ChargePaymentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ChargePayment_InterView]
{% endsnapshot %}