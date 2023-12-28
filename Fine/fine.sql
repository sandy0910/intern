CREATE TABLE violation(
    violation_id VARCHAR(20) PRIMARY KEY NOT NULL, 
    fine_amt DECIMAL(10, 2)
    violate_name VARCHAR(50)
);

CREATE TABLE fine(
    fine_id VARCHAR(20) PRIMARY KEY NOT NULL,   
    regno varchar(14), 
    violation_id varchar(20), 
    violate_count INT, 
    amount DECIMAL(10, 2),
    CONSTRAINT fk_vio FOREIGN KEY (violation_id) REFERENCES violation(violation_id)
);

INSERT INTO `fine`(fine_id, regno, violation_id, violate_count, amount) VALUES 
('X001','20IT1001','1A21',1, 100),
('X002','20IT1001','1A22',1, 500),
('X003','20IT1002','1A21',2, 200),
('X001','20IT1003','1A23',1, 180),
('X001','20IT1004','1A23',2, 360);