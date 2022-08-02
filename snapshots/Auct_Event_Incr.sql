{% snapshot Auct_Event_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EventID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Event_InterView]
{% endsnapshot %}