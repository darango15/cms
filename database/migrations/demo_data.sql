SET FOREIGN_KEY_CHECKS = 0;

-- Categories
INSERT INTO categories (id, name, slug, display_order) VALUES
(1,'PAMEL','pamel',1),(2,'Latin','latin',2),(3,'IMO','imo',3),(4,'Logistics','logistics',4);

INSERT INTO lms_categories (id, name, slug) VALUES
(1,'PAMEL (PANAMA)','pamel-panama'),(2,'LATIN (INDIA)','latin-india');

-- Products
INSERT INTO products (id, name, slug, category_id, course_code, modality, imo_model_course_no, duration_hours, price, renewal_price, stock, status, description, created_at) VALUES
(1,'Elementary First Aid','elementary-first-aid',1,'EFA','Presencial','1.13',16,450.00,200.00,30,'active','Provides seafarers with knowledge and skills to provide elementary first aid on board ships.',NOW()),
(2,'Personal Survival Techniques','personal-survival-techniques',1,'PST','Presencial','1.19',20,500.00,220.00,30,'active','Training in personal survival techniques, including liferaft operation and survival at sea.',NOW()),
(3,'Fire Prevention and Fire Fighting','fire-prevention-and-fire-fighting',1,'FPFF','Presencial','1.20',24,550.00,240.00,25,'active','Training in fire prevention and fire fighting techniques as required by the STCW Convention.',NOW()),
(4,'Personal Safety and Social Responsibilities','personal-safety-and-social-responsibilities',1,'PSSR','Presencial','1.21',16,420.00,180.00,30,'active','Covers personal safety measures and emergency procedures aboard ships.',NOW()),
(5,'Maritime English','maritime-english',1,'ME','B-learning',NULL,40,600.00,300.00,50,'active','English language training for maritime professionals and seafarers.',NOW()),
(6,'Ship Security Officer','ship-security-officer',1,'SSO','B-learning','3.19',32,750.00,350.00,20,'active','Comprehensive training for personnel designated as Ship Security Officers under the ISPS Code.',NOW()),
(7,'Port Facility Security Officer','port-facility-security-officer',1,'PFSO','B-learning','3.21',32,780.00,360.00,20,'active','Training for personnel responsible for security of port facilities under the ISPS Code.',NOW()),
(8,'Leadership and Teamwork','leadership-and-teamwork',1,'LTW','B-learning','1.39',20,680.00,320.00,25,'active','Develops leadership and teamwork skills for shipboard management personnel.',NOW()),
(9,'Elementary First Aid','elementary-first-aid-latin',2,'EFA-L','Presencial','1.13',16,380.00,160.00,40,'active','Elementary first aid course for the Latin region program.',NOW()),
(10,'Personal Survival Techniques','personal-survival-techniques-latin',2,'PST-L','Presencial','1.19',20,420.00,180.00,40,'active','Personal survival techniques for Latin region students.',NOW()),
(11,'Fire Prevention and Fire Fighting','fire-prevention-and-fire-fighting-latin',2,'FPFF-L','Presencial','1.20',24,460.00,200.00,35,'active','Fire prevention and fighting for Latin region students.',NOW()),
(12,'Ship Security Officer','ship-security-officer-latin',2,'SSO-L','B-learning','3.19',32,620.00,280.00,25,'active','Ship security officer training for the Latin region program.',NOW());

