{% snapshot Auct_TaxAssignments_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaxAssignmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaxAssignments_InterView]
{% endsnapshot %}