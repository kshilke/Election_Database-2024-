create database elections;
use elections;
show tables;
CREATE TABLE voters (
    id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(255),
    dob DATE,
    ad1 VARCHAR(255),
    ad2 VARCHAR(255),
    ad3 VARCHAR(255),
    city VARCHAR(255),
    state1 VARCHAR(255),
    zip INT,
    email VARCHAR(255),
    phone BIGINT
);
INSERT INTO voters (id, first_name, last_name, gender, dob, ad1, ad2, ad3, city, state1, zip, email, phone)
VALUES
(1, 'Amit', 'Kumar', 'Male', '1990-05-15', '123 ABC Street', 'Near XYZ Park', 'Sector 45', 'Delhi', 'Delhi', 110001, 'amit.kumar@example.com', 9876543210),
(2, 'Priya', 'Sharma', 'Female', '1985-08-21', '456 PQR Road', 'Opposite LMN School', 'Sector 12', 'Mumbai', 'Maharashtra', 400001, 'priya.sharma@example.com', 8765432109),
(3, 'Rahul', 'Singh', 'Male', '1992-11-10', '789 DEF Lane', 'Behind OPQ Hospital', 'Sector 30', 'Bangalore', 'Karnataka', 560001, 'rahul.singh@example.com', 7654321098),
(4, 'Neha', 'Patel', 'Female', '1987-04-03', '234 GHI Road', 'Next to RST Market', 'Sector 9', 'Kolkata', 'West Bengal', 700001, 'neha.patel@example.com', 6543210987),
(5, 'Rajesh', 'Yadav', 'Male', '1983-09-25', '567 JKL Street', 'Near UVW Temple', 'Sector 15', 'Chennai', 'Tamil Nadu', 600001, 'rajesh.yadav@example.com', 5432109876),
(6, 'Deepika', 'Gupta', 'Female', '1995-02-18', '890 MNO Lane', 'Opposite EFG Park', 'Sector 22', 'Hyderabad', 'Telangana', 500001, 'deepika.gupta@example.com', 4321098765),
(7, 'Rakesh', 'Verma', 'Male', '1998-07-12', '345 BCD Road', 'Near HIJ Hospital', 'Sector 18', 'Pune', 'Maharashtra', 411001, 'rakesh.verma@example.com', 3210987654),
(8, 'Sneha', 'Rao', 'Female', '1989-12-05', '678 XYZ Lane', 'Behind ABC School', 'Sector 33', 'Ahmedabad', 'Gujarat', 380001, 'sneha.rao@example.com', 2109876543),
(9, 'Vivek', 'Reddy', 'Male', '1980-03-28', '901 LMN Street', 'Next to PQR Market', 'Sector 29', 'Jaipur', 'Rajasthan', 302001, 'vivek.reddy@example.com', 1098765432),
(10, 'Pooja', 'Mehta', 'Female', '1984-06-14', '123 QRS Road', 'Opposite TUV School', 'Sector 11', 'Lucknow', 'Uttar Pradesh', 226001, 'pooja.mehta@example.com', 9876543211);

CREATE TABLE candidates (
    c_id varchar(255) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(10),
    party_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code INT,
    email VARCHAR(255),
    phone_number BIGINT
);

