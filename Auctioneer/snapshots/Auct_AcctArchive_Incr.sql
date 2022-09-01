{% snapshot Auct_AcctArchive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AcctArchive_InterView]
{% endsnapshot %}