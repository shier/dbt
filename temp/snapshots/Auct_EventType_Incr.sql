{% snapshot Auct_EventType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EventTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_EventType_InterView]
{% endsnapshot %}