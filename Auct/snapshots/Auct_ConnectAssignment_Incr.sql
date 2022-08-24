{% snapshot Auct_ConnectAssignment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConnectID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConnectAssignment_InterView]
{% endsnapshot %}