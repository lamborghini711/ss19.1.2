-- characters.daily_reset_data definition

CREATE TABLE daily_reset_data (
  uid bigint(20) NOT NULL AUTO_INCREMENT,
  character_id bigint(20) NOT NULL,
  reset_count int(11) DEFAULT NULL,
  last_reset bigint(20) NOT NULL,
  PRIMARY KEY (uid),
  UNIQUE KEY daily_reset_data_unique (character_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;