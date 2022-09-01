{% snapshot Auct_ConsignmentForms_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentFormID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentForms_InterView]
{% endsnapshot %}