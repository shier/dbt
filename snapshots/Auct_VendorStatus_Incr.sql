{% snapshot Auct_VendorStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorStatus_InterView]
{% endsnapshot %}