{% snapshot Auct_Package_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PackageID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Package_InterView]
{% endsnapshot %}