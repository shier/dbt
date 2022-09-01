{% snapshot Auct_MediaAttendeeStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaAttendeeStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaAttendeeStatus_InterView]
{% endsnapshot %}