INSERT INTO candidates (c_id, first_name, last_name, date_of_birth, gender, party_name, address, city, state, zip_code, email, phone_number)
VALUES
("c_1", 'Rajesh', 'Kumar', '1980-05-20', 'Male', 'Indian National Congress', '123 ABC Street', 'Delhi', 'Delhi', 110001, 'rajesh.kumar@example.com', 9876543210),
("c_2", 'Priya', 'Patel', '1982-09-15', 'Female', 'Indian National Congress', '456 PQR Road', 'Mumbai', 'Maharashtra', 400001, 'priya.patel@example.com', 8765432109),
("c_3", 'Amit', 'Sharma', '1975-12-10', 'Male', 'Aam Aadmi Party', '789 DEF Lane', 'Bangalore', 'Karnataka', 560001, 'amit.sharma@example.com', 7654321098),
("c_4", 'Deepika', 'Singh', '1988-03-05', 'Female', 'Indian National Congress', '234 GHI Road', 'Kolkata', 'West Bengal', 700001, 'deepika.singh@example.com', 6543210987),
("c_5", 'Vivek', 'Reddy', '1984-07-18', 'Male', 'Samajwadi Party', '567 JKL Street', 'Chennai', 'Tamil Nadu', 600001, 'vivek.reddy@example.com', 5432109876),
("c_6", 'Neha', 'Gupta', '1987-10-12', 'Female', 'Bahujan Samaj Party', '890 MNO Lane', 'Hyderabad', 'Telangana', 500001, 'neha.gupta@example.com', 4321098765),
("c_7", 'Rakesh', 'Khan', '1979-04-25', 'Male', 'Shiv Sena', '345 BCD Road', 'Pune', 'Maharashtra', 411001, 'rakesh.khan@example.com', 3210987654),
("c_8", 'Sneha', 'Yadav', '1983-11-08', 'Female', 'Shiv Sena', '678 XYZ Lane', 'Ahmedabad', 'Gujarat', 380001, 'sneha.yadav@example.com', 2109876543),
("c_9", 'Pooja', 'Mehta', '1981-06-30', 'Female', 'Aam Aadmi Party', '901 LMN Street', 'Jaipur', 'Rajasthan', 302001, 'pooja.mehta@example.com', 1098765432),
("c_10", 'Rahul', 'Verma', '1986-02-14', 'Male', 'All India Trinamool Congress', '123 QRS Road', 'Lucknow', 'Uttar Pradesh', 226001, 'rahul.verma@example.com', 9876543211);

CREATE TABLE election (
    e_id INT PRIMARY KEY,
    election_date DATE,
    election_type ENUM('General', 'Primary', 'Local', 'Special', 'Referendum') NOT NULL,
    election_status ENUM('Upcoming', 'Ongoing', 'Completed') NOT NULL,
    registration_deadline DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_registered_voters INT
);
INSERT INTO election (e_id, election_date, election_type, election_status, registration_deadline, voting_start_date, voting_end_date, total_registered_voters)
VALUES
(1, '2024-05-01', 'General', 'Upcoming', '2024-04-01', '2024-05-15', '2024-05-16', 100000),
(2, '2024-06-15', 'Local', 'Ongoing', '2024-05-15', '2024-06-01', '2024-06-30', 75000),
(3, '2024-08-10', 'Referendum', 'Completed', '2024-07-10', '2024-08-01', '2024-08-02', 125000),
(4, '2024-10-20', 'Primary', 'Upcoming', '2024-09-20', '2024-10-01', '2024-10-02', 90000),
(5, '2024-12-05', 'General', 'Ongoing', '2024-11-05', '2024-12-01', '2024-12-15', 110000),
(6, '2025-02-18', 'Special', 'Upcoming', '2025-01-18', '2025-02-01', '2025-02-02', 80000),
(7, '2025-04-10', 'Local', 'Ongoing', '2025-03-10', '2025-04-01', '2025-04-30', 95000),
(8, '2025-06-25', 'General', 'Completed', '2025-05-25', '2025-06-01', '2025-06-02', 120000),
(9, '2025-08-15', 'Referendum', 'Upcoming', '2025-07-15', '2025-08-01', '2025-08-02', 70000),
(10, '2025-10-30', 'Primary', 'Ongoing', '2025-09-30', '2025-10-01', '2025-10-31', 100000);

CREATE TABLE voter_registration (
    voter_id varchar(255) primary key,
    e_id INT,
    registration_date DATE,
    FOREIGN KEY (voter_id) REFERENCES voters(id),
    FOREIGN KEY (e_id) REFERENCES election(e_id),
    UNIQUE(voter_id, e_id)
);

INSERT INTO voter_registration (voter_id, e_id, registration_date)
VALUES
(1, 1, '2024-04-20'),
(2, 1, '2024-04-21'),
(3, 2, '2024-06-05'),
(4, 3, '2024-07-20'),
(5, 4, '2024-09-01'),
(6, 4, '2024-09-02'),
(7, 5, '2024-11-25'),
(8, 5, '2024-11-26'),
(9, 6, '2025-01-10'),
(10, 6, '2025-01-11');

