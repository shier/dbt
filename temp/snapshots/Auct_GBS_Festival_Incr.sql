{% snapshot Auct_GBS_Festival_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FestivalID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_GBS_Festival_InterView]
{% endsnapshot %}