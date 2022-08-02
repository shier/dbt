{% snapshot Auct_ConsignmentNotes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NoteID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentNotes_InterView]
{% endsnapshot %}