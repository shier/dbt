{% snapshot Auct_SponsorLead_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorLeadID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorLead_InterView]
{% endsnapshot %}