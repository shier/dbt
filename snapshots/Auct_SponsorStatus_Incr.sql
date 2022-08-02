{% snapshot Auct_SponsorStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorStatus_InterView]
{% endsnapshot %}