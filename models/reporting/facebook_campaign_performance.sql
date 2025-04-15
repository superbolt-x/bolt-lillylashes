{{ config (
    alias = target.database + '_facebook_campaign_performance'
)}}

SELECT 
campaign_name,
campaign_id,
campaign_effective_status,
campaign_type_default,
date,
date_granularity,
spend,
impressions,
video_view as video_views,
link_clicks,
add_to_cart,
purchases+onsite_app_purchase as purchases,
revenue+onsite_app_purchase_value as revenue
FROM {{ ref('facebook_performance_by_campaign') }}