CREATE TABLE lok_sabha_elections (
    ls_id varchar(255) PRIMARY KEY,
    Election_date DATE,
    election_status ENUM('Upcoming', 'Ongoing', 'Completed') NOT NULL,
    registration_deadline DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_registered_voters INT,
    total_votes_cast INT
);
INSERT INTO lok_sabha_elections (ls_id, Election_date, election_status, registration_deadline, voting_start_date, voting_end_date, total_registered_voters, total_votes_cast)
VALUES
("ls_1", '2024-05-12', 'Upcoming', '2024-04-12', '2024-05-01', '2024-05-12', 1500000, 0),
("ls_2", '2024-05-12', 'Ongoing', '2024-04-12', '2024-05-01', '2024-05-12', 1750000, 500000),
("ls_3", '2024-05-12', 'Completed', '2024-04-12', '2024-05-01', '2024-05-12', 2000000, 1800000),
("ls_4", '2029-05-12', 'Upcoming', '2029-04-12', '2029-05-01', '2029-05-12', 2200000, 0),
("ls_5", '2029-05-12', 'Ongoing', '2029-04-12', '2029-05-01', '2029-05-12', 2500000, 1000000),
("ls_6", '2029-05-12', 'Completed', '2029-04-12', '2029-05-01', '2029-05-12', 2800000, 2500000),
("ls_7", '2034-05-12', 'Upcoming', '2034-04-12', '2034-05-01', '2034-05-12', 3000000, 0),
("ls_8", '2034-05-12', 'Ongoing', '2034-04-12', '2034-05-01', '2034-05-12', 3200000, 1500000),
("ls_9", '2034-05-12', 'Completed', '2034-04-12', '2034-05-01', '2034-05-12', 3500000, 3400000),
("ls_10", '2039-05-12', 'Upcoming', '2039-04-12', '2039-05-01', '2039-05-12', 4000000, 0);

CREATE TABLE state_assembly_elections (
    s_id varchar(255) PRIMARY KEY,
    election_date DATE,
    election_status ENUM('Upcoming', 'Ongoing', 'Completed') NOT NULL,
    registration_deadline DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_registered_voters INT
);
INSERT INTO state_assembly_elections (s_id, election_date, election_status, registration_deadline, voting_start_date, voting_end_date, total_registered_voters)
VALUES
('1', '2024-05-01', 'Upcoming', '2024-04-15', '2024-04-30', '2024-05-01', 1000000),
('2', '2024-06-15', 'Ongoing', '2024-05-30', '2024-06-01', '2024-06-15', 1200000),
('3', '2024-07-20', 'Upcoming', '2024-07-05', '2024-07-15', '2024-07-20', 800000),
('4', '2024-08-10', 'Completed', '2024-07-25', '2024-08-01', '2024-08-10', 1500000),
('5', '2024-09-25', 'Upcoming', '2024-09-10', '2024-09-20', '2024-09-25', 1100000),
('6', '2024-10-15', 'Ongoing', '2024-10-01', '2024-10-05', '2024-10-15', 1300000),
('7', '2024-11-20', 'Upcoming', '2024-11-05', '2024-11-15', '2024-11-20', 900000),
('8', '2024-12-10', 'Ongoing', '2024-11-25', '2024-12-01', '2024-12-10', 1400000),
('9', '2025-01-25', 'Upcoming', '2025-01-10', '2025-01-20', '2025-01-25', 1250000),
('10', '2025-02-15', 'Upcoming', '2025-02-01', '2025-02-10', '2025-02-15', 1050000);

