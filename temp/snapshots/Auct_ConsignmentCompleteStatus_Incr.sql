{% snapshot Auct_ConsignmentCompleteStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentCompleteStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentCompleteStatus_InterView]
{% endsnapshot %}