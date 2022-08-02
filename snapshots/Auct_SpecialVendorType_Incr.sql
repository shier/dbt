{% snapshot Auct_SpecialVendorType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SpecialVendorTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SpecialVendorType_InterView]
{% endsnapshot %}