-- LMS Courses
INSERT INTO lms_courses (id, product_id, teacher_id, category_id, course_code, title, slug, description, level, status, pass_percentage, price, created_at) VALUES
(1,1,2,1,'EFA','Elementary First Aid','elementary-first-aid-efa','Provides seafarers with knowledge and skills to provide elementary first aid on board ships.','beginner','published',70,450.00,NOW()),
(2,2,2,1,'PST','Personal Survival Techniques','personal-survival-techniques-pst','Training in personal survival techniques, including liferaft operation and survival at sea.','beginner','published',70,500.00,NOW()),
(3,3,2,1,'FPFF','Fire Prevention and Fire Fighting','fire-prevention-and-fire-fighting-fpff','Training in fire prevention and fire fighting as required by the STCW Convention.','intermediate','published',75,550.00,NOW()),
(4,4,3,1,'PSSR','Personal Safety and Social Responsibilities','personal-safety-and-social-responsibilities-pssr','Covers personal safety measures and emergency procedures aboard ships.','beginner','published',70,420.00,NOW()),
(5,5,3,1,'ME','Maritime English','maritime-english-me','English language training for maritime professionals.','intermediate','published',70,600.00,NOW()),
(6,6,2,1,'SSO','Ship Security Officer','ship-security-officer-sso','Comprehensive training for Ship Security Officers under the ISPS Code.','advanced','published',80,750.00,NOW()),
(7,7,2,1,'PFSO','Port Facility Security Officer','port-facility-security-officer-pfso','Training for port facility security personnel under the ISPS Code.','advanced','draft',80,780.00,NOW()),
(8,8,3,1,'LTW','Leadership and Teamwork','leadership-and-teamwork-ltw','Develops leadership and teamwork skills for shipboard management personnel.','intermediate','published',75,680.00,NOW()),
(9,9,3,2,'EFA-L','Elementary First Aid','elementary-first-aid-efa-l','Elementary first aid course for the Latin region program.','beginner','published',70,380.00,NOW()),
(10,10,3,2,'PST-L','Personal Survival Techniques','personal-survival-techniques-pst-l','Personal survival techniques for Latin region students.','beginner','published',70,420.00,NOW()),
(11,11,3,2,'FPFF-L','Fire Prevention and Fire Fighting','fire-prevention-and-fire-fighting-fpff-l','Fire prevention and fighting for Latin region students.','intermediate','draft',75,460.00,NOW()),
(12,12,2,2,'SSO-L','Ship Security Officer','ship-security-officer-sso-l','Ship security officer training for the Latin region program.','advanced','published',80,620.00,NOW());

-- Lessons (3 per published course)
INSERT INTO lms_lessons (course_id, title, type, content, order_num, is_active, created_at) VALUES
(1,'Introduction to First Aid','text','Overview of first aid principles and responsibilities of a first aider on board ships.',1,1,NOW()),
(1,'Basic Life Support and CPR','text','CPR techniques, rescue breathing, and use of AED devices in maritime emergencies.',2,1,NOW()),
(1,'Wounds, Bleeding and Shock','text','Techniques for controlling bleeding, wound dressing, and management of shock.',3,1,NOW()),
(2,'Survival at Sea Overview','text','Understanding survival psychology and the will to survive in maritime emergencies.',1,1,NOW()),
(2,'Life-Saving Appliances','text','Operation of lifeboats, life rafts, and personal flotation devices.',2,1,NOW()),
(2,'Survival Signals and Rescue','text','Pyrotechnic signals, EPIRB operation, and helicopter rescue procedures.',3,1,NOW()),
(3,'Fire Triangle and Classes of Fire','text','Understanding fire behavior, classes of fire, and appropriate extinguishing agents.',1,1,NOW()),
(3,'Fixed and Portable Fire Systems','text','Operation of fixed suppression systems, CO2, foam, and sprinkler systems.',2,1,NOW()),
(3,'Practical Fire Fighting Techniques','text','Live fire exercises, team coordination, and breathing apparatus use.',3,1,NOW()),
(4,'Shipboard Safety Culture','text','Understanding safety culture, risk awareness, and hazard identification on board.',1,1,NOW()),
(4,'Emergency Procedures','text','Muster stations, abandon ship procedures, and conducting emergency drills.',2,1,NOW()),
(4,'Social Responsibilities at Sea','text','Communication, interpersonal relations, and fatigue management on board.',3,1,NOW()),
(5,'Maritime Vocabulary','text','Technical vocabulary for deck, engine room, and safety communications.',1,1,NOW()),
(5,'SMCP Standard Phrases','text','Study of IMO Standard Marine Communication Phrases for bridge communications.',2,1,NOW()),
(5,'Written Reports and Documentation','text','Writing logs, incident reports, and official maritime documents in English.',3,1,NOW()),
(6,'ISPS Code and Maritime Security','text','Overview of the ISPS Code, security levels, and responsibilities of the SSO.',1,1,NOW()),
(6,'Ship Security Plan','text','Developing, implementing, and maintaining a comprehensive Ship Security Plan.',2,1,NOW()),
(6,'Security Incidents and Drills','text','Recognizing security threats, conducting security drills, and incident reporting.',3,1,NOW()),
(8,'Leadership Principles in Maritime','text','Core leadership theories and their application in maritime operations.',1,1,NOW()),
(8,'Team Dynamics on Board','text','Managing diverse crews, conflict resolution, and effective delegation.',2,1,NOW()),
(8,'Decision Making Under Pressure','text','Bridge Resource Management techniques and crisis decision making at sea.',3,1,NOW()),
(9,'First Aid Fundamentals','text','Basic first aid principles adapted for the Latin region program.',1,1,NOW()),
(9,'CPR and Emergency Response','text','Cardiopulmonary resuscitation techniques for maritime emergencies.',2,1,NOW()),
(9,'Trauma and Injury Management','text','Managing injuries, burns, and trauma aboard ships.',3,1,NOW()),
(10,'Survival Equipment Overview','text','Life-saving equipment inspection, maintenance, and proper operation.',1,1,NOW()),
(10,'Abandoning Ship Procedures','text','Procedures for abandoning ship, entering life rafts, and signaling for rescue.',2,1,NOW()),
(10,'Survival in Extreme Conditions','text','Hypothermia prevention, heat exhaustion management, and hydration at sea.',3,1,NOW()),
(12,'Port and Ship Security Framework','text','ISPS Code structure, security levels, and roles of SSO in the Latin program.',1,1,NOW()),
(12,'Security Assessments','text','Conducting ship security assessments and vulnerability analysis.',2,1,NOW()),
(12,'Security Drills and Audits','text','Planning and executing security drills, exercises, and compliance audits.',3,1,NOW());

