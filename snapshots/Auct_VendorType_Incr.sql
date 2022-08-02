{% snapshot Auct_VendorType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorType_InterView]
{% endsnapshot %}