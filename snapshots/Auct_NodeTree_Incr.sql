{% snapshot Auct_NodeTree_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NodeTreeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NodeTree_InterView]
{% endsnapshot %}