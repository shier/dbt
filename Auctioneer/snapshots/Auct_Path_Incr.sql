{% snapshot Auct_Path_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PathID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Path_InterView]
{% endsnapshot %}