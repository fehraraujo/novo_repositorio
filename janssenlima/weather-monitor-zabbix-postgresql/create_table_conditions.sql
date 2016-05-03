CREATE TABLE "conditions_bratislava" (
  "id" serial NOT NULL,
  "geolookup_id" integer NULL,
  "heat_index_c" text NULL,
  "local_tz_long" text NULL,
  "weather" text NULL,
  "local_time_rfc822" text NULL,
  "forecast_url" text NULL,
  "windchill_c" text NULL,
  "windchill_f" text NULL,
  "pressure_in" text NULL,
  "dewpoint_string" text NULL,
  "solarradiation" text NULL,
  "ob_url" text NULL,
  "local_epoch" text NULL,
  "icon_url" text NULL,
  "precip_today_string" text NULL,
  "dewpoint_f" text NULL,
  "dewpoint_c" text NULL,
  "precip_today_metric" text NULL,
  "feelslike_c" text NULL,
  "wind_mph" text NULL,
  "wind_gust_kph" text NULL,
  "feelslike_f" text NULL,
  "local_tz_short" text NULL,
  "precip_today_in" text NULL,
  "heat_index_f" text NULL,
  "temp_f" text NULL,
  "station_id" text NULL,
  "windchill_string" text NULL,
  "temp_c" text NULL,
  "visibility_km" text NULL,
  "pressure_trend" text NULL,
  "visibility_mi" text NULL,
  "wind_string" text NULL,
  "pressure_mb" text NULL,
  "temperature_string" text NULL,
  "wind_dir" text NULL,
  "icon" text NULL,
  "wind_degrees" text NULL,
  "precip_1hr_in" text NULL,
  "local_tz_offset" text NULL,
  "wind_kph" text NULL,
  "wind_gust_mph" text NULL,
  "observation_time" text NULL,
  "uv" text NULL,
  "heat_index_string" text NULL,
  "observation_epoch" text NULL,
  "precip_1hr_metric" text NULL,
  "relative_humidity" text NULL,
  "observation_time_rfc822" text NULL,
  "precip_1hr_string" text NULL,
  "feelslike_string" text NULL,
  "history_url" text NULL,
  "timestamp" timestamp NOT NULL
);