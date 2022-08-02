{% snapshot Auct_VendorsurCharge_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorsurChargeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorsurCharge_InterView]
{% endsnapshot %}