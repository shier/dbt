{% snapshot Auct_Sponsor_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Sponsor_InterView]
{% endsnapshot %}