CREATE TABLE violation(
    violation_id VARCHAR(20) PRIMARY KEY NOT NULL,
    vio_name VARCHAR(50) UNIQUE,
    fine_amount DECIMAL(10,2)
    vio_description VARCHAR(50)
);

CREATE TABLE fine(
    fine_id VARCHAR(10), 
    regno VARCHAR(14), 
    violation_id VARCHAR(20), 
    vio_count INT, 
    total_amt DECIMAL(10, 2),
    
)