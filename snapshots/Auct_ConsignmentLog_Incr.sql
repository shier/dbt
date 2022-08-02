{% snapshot Auct_ConsignmentLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentLogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentLog_InterView]
{% endsnapshot %}