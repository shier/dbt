{% snapshot Auct_ConsignmentArchive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentArchive_InterView]
{% endsnapshot %}