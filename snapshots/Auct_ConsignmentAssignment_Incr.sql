{% snapshot Auct_ConsignmentAssignment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AssignID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentAssignment_InterView]
{% endsnapshot %}