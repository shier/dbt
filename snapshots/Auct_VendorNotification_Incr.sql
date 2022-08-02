{% snapshot Auct_VendorNotification_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorNotificationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorNotification_InterView]
{% endsnapshot %}