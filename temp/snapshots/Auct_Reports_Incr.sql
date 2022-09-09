{% snapshot Auct_Reports_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReportsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Reports_InterView]
{% endsnapshot %}