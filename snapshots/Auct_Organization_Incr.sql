{% snapshot Auct_Organization_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OrganizationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Organization_InterView]
{% endsnapshot %}