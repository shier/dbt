{% snapshot Auct_Node_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NodeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Node_InterView]
{% endsnapshot %}