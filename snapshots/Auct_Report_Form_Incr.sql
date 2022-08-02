{% snapshot Auct_Report_Form_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FormID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Report_Form_InterView]
{% endsnapshot %}