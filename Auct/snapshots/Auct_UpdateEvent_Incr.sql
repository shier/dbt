{% snapshot Auct_UpdateEvent_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UpdateEventID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UpdateEvent_InterView]
{% endsnapshot %}