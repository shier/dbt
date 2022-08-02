{% snapshot Auct_VendorBooth_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorBoothID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorBooth_InterView]
{% endsnapshot %}