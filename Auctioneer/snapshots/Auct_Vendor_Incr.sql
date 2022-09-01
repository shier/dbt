{% snapshot Auct_Vendor_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Vendor_InterView]
{% endsnapshot %}