CREATE TABLE local_body_elections (
    lb_id VARCHAR(255) PRIMARY KEY,
    election_date DATE NOT NULL,
    election_type ENUM('Municipal', 'Panchayat', 'Other') NOT NULL,
    election_status ENUM('Upcoming', 'Ongoing', 'Completed') NOT NULL,
    registration_deadline DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_registered_voters INT,
    region_name VARCHAR(100) NOT NULL
);
INSERT INTO local_body_elections (lb_id, election_date, election_type, election_status, registration_deadline, voting_start_date, voting_end_date, total_registered_voters, region_name) 
VALUES 
('LB_1', '2023-05-15', 'Municipal', 'Completed', '2023-04-30', '2023-05-01', '2023-05-15', 5000, 'City A'),
('LB_2', '2023-08-20', 'Panchayat', 'Ongoing', '2023-08-10', '2023-08-11', '2023-08-20', 7000, 'Village B'),
('LB_3', '2023-11-10', 'Other', 'Upcoming', '2023-10-25', '2023-10-26', '2023-11-10', 3000, 'Town C'),
('LB_4', '2024-02-05', 'Municipal', 'Completed', '2024-01-20', '2024-01-21', '2024-02-05', 4500, 'City B'),
('LB_5', '2024-06-18', 'Panchayat', 'Upcoming', '2024-06-05', '2024-06-06', '2024-06-18', 6000, 'Village A'),
('LB_6', '2024-09-30', 'Other', 'Ongoing', '2024-09-15', '2024-09-16', '2024-09-30', 8000, 'Town D'),
('LB_7', '2025-03-10', 'Municipal', 'Upcoming', '2025-02-25', '2025-02-26', '2025-03-10', 5500, 'City C'),
('LB_8', '2025-07-25', 'Panchayat', 'Completed', '2025-07-10', '2025-07-11', '2025-07-25', 6500, 'Village C'),
('LB_9', '2025-10-15', 'Other', 'Ongoing', '2025-09-30', '2025-10-01', '2025-10-15', 7500, 'Town E'),
('LB_10', '2026-04-20', 'Municipal', 'Ongoing', '2026-04-05', '2026-04-06', '2026-04-20', 4800, 'City D');

CREATE TABLE rajya_sabha_elections (
    rs_id VARCHAR(255) PRIMARY KEY,
    election_date DATE NOT NULL,
    election_status ENUM('Upcoming', 'Ongoing', 'Completed') NOT NULL,
    registration_deadline DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_registered_voters INT
);

INSERT INTO rajya_sabha_elections (rs_id, election_date, election_status, registration_deadline, voting_start_date, voting_end_date, total_registered_voters)
VALUES 
('RS_1', '2023-05-15', 'Completed', '2023-04-30', '2023-05-01', '2023-05-15', 5000),
('RS_2', '2023-08-20', 'Ongoing', '2023-08-10', '2023-08-11', '2023-08-20', 7000),
('RS_3', '2023-11-10', 'Upcoming', '2023-10-25', '2023-10-26', '2023-11-10', 3000),
('RS_4', '2024-02-05', 'Completed', '2024-01-20', '2024-01-21', '2024-02-05', 4500),
('RS_5', '2024-06-18', 'Upcoming', '2024-06-05', '2024-06-06', '2024-06-18', 6000),
('RS_6', '2024-09-30', 'Ongoing', '2024-09-15', '2024-09-16', '2024-09-30', 8000),
('RS_7', '2025-03-10', 'Upcoming', '2025-02-25', '2025-02-26', '2025-03-10', 5500),
('RS_8', '2025-07-25', 'Completed', '2025-07-10', '2025-07-11', '2025-07-25', 6500),
('RS_9', '2025-10-15', 'Ongoing', '2025-09-30', '2025-10-01', '2025-10-15', 7500),
('RS_10', '2026-04-20', 'Ongoing', '2026-04-05', '2026-04-06', '2026-04-20', 4800);

