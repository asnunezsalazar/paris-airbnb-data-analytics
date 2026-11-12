SELECT
  l.id,
  l.room_type,
  l.host_response_time,
  l.review_scores_value,
  c.date,
  c.available,
  c.price,

-- KPIs
-- Amount  of airbnb booked 
  CASE WHEN c.available = FALSE THEN 1 ELSE 0 END AS is_booked,

-- Daily revenue (price*(if is booked))
  CASE WHEN c.available = FALSE THEN c.price ELSE 0 END AS daily_revenue,

-- Separate day / month / year
  EXTRACT(YEAR FROM c.date) AS year,
  EXTRACT(MONTH FROM c.date) AS month,
  FORMAT_DATE('%A', c.date) AS weekday,

-- Score host response rate
  CASE
    WHEN l.host_response_time = 'within an hour' THEN 4
    WHEN l.host_response_time = 'within a few hours' THEN 3
    WHEN l.host_response_time = 'within a day' THEN 2
    ELSE 1
  END AS response_score,

-- Price segmentation
  CASE
    WHEN c.price < 80 THEN 'Low price'
    WHEN c.price BETWEEN 80 AND 150 THEN 'Medium price'
    ELSE 'High price'
  END AS price_segment

FROM `anita-lewagon-data-analytics.Airbnb_project.listing` l
LEFT JOIN `anita-lewagon-data-analytics.Airbnb_project.calendar` c
ON l.id = c.listing_id;
