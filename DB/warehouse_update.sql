DROP TABLE IF EXISTS account_warehouse_old;

RENAME TABLE account_warehouse TO account_warehouse_old;

CREATE TABLE account_warehouse (
  uid bigint(20) NOT NULL AUTO_INCREMENT,
  account_id bigint(20) NOT NULL,
  warehouse_id tinyint(4) DEFAULT 0,
  money bigint(20) DEFAULT NULL,
  password bigint(20) unsigned DEFAULT NULL,
  expanded tinyint(4) DEFAULT 0,
  expandedtime bigint(20) DEFAULT 0,
  inventory varbinary(55000) DEFAULT NULL,
  gremory_case_acc varbinary(10000) DEFAULT NULL,
  wingcoreinventory text DEFAULT NULL,
  PRIMARY KEY (uid),
  UNIQUE KEY account_warehouse_unique (account_id,warehouse_id)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO account_warehouse
(account_id, warehouse_id, money, password, expanded, expandedtime, inventory, gremory_case_acc, wingcoreinventory)
SELECT 
  aw.account_id,
  0 AS warehouse_id,
  aw.money,
  aw.password,
  ad.expanded_warehouse AS expanded,
  ad.expanded_warehouse_time AS expandedtime,
  aw.inventory,
  aw.gremory_case_acc,
  aw.wingcoreinventory
FROM account_warehouse_old aw
LEFT JOIN account_data ad ON aw.account_id = ad.account_id;

SELECT COUNT(*) AS migrated_rows FROM account_warehouse;