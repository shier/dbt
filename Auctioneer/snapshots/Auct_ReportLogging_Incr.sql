{% snapshot Auct_ReportLogging_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReportLogging_InterView]
{% endsnapshot %}