-- Orders
INSERT INTO orders (id, user_id, order_number, total_amount, subtotal, status, payment_method, payment_status, customer_name, customer_email, customer_phone, paid_at, created_at) VALUES
(1,4,'ORD-20260601-000001',950.00,950.00,'completed','PayPal','paid','Carlos Mendoza','cmendoza@pamel.com','+507 6123-4567',DATE_SUB(NOW(),INTERVAL 10 DAY),DATE_SUB(NOW(),INTERVAL 10 DAY)),
(2,5,'ORD-20260605-000001',500.00,500.00,'completed','PayPal','paid','Ana Gutierrez','agutierrez@pamel.com','+507 6234-5678',DATE_SUB(NOW(),INTERVAL 7 DAY),DATE_SUB(NOW(),INTERVAL 7 DAY)),
(3,6,'ORD-20260608-000001',750.00,750.00,'completed','PayPal','paid','Luis Fernandez','lfernandez@pamel.com','+507 6345-6789',DATE_SUB(NOW(),INTERVAL 4 DAY),DATE_SUB(NOW(),INTERVAL 4 DAY)),
(4,7,'ORD-20260610-000001',420.00,420.00,'pending','PayPal','pending','Maria Torres','mtorres@pamel.com','+507 6456-7890',NULL,DATE_SUB(NOW(),INTERVAL 2 DAY)),
(5,8,'ORD-20260612-000001',1080.00,1080.00,'completed','PayPal','paid','Roberto Diaz','rdiaz@pamel.com','+507 6567-8901',DATE_SUB(NOW(),INTERVAL 1 DAY),DATE_SUB(NOW(),INTERVAL 1 DAY));

INSERT INTO order_items (order_id, product_id, product_name, quantity, price) VALUES
(1,1,'Elementary First Aid',1,450.00),
(1,2,'Personal Survival Techniques',1,500.00),
(2,2,'Personal Survival Techniques',1,500.00),
(3,6,'Ship Security Officer',1,750.00),
(4,4,'Personal Safety and Social Responsibilities',1,420.00),
(5,3,'Fire Prevention and Fire Fighting',1,550.00),
(5,5,'Maritime English',1,600.00);

