{% snapshot Auct_PackageType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PackageTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PackageType_InterView]
{% endsnapshot %}