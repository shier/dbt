{% snapshot AH_ListingPaymentCharge_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ListingPaymentCharge_InterView]
{% endsnapshot %}