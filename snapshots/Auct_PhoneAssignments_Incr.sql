{% snapshot Auct_PhoneAssignments_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhoneAssignmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhoneAssignments_InterView]
{% endsnapshot %}