{% snapshot Auct_ReportBidder_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReportID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReportBidder_InterView]
{% endsnapshot %}