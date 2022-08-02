{% snapshot Auct_MediaOrganization_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaOrganizationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaOrganization_InterView]
{% endsnapshot %}