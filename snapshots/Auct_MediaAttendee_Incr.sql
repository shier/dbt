{% snapshot Auct_MediaAttendee_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaAttendeeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaAttendee_InterView]
{% endsnapshot %}