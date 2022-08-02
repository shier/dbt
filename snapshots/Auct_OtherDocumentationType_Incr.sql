{% snapshot Auct_OtherDocumentationType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OtherDocumentationTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_OtherDocumentationType_InterView]
{% endsnapshot %}