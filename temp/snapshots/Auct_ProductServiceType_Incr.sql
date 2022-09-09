{% snapshot Auct_ProductServiceType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ProductServiceTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ProductServiceType_InterView]
{% endsnapshot %}