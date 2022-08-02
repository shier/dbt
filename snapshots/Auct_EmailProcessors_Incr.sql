{% snapshot Auct_EmailProcessors_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EmailProcessorID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_EmailProcessors_InterView]
{% endsnapshot %}