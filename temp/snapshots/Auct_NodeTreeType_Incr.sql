{% snapshot Auct_NodeTreeType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NodeTreeTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NodeTreeType_InterView]
{% endsnapshot %}