{% snapshot Auct_Journal_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='JournalID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Journal_InterView]
{% endsnapshot %}