{% snapshot Auct_SponsorBadges_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorBadgesID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorBadges_InterView]
{% endsnapshot %}