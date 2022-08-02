{% snapshot Auct_SponsorBanners_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorBannersID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorBanners_InterView]
{% endsnapshot %}