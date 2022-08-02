{% snapshot Auct_PdfDocument_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PdfDocumentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PdfDocument_InterView]
{% endsnapshot %}