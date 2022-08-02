{% snapshot Auct_PhotoStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhotoStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhotoStatus_InterView]
{% endsnapshot %}