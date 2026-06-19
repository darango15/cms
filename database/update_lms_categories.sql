-- Sync lms_courses.category_id to match Moodle mdlwb_course categories
-- lms_categories: 4=LOGISTICS AND PORTS, 5=SPECIALIZED, 6=IMO COURSES, 7=ASSESSMENT OF COMPETENCE
-- Courses 4,5,8,18,140-152 are already correct (category_id=6 from Moodle mapping)

-- Tanker/specialized courses (currently wrong at category 7 — STCW V/1 tanker courses are SPECIALIZED)
UPDATE lms_courses SET category_id = 5 WHERE id IN (153, 154, 155);

-- Courses 156–191: various STCW/IMO courses auto-created from products with wrong category (1 or 2)
UPDATE lms_courses SET category_id = 6 WHERE id IN (
    156, -- Use of Leadership and Managerial Skills
    157, -- Passenger Safety, Cargo Safety and Hull Integrity Training
    158, -- Passenger Ship Crisis Management and Human Behaviour Training
    159, -- Passenger Ship Crowd Management Training
    160, -- Ship Security Officer
    161, -- Elementary First Aid
    162, -- Passenger Safety, Cargo Safety and Hull Integrity Training
    163, -- Security Awareness Training for All Seafarers
    164, -- Passenger Ship Crowd Management Training
    165, -- Passenger Ship Crisis Management and Human Behaviour Training
    166, -- Safety Training for Personnel Providing Direct Service to Passengers
    167, -- Radar Navigation, Radar Plotting and Use of ARPA - Operational Level
    168, -- Radar, ARPA, Bridge Teamwork and Search and Rescue - Management Level
    169, -- Elementary First Aid
    170, -- Medical First Aid
    171, -- Medical Care
    172, -- Personal Survival Techniques
    173, -- Fire Prevention and Fire Fighting
    174, -- Personal Safety and Social Responsibilities
    175, -- Ship Simulator and Bridge Teamwork
    176, -- Survival Craft and Rescue Boats other than Fast Rescue Boats
    177, -- General Operator Certificate (GMDSS)
    178, -- Operational Use of ECDIS
    179, -- Automatic Identification Systems (AIS)
    180, -- Marine Environmental Awareness
    181, -- Leadership and Teamwork
    182, -- Safety Training for Personnel Providing Direct Service to Passengers
    183, -- Advanced Training in Fire Fighting
    184, -- Maritime English
    185, -- Company Security Officer
    186, -- Port Facility Security Officer
    187, -- Security Awareness Training for Port Facility Personnel (designated)
    188, -- Security Awareness Training for All Port Facility Personnel
    189, -- Security Training for Seafarers with Designated Security Duties
    190, -- Security Awareness Training for All Seafarers
    191  -- Training Course for Instructors
);

-- Specialized management/technical courses
UPDATE lms_courses SET category_id = 5 WHERE id IN (
    192, -- Train the Simulator Trainer and Assessor
    198, -- High Voltage Installation - Operational Level
    200, -- Bridge Resource Management
    201, -- Engine Room Resource Management
    202  -- High Voltage Installation - Management Level
);

-- Assessment of Competence courses (STCW certification levels)
UPDATE lms_courses SET category_id = 7 WHERE id IN (
    193, -- Upgrading Course for Master and Chief Mate (Management Level)
    194, -- Upgrading Course for Chief Engineer and Second Engineer (Management Level)
    195, -- Ratings Forming Part of an Engineering Watch
    196, -- Able Seafarer - Deck
    197, -- Able Seafarer - Engine
    199  -- Ratings Forming Part of a Navigational Watch
);