CREATE TABLE parties (
    p_id VARCHAR(255) PRIMARY KEY,
    party_name VARCHAR(255) NOT NULL,
    party_description TEXT,
    party_leader VARCHAR(255),
    foundation_date DATE,
    headquarters_address VARCHAR(255),
    ideology VARCHAR(255)
);
INSERT INTO parties (p_id, party_name, party_description, party_leader, foundation_date, headquarters_address, ideology) 
VALUES 
('INC', 'Indian National Congress', 'Indian National Congress is one of the two major political parties in India.', 'Sonia Gandhi', '1885-12-28', 'New Delhi', 'Social democracy, Secularism'),
('BJP', 'Bharatiya Janata Party', 'Bharatiya Janata Party is the ruling political party in India.', 'Jagat Prakash Nadda', '1980-04-06', 'New Delhi', 'Hindutva, Integral humanism'),
('AAP', 'Aam Aadmi Party', 'Aam Aadmi Party is known for its anti-corruption movement.', 'Arvind Kejriwal', '2012-11-26', 'Delhi', 'Populism, Progressivism, Anti-corruption'),
('CPI(M)', 'Communist Party of India (Marxist)', 'Communist Party of India (Marxist) follows the ideology of Marxism.', 'Sitaram Yechury', '1964-10-07', 'New Delhi', 'Marxism, Socialism'),
('Shiv Sena', 'Shiv Sena', 'Shiv Sena is a regional political party based in Maharashtra.', 'Uddhav Thackeray', '1966-06-19', 'Mumbai', 'Hindutva, Regionalism'),
('TMC', 'All India Trinamool Congress', 'All India Trinamool Congress is a regional political party based in West Bengal.', 'Mamata Banerjee', '1998-01-01', 'Kolkata', 'Regionalism, Secularism, Populism'),
('DMK', 'Dravida Munnetra Kazhagam', 'Dravida Munnetra Kazhagam is a regional political party based in Tamil Nadu.', 'M. K. Stalin', '1949-09-17', 'Chennai', 'Dravidian nationalism, Social democracy'),
('AIADMK', 'All India Anna Dravida Munnetra Kazhagam', 'All India Anna Dravida Munnetra Kazhagam is a regional political party based in Tamil Nadu.', 'Edappadi K. Palaniswami', '1972-10-17', 'Chennai', 'Dravidian nationalism, Social democracy'),
('TRS', 'Telangana Rashtra Samithi', 'Telangana Rashtra Samithi is a regional political party based in Telangana.', 'K. Chandrashekar Rao', '2001-04-27', 'Hyderabad', 'Regionalism, Social democracy'),
('BSP', 'Bahujan Samaj Party', 'Bahujan Samaj Party is known for its focus on the interests of Scheduled Castes, Scheduled Tribes, and Other Backward Classes.', 'Mayawati', '1984-04-14', 'New Delhi', 'Bahujan Samaj, Social justice');

CREATE TABLE positions (
    po_id VARCHAR(255) PRIMARY KEY,
    position_name VARCHAR(255) NOT NULL,
    position_description TEXT,
    term_length INT,
    term_limit INT,
    salary DECIMAL(10, 2), -- Assuming salary is in decimal format
    requirements TEXT
);
INSERT INTO positions (po_id, position_name, position_description, term_length, term_limit, salary, requirements)
VALUES 
('PO_1', 'Prime Minister', 'The head of the government responsible for leading the executive branch.', 5, 2, 100000.00, 'Leadership skills, political experience, communication skills'),
('PO_2', 'President', 'The head of state responsible for representing the country domestically and internationally.', 5, 2, 80000.00, 'Leadership skills, diplomatic skills, knowledge of constitution'),
('PO_3', 'Chief Minister', 'The head of the government in a state responsible for leading the executive branch.', 5, 2, 90000.00, 'Leadership skills, political experience, administrative skills'),
('PO_4', 'Governor', 'The ceremonial head of a state responsible for representing the central government.', 5, 2, 70000.00, 'Diplomatic skills, knowledge of constitution'),
('PO_5', 'Member of Parliament', 'An elected representative in the national legislative body responsible for lawmaking.', 5, 5, 60000.00, 'Understanding of issues, communication skills, constituency focus'),
('PO_6', 'Member of Legislative Assembly', 'An elected representative in the state legislative body responsible for lawmaking.', 5, 5, 55000.00, 'Understanding of issues, communication skills, constituency focus'),
('PO_7', 'Mayor', 'The head of a municipal corporation responsible for governing a city.', 3, 2, 50000.00, 'Administrative skills, knowledge of local issues, leadership skills'),
('PO_8', 'Councilor', 'An elected member of a local governing body responsible for representing a constituency.', 3, 3, 40000.00, 'Understanding of local issues, communication skills, community engagement'),
('PO_9', 'Sarpanch', 'The head of a village-level elected body responsible for local governance.', 3, 3, 35000.00, 'Understanding of village issues, administrative skills, community engagement'),
('PO_10', 'Municipal Commissioner', 'The administrative head of a municipal corporation responsible for implementing policies.', 4, 2, 60000.00, 'Administrative skills, policy implementation experience, leadership skills');


CREATE TABLE Candidates_hist (
    Ch_id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    party_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code VARCHAR(10),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    years_served INT
);

