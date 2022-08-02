{% snapshot Auct_BusinessCentralHelper_Archive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BusinessCentralArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BusinessCentralHelper_Archive_InterView]
{% endsnapshot %}