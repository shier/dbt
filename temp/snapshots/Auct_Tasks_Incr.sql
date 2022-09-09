{% snapshot Auct_Tasks_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Tasks_InterView]
{% endsnapshot %}