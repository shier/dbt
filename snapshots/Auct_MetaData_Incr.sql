{% snapshot Auct_MetaData_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MetaDataID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MetaData_InterView]
{% endsnapshot %}