{% snapshot Auct_Sources_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SourceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Sources_InterView]
{% endsnapshot %}