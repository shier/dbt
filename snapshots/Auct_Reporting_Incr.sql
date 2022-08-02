{% snapshot Auct_Reporting_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReportingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Reporting_InterView]
{% endsnapshot %}