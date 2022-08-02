{% snapshot Auct_BCPaymentType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BCPaymentTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BCPaymentType_InterView]
{% endsnapshot %}