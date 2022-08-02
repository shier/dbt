{% snapshot Auct_AddressAssignments_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AssignmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AddressAssignments_InterView]
{% endsnapshot %}