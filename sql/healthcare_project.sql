CREATE SCHEMA logistics;
use logistics;
show variables like 'local_infile';
set global local_infile=1;
create table shipments(
shipment_id INT,
route_id INT,
warehouse_id INT,
distance_km INT,
eta_days INT,
ata_days INT,
shipment_date Date);
load data local infile 'C:/Users/siddg/Desktop/Project2/logistics_bigdata_5m_rows.csv'
 into table shipments fields terminated by ','
 lines terminated by '\n'
 ignore 1 rows;
 SELECT count(*) FROM shipments;
 /* checking null values */select count(*) 
 from shipments 
 where shipment_id is null
 or route_id is NULL
 or warehouse_id is NULL
 or distance_km is NULL
 or eta_days is NULL
 or ata_days is NULL
 or shipment_date is null;
/* checking duplicate values*/ SELECT shipment_id, count(*) 
 FROM shipments
 GROUP BY shipment_id
 HAVING count(*)>1;
/*negative delay check*/  SELECT * 
 FROM shipments WHERE ata_days<eta_days;
/* Route delay analysis */ SELECT route_id,
 AVG(ata_days-eta_days) as avg_delay
 from shipments
 GROUP BY route_id;
 SELECT shipment_id,
 CASE
 WHEN ata_days< eta_days then 'Early'
 WHEN ata_days = eta_days THEN 'On Time'
 ELSE 'Delayed'
 END As delivery_status
 FROM shipments;
 /* Warehouse shipment volume */ SELECT warehouse_id,
 COUNT(*) as shipment_count 
 FROM shipments
 GROUP BY warehouse_id
 ORDER BY shipment_count DESC;
 /* Daily Shipment Trend */ SELECT
 shipment_date, count(*) as total_shipments from shipments 
 GROUP BY shipment_date 
 ORDER BY total_shipments DESC;
 create TABLE route_delay_analysis as 
 SELECT route_id, avg(ata_days-eta_days) as avg_delay
 from shipments
 GROUP BY route_id;
 CREATE TABLE warehouse_volume_analysis as 
 SELECT warehouse_id, count(*) as shipment_count
 FROM shipments 
 GROUP BY warehouse_id;
 CREATE TABLE shipment_trend as 
 SELECT shipment_date, count(*) as total_shipments
 FROM shipments
 GROUP BY shipment_date;
 show TABLES;
 
 
