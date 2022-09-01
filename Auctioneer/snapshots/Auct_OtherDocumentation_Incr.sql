{% snapshot Auct_OtherDocumentation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OtherDocumentationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_OtherDocumentation_InterView]
{% endsnapshot %}