-- Enrollments
INSERT INTO lms_enrollments (student_id, course_id, order_id, enrolled_at, progress_percentage, status, completed_at, certificate_issued, certificate_code) VALUES
(4,1,1,DATE_SUB(NOW(),INTERVAL 10 DAY),100.00,'completed',DATE_SUB(NOW(),INTERVAL 3 DAY),1,'CERT-EFA-2026-0001'),
(4,2,1,DATE_SUB(NOW(),INTERVAL 10 DAY),65.00,'active',NULL,0,NULL),
(5,2,2,DATE_SUB(NOW(),INTERVAL 7 DAY),100.00,'completed',DATE_SUB(NOW(),INTERVAL 1 DAY),1,'CERT-PST-2026-0001'),
(6,6,3,DATE_SUB(NOW(),INTERVAL 4 DAY),40.00,'active',NULL,0,NULL),
(7,4,4,DATE_SUB(NOW(),INTERVAL 2 DAY),15.00,'active',NULL,0,NULL),
(8,3,5,DATE_SUB(NOW(),INTERVAL 1 DAY),80.00,'active',NULL,0,NULL),
(8,5,5,DATE_SUB(NOW(),INTERVAL 1 DAY),10.00,'active',NULL,0,NULL),
(9,9,NULL,DATE_SUB(NOW(),INTERVAL 5 DAY),50.00,'active',NULL,0,NULL),
(10,10,NULL,DATE_SUB(NOW(),INTERVAL 3 DAY),30.00,'active',NULL,0,NULL);

-- Admission requests
INSERT INTO admission_requests (given_name, surname, passport_id, nationality, date_of_birth, country_of_birth, email, address, capacity, phone, course, consent_accepted, status, created_at) VALUES
('Carlos','Mendoza','PA-123456','Panamanian','1990-03-15','Panama','cmendoza2@mail.com','Calle 50, Panama City','AB Deck','+507 6100-0001','Elementary First Aid',1,'pending',DATE_SUB(NOW(),INTERVAL 5 DAY)),
('Ana','Gutierrez','PA-234567','Panamanian','1992-07-22','Panama','agutierrez2@mail.com','Via Espana, Panama City','Motorman','+507 6100-0002','Personal Survival Techniques',1,'approved',DATE_SUB(NOW(),INTERVAL 8 DAY)),
('Priya','Sharma','IN-345678','Indian','1988-11-10','India','psharma2@mail.com','Mumbai, Maharashtra','Officer Cadet','+91 9800-00003','Ship Security Officer',1,'reviewed',DATE_SUB(NOW(),INTERVAL 3 DAY)),
('Rajiv','Kumar','IN-456789','Indian','1985-05-30','India','rkumar2@mail.com','Chennai, Tamil Nadu','Second Engineer','+91 9800-00004','Fire Prevention and Fire Fighting',1,'pending',DATE_SUB(NOW(),INTERVAL 1 DAY));

-- Satisfaction surveys
INSERT INTO satisfaction_surveys (first_name, last_name, email, course_name, staff_attention_rating, training_quality_rating, instructor_performance_rating, infrastructure_rating, survey_date, created_at) VALUES
('Carlos','Mendoza','cmendoza@pamel.com','Elementary First Aid','Excellent','Excellent','Very Good','Good',DATE_SUB(NOW(),INTERVAL 9 DAY),DATE_SUB(NOW(),INTERVAL 9 DAY)),
('Ana','Gutierrez','agutierrez@pamel.com','Personal Survival Techniques','Very Good','Very Good','Excellent','Very Good',DATE_SUB(NOW(),INTERVAL 6 DAY),DATE_SUB(NOW(),INTERVAL 6 DAY)),
('Luis','Fernandez','lfernandez@pamel.com','Ship Security Officer','Good','Very Good','Very Good','Good',DATE_SUB(NOW(),INTERVAL 4 DAY),DATE_SUB(NOW(),INTERVAL 4 DAY)),
('Priya','Sharma','psharma@pamel.com','Elementary First Aid','Excellent','Good','Very Good','Excellent',DATE_SUB(NOW(),INTERVAL 2 DAY),DATE_SUB(NOW(),INTERVAL 2 DAY)),
('Rajiv','Kumar','rkumar@pamel.com','Personal Survival Techniques','Very Good','Excellent','Excellent','Very Good',DATE_SUB(NOW(),INTERVAL 1 DAY),DATE_SUB(NOW(),INTERVAL 1 DAY));

SET FOREIGN_KEY_CHECKS = 1;
