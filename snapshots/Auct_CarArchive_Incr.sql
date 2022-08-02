{% snapshot Auct_CarArchive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarArchive_InterView]
{% endsnapshot %}