INSERT INTO Candidates_hist (Ch_id, first_name, last_name, date_of_birth, gender, party_name, address, city, state, zip_code, email, phone_number, years_served)
VALUES 
('CH001', 'Rajesh', 'Kumar', '1980-05-15', 'Male', 'Bharatiya Janata Party', '234 GHI Road', 'New Delhi', 'Delhi', '110001', 'rajesh.kumar@example.com', '9876543210', 4),
('CH002', 'Aarti', 'Sharma', '1985-08-20', 'Female', 'Indian National Congress', '456 JKL Street', 'Mumbai', 'Maharashtra', '400001', 'aarti.sharma@example.com', '8765432109', 6),
('CH003', 'Vivek', 'Patel', '1978-12-10', 'Male', 'Aam Aadmi Party', '789 MNO Lane', 'Bengaluru', 'Karnataka', '560001', 'vivek.patel@example.com', '7654321098', 3),
('CH004', 'Anjali', 'Das', '1982-03-25', 'Female', 'Trinamool Congress', '321 PQR Avenue', 'Kolkata', 'West Bengal', '700001', 'anjali.das@example.com', '6543210987', 8),
('CH005', 'Sanjay', 'Singh', '1987-07-10', 'Male', 'Shiv Sena', '987 STU Lane', 'Pune', 'Maharashtra', '411001', 'sanjay.singh@example.com', '5432109876', 5),
('CH006', 'Priya', 'Gupta', '1976-09-18', 'Female', 'Bahujan Samaj Party', '654 VWX Road', 'Chennai', 'Tamil Nadu', '600001', 'priya.gupta@example.com', '4321098765', 7),
('CH007', 'Amit', 'Rao', '1984-04-30', 'Male', 'Nationalist Congress Party', '147 YZT Street', 'Hyderabad', 'Telangana', '500001', 'amit.rao@example.com', '3210987654', 2),
('CH008', 'Sunita', 'Verma', '1989-11-12', 'Female', 'Janata Dal (United)', '369 ABC Road', 'Lucknow', 'Uttar Pradesh', '226001', 'sunita.verma@example.com', '2109876543', 4),
('CH009', 'Rahul', 'Mehta', '1981-06-27', 'Male', 'All India Anna Dravida Munnetra Kazhagam', '258 DEF Street', 'Chandigarh', 'Chandigarh', '160001', 'rahul.mehta@example.com', '1098765432', 6),
('CH010', 'Deepika', 'Singh', '1990-02-14', 'Female', 'Telangana Rashtra Samithi', '852 GHI Road', 'Jaipur', 'Rajasthan', '302001', 'deepika.singh@example.com', '9876543210', 3);

CREATE TABLE Voter_hist (
    Vh_id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code VARCHAR(10),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    years_voted INT
);

INSERT INTO Voter_hist (Vh_id, first_name, last_name, date_of_birth, gender, address, city, state, zip_code, email, phone_number, years_voted)
VALUES 
('VH001', 'Rahul', 'Kumar', '1985-03-12', 'Male', '123 ABC Lane', 'Delhi', 'Delhi', '110001', 'rahul.kumar@example.com', '9876543210', 5),
('VH002', 'Priya', 'Sharma', '1978-07-25', 'Female', '456 XYZ Road', 'Mumbai', 'Maharashtra', '400001', 'priya.sharma@example.com', '8765432109', 3),
('VH003', 'Amit', 'Singh', '1990-11-18', 'Male', '789 GHI Street', 'Bangalore', 'Karnataka', '560001', 'amit.singh@example.com', '7654321098', 3),
('VH004', 'Anjali', 'Patel', '1983-05-06', 'Female', '321 PQR Lane', 'Kolkata', 'West Bengal', '700001', 'anjali.patel@example.com', '6543210987', 7),
('VH005', 'Raj', 'Verma', '1976-09-30', 'Male', '852 LMN Road', 'Chennai', 'Tamil Nadu', '600001', 'raj.verma@example.com', '5432109876', 2),
('VH006', 'Sneha', 'Gupta', '1988-02-14', 'Female', '963 DEF Street', 'Hyderabad', 'Telangana', '500001', 'sneha.gupta@example.com', '4321098765', 5),
('VH007', 'Vivek', 'Yadav', '1981-11-08', 'Male', '147 MNO Lane', 'Pune', 'Maharashtra', '411001', 'vivek.yadav@example.com', '3210987654', 5),
('VH008', 'Pooja', 'Singh', '1984-04-21', 'Female', '258 STU Lane', 'Jaipur', 'Rajasthan', '302001', 'pooja.singh@example.com', '2109876543', 8),
('VH009', 'Sanjay', 'Sharma', '1989-08-17', 'Male', '369 QRS Road', 'Ahmedabad', 'Gujarat', '380001', 'sanjay.sharma@example.com', '1098765432', 1),
('VH010', 'Meera', 'Kaur', '1980-12-30', 'Female', '852 UVW Street', 'Lucknow', 'Uttar Pradesh', '226001', 'meera.kaur@example.com', '9876543210', 4);

