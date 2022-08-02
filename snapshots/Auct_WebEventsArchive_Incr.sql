{% snapshot Auct_WebEventsArchive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EventArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_WebEventsArchive_InterView]
{% endsnapshot %}