SELECT * FROM voters WHERE state1 = 'Maharashtra';

SELECT party_name,party_leader,headquarters_address
FROM parties
WHERE headquarters_address = 'New Delhi';

SELECT e_id, COUNT(*) AS total_registered_voters
FROM voter_registration
GROUP BY e_id;

SELECT *
FROM election
WHERE registration_deadline < CURDATE() AND voting_start_date > CURDATE();


SELECT v.first_name AS voter_first_name, 
       v.last_name AS voter_last_name, 
       v.email AS voter_email,
       c.first_name AS candidate_first_name, 
       c.last_name AS candidate_last_name, 
       c.email AS candidate_email
FROM voters v
INNER JOIN candidates c ON v.email = c.email;

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Candidates_hist
WHERE gender = 'Female' AND city = 'Mumbai'

UNION ALL

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Voter_hist
WHERE gender = 'Female' AND city = 'Mumbai';

SELECT l.election_date AS lok_sabha_election_date, lb.election_date AS local_body_election_date
FROM lok_sabha_elections l
JOIN local_body_elections lb ON l.election_status = lb.election_status
WHERE l.election_status = 'Ongoing' AND lb.election_status = 'Ongoing';

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Candidates_hist
WHERE city = 'Delhi'

UNION 

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Voter_hist
WHERE city = 'Delhi';

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Candidates_hist

UNION 

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Voter_hist;

insert into Candidates_hist (Ch_id, first_name, last_name, date_of_birth, gender, party_name, address, city, state, zip_code, email, phone_number)
values('CH011', 'Meera', 'Kaur', '1980-12-30', 'Female','Janata Dal (United)', '852 UVW Street', 'Lucknow', 'Uttar Pradesh', '226001', 'meera.kaur@example.com', '9876543210');

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Candidates_hist

UNION ALL

SELECT first_name, 
    last_name, 
    date_of_birth, 
    gender
FROM Voter_hist;

SELECT v.state1, COUNT(vr.voter_id) AS registered_voters_count
FROM voters v
JOIN voter_registration vr ON v.id = vr.voter_id
GROUP BY v.state1
ORDER BY registered_voters_count DESC
LIMIT 5;

SELECT party_name, COUNT(*) AS candidate_count
FROM candidates
GROUP BY party_name
ORDER BY candidate_count DESC;

SELECT gender,
       AVG(DATEDIFF(CURRENT_DATE, dob) / 365) AS average_age
FROM voters
GROUP BY gender;

SELECT position_name, salary AS highest_salary
FROM positions
WHERE salary = (
    SELECT MAX(salary)
    FROM positions
);

SELECT v.city, COUNT(vr.voter_id) AS num_registered_voters
FROM voter_registration vr
INNER JOIN voters v ON vr.voter_id = v.id
INNER JOIN election e ON vr.e_id = e.e_id
WHERE e.election_status = 'Upcoming'
GROUP BY v.city;

SELECT p.party_name, COUNT(c.c_id) AS num_candidates
FROM parties p
LEFT JOIN candidates c ON p.party_name = c.party_name
GROUP BY p.party_name;

SELECT v.state1, COUNT(vr.voter_id) AS num_registered_voters
FROM voter_registration vr
INNER JOIN voters v ON vr.voter_id = v.id
GROUP BY v.state1;

SELECT e.e_id, e.election_type, 
    (COUNT(vr.voter_id) * 100 / e.total_registered_voters) AS voting_percentage
FROM election e
INNER JOIN voter_registration vr ON e.e_id = vr.e_id
GROUP BY e.e_id, e.election_type, e.total_registered_voters;


