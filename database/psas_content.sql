-- PSAS Course Content: 7 Lessons + Quiz
-- Course ID: 18 | Security Awareness Training for Port Facility Personnel with Designated Security Duties
-- STCW Chapter XI-2 SOLAS 1974, ISPS Code, IMO MSC.1/Circ.1341
-- Images: public/uploads/psas/

UPDATE lms_courses SET course_code='PSAS' WHERE id=18;

-- Delete ALL existing lessons for course 18
DELETE FROM lms_lesson_progress WHERE lesson_id IN (SELECT id FROM lms_lessons WHERE course_id=18);
DELETE FROM lms_lessons WHERE course_id=18;

-- Delete existing quizzes and questions
DELETE FROM lms_quiz_answers WHERE attempt_id IN (
    SELECT id FROM lms_quiz_attempts WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=18)
);
DELETE FROM lms_quiz_attempts WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=18);
DELETE FROM lms_question_options WHERE question_id IN (
    SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=18)
);
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=18);
DELETE FROM lms_quizzes WHERE course_id=18;

-- ═══════════════════════════════════════════════════════════
-- LESSONS (7 chapters, 9 hours theoretical + 1 hour exam)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

-- ─── LESSON 1 ───────────────────────────────────────────────
(18, 'Chapter 1: Introduction',
'<h2>1. Introduction</h2>
<img src="/uploads/psas/image1.jpeg" alt="PSAS Course Cover - PAMEL Maritime Training Center" style="max-width:100%;border-radius:8px;margin:16px 0;">

<p>Shipping routes are the primary arteries of the global economy. Over 80% of all goods are transported by water. For everyone involved with this industry the world''s largest marine reinsurer, the proper functioning of global trade in goods and cargo, including safety at sea, is of key importance. With this in mind, it is imperative to identify risk-relevant developments at an early stage and raise security awareness at this industry.</p>

<h3>1.1 Course Overview</h3>
<p>The course provides participants with the knowledge, understanding and proficiencies as required by the ISPS Code to undertake the tasks, duties and responsibilities as security awareness training for all port facility personnel. Practical case studies, exercises and videos are used to illustrate possible measures to comply with the maritime security requirements as laid down in the ISPS Code. Achievement of competencies is assessed by means of a final test.</p>

<p><strong>Competencies to be Achieved:</strong> Personnel designated for security awareness training should be able to:</p>
<ul>
<li>Develop, maintain, and supervise the implementation of a Port Facility Security Plan.</li>
<li>Ensure proper operation of security equipment and systems.</li>
<li>Assess security risk, threat, and vulnerability.</li>
<li>Ensure appropriate security measures are implemented and maintained.</li>
<li>Encourage security awareness and vigilance.</li>
</ul>

<h3>1.2 Current Threats and Patterns to Maritime Security</h3>
<p><strong>Piracy:</strong> Escalating violence, with pirates becoming more professional and heavily armed. Attacks occur mostly in port areas, though piracy by definition usually occurs on ships at sea.</p>
<p><strong>Decrease in Hijacks:</strong> An 83% global decrease, driven by improved law enforcement in Southeast Asia targeting cargo and bunker theft.</p>
<p><strong>Increase in Kidnaps:</strong> A 44% global increase, particularly in the Gulf of Guinea and Sulu/Celebes Seas, due to socioeconomic factors and the financial success of kidnapping.</p>
<p><strong>Increase in Terrorism in Ports and Offshore:</strong> Significant threats in the Middle East and North Africa (e.g., Libya, Yemen) with militants targeting infrastructure and vessels. Yemen''s insecurity, especially in the Bab el-Mandeb, is a major concern.</p>
<p><strong>Anchorage Crime:</strong> Remains a widespread threat, with regional shifts. Indonesia, West African ports (Congo, Nigeria, Ghana, Guinea, Sierra Leone), and Callao (Peru) are hotspots.</p>
<p><strong>Overall Trend:</strong> Despite a global decrease in maritime security incidents, high-severity maritime terrorism and kidnaps increased in recent years and are likely to continue.</p>
<p><strong>Terrorism Definition:</strong> Involves violence or threat of violence by extremist groups for political objectives, often using bombs, hijacking, or suicidal behavior.</p>

<h3>1.3 Port and Ship Operations Conditions</h3>
<ul>
<li>Port activities include vessel operations, cargo handling, transportation, storage, and infrastructure maintenance.</li>
<li>Port work is often stressful and dangerous, with shift work leading to fatigue and physical demands causing musculoskeletal disorders.</li>
<li>Port security must be integrated into national transportation planning and considered in early design phases to limit criminal exploitation.</li>
<li>The goal of port security is to ensure trade can be conducted safely, free from criminal activity, and without becoming a conduit for such activity.</li>
<li>Port security operations must be proactive, requiring intelligence and investigative coordination with law enforcement and industry security departments.</li>
</ul>',
'text', 1, 60, 1),

-- ─── LESSON 2 ───────────────────────────────────────────────
(18, 'Chapter 2: Maritime Security Policy',
'<h2>2. Maritime Security Policy</h2>
<p>Solutions are being sought on all levels in the fight against piracy. Attention focuses above all on protection for shipping routes, the use of security personnel and on the political and social situation in and around the world.</p>

<h3>2.1 Relevant International Conventions, Codes, and Recommendations</h3>
<p><strong>UN Resolutions:</strong> Important for combating piracy, with Resolution 1851 allowing land-based actions (e.g., Operation Atalanta).</p>
<p><strong>Joint International Anti-Piracy Operation (IMO, WFP, UNODC):</strong> Aims to tackle root causes through political, security, and socio-economic measures.</p>
<p><strong>Djibouti Code of Conduct (2009):</strong> Supports riparian states in fighting piracy by improving coordination, information exchange, legal/technical training, and strengthening national legal systems.</p>

<h3>2.2 Relevant Government Legislation and Regulations</h3>
<p><strong>IMO Resolutions:</strong> Various resolutions adopted since 1983 to prevent piracy and unlawful acts against ships and passengers (e.g., A.545(13), A.584(14), MSC/Circ.443).</p>
<p><strong>Convention for the Suppression of Unlawful Acts against the Safety of Maritime Navigation (SUA) (1988):</strong> Obliges governments to extradite or prosecute offenders for acts like ship seizure, violence on board, or placing destructive devices.</p>
<p><strong>Post-9/11 Developments:</strong> The IMO Diplomatic Conference in December 2002 led to amendments to SOLAS 1974 (effective July 1, 2004), including:</p>
<ul>
<li>Chapter V: Automated Identification System (AIS).</li>
<li>Chapter XI-1: Ship Identification Number and Continuous Synopsis Record (CSR).</li>
<li>Chapter XI-2: Measures to enhance maritime security and the International Ship and Port Facility Security (ISPS) Code.</li>
</ul>
<p><strong>ISPS Code:</strong> Part A is mandatory, while Part B provides recommendations for compliance.</p>

<h3>2.3 Maritime Transportation Security Act of 2002 (MTSA)</h3>
<p>U.S. implementation of the ISPS Code, effective July 1, 2004.</p>
<ul>
<li>Requires vulnerability assessments and security plans for vessels and port facilities.</li>
<li>Established Area Maritime Security Committees for coordination.</li>
<li>Key features include: vulnerability assessments, national and area security plans, Transportation Security Cards, grants for security enhancement, foreign port antiterrorism assessment, enhanced seafarer identification, Maritime Security Advisory Committees, AIS installation, intermodal security programs, civil penalties.</li>
</ul>

<h3>2.4 Customs-Trade Partnership Against Terrorism (C-TPAT)</h3>
<p>A voluntary public-private partnership by U.S. Customs and Border Protection (CBP) to strengthen international supply chains and border security. Members agree to protect the supply chain, identify security gaps, and implement security measures.</p>
<p><strong>Benefits:</strong> Reduced CBP examinations, faster inspections, access to FAST Lanes, and recognition as a trusted trade partner.</p>

<h3>2.5 Container Security Initiative (CSI)</h3>
<p>Developed by U.S. Customs Service post-9/11 to address the threat of terrorist use of maritime containers.</p>
<p><strong>Core Elements:</strong> Identifying high-risk containers, prescreening and evaluating containers at foreign ports, and using technology for rapid screening.</p>

<h3>2.6 Definitions Related to Maritime Security</h3>
<p>Trainees need a working knowledge of terms from SOLAS Chapter XI-2 Regulation 1 and ISPS Code Part A Section 2.</p>

<h3>2.7 Handling Sensitive Information and Communications</h3>
<p>Trainees must understand that certain information is security-sensitive and its sensitivity level can change with security levels (1, 2, 3). They must appreciate the risk of security leaks through improper communication.</p>',
'text', 2, 45, 1),

-- ─── LESSON 3 ───────────────────────────────────────────────
(18, 'Chapter 3: Security Responsibilities',
'<h2>3. Security Responsibilities</h2>
<p>This section gives trainees a clear picture of the proportions of the maritime security system conceived by the IMO and shows how the various entities work together to form an efficient and effective whole.</p>

<h3>3.1 Contracting Governments</h3>
<p>SOLAS Chapters XI-1 and XI-2 discuss the roles of the contracting governments and their obligations in the overall scheme to enhance maritime security. Understanding this helps trainees comprehend how and why their own governments have acted and how they may experience the port state control exercised by another government.</p>

<h3>3.2 Recognized Security Organizations (RSO)</h3>
<p>Recognized Security Organizations are defined in SOLAS Chapter XI-2 Regulation 1 part 1.16 and discussed throughout Parts A and B of the ISPS Code. Trainees should understand how and when an RSO may take on the security related activities of a contracting government. This may be of particular importance to the Company Security Officer and the Port Facility Security Officer.</p>

<h3>3.3 The Company</h3>
<p>The company is defined by SOLAS Chapter XI-1 and is given numerous obligations under Chapter XI-2 and the ISPS Code — from Continuous Synopsis Records to the maintenance of the International Ship Security Certificate. Trainees should understand the role of the company and the support that they should expect from it.</p>

<h3>3.4 The Ship</h3>
<p>The term "ship" as used here means a ship to which Chapter XI of SOLAS applies. Various segments of Chapter XI and the ISPS Code discuss the persons, activities, plans, documentation and so forth that a ship will be exposed to in a security context. All trainees need to understand these requirements as they relate to this important cornerstone of a maritime transportation system.</p>

<h3>3.5 The Port Facility</h3>
<p>The Port Facility is defined in SOLAS Chapter XI-2 Regulation 1 part 1.9 and is the location where a ship/port interface takes place. Numerous duties and activities are assigned to the Port Facility. All trainees should understand the role of the Port Facility in maintaining the security of a maritime transportation system.</p>

<h3>3.6 Key Security Personnel</h3>
<p>Trainees should understand the role of each of these persons and know what to expect from each in terms of authority and responsibility. The ISPS Code Parts A and B clearly delineate the functions, duties, and training requirements:</p>
<ul>
<li><strong>Ship Security Officer (SSO)</strong></li>
<li><strong>Company Security Officer (CSO)</strong></li>
<li><strong>Port Facility Security Officer (PFSO)</strong></li>
<li><strong>Shipboard personnel with specific security duties</strong></li>
<li><strong>Port facility personnel with specific security duties</strong></li>
</ul>
<p>In the end these are the very people that will make the security plans work and will recognize areas for improvement. They will each need to appreciate their own role as well as that played by the others.</p>',
'text', 3, 75, 1),

-- ─── LESSON 4 ───────────────────────────────────────────────
(18, 'Chapter 4: Port Facility Security Actions',
'<h2>4. Port Facility Security Actions</h2>
<p>This section covers material that both the Port Security Officer and all port facility personnel with security awareness should be very familiar with. Parts A and B of the ISPS Code are helpful in organizing material in this section — this is where ideas, plans, and preparation turn into actions and procedures.</p>

<h3>4.1 Actions Required by Different Levels of Security</h3>
<p>Includes measures to prevent piracy and armed robberies. Trainees should understand security measures for ships at sea and in port, and how to respond to security incidents at various security levels:</p>
<ul>
<li><strong>Security Level 1:</strong> Normal operating conditions — minimum appropriate protective security measures.</li>
<li><strong>Security Level 2:</strong> Heightened risk — additional protective security measures for a period of time.</li>
<li><strong>Security Level 3:</strong> Specific threat — further specific protective security measures for a limited period.</li>
</ul>

<h3>4.2 Maintaining Security on Ship/Port Interface</h3>
<p>This interface determines the need for a Port Facility Security Plan and its interaction with the Ship Security Plan. Trainees must understand the importance of this interaction — the setting of security levels by the port or by the ship, with liaison services provided by the Company Security Officer, will allow the Port Facility Security Officer and the Ship Security Officer to understand their duties and constraints.</p>

<h3>4.3 Use of the Declaration of Security</h3>
<p>Trainees learn about the Declaration of Security''s function, when it should be completed, who can initiate it, and who is required to sign it, as defined in SOLAS Chapter XI-1 Regulation 1 and the ISPS Code. It is an agreement reached between a ship and either a port facility or another ship with which it interfaces.</p>

<h3>4.4 Reports on Security Incidents</h3>
<p>Trainees learn that all security incidents must be reported according to specific requirements. The report should include: date, time, and location of the incident; the nature of the incident; immediate actions taken; and impact on vessel or port operations.</p>

<h3>4.5 Procedures to Perform Inspections and Surveys</h3>
<p>For controlling and surveilling protection activities specified in the Port Facility Security Plan. Trainees learn to synthesize requirements into actual procedures:</p>
<ul>
<li>Security inspections of the port facility.</li>
<li>Controlling cargo and provisions for the port facilities and ships.</li>
<li>Monitoring port facility areas, deck areas and areas surrounding the ship.</li>
</ul>

<h3>4.6 Procedures for Conducting Protection Exercises and Drills</h3>
<p><strong>Objective:</strong> Ensure personnel proficiency in security duties at all security levels and identify deficiencies.</p>
<ul>
<li><strong>Drill Frequency:</strong> At least once every three months. A drill within one week if more than 25% of personnel change.</li>
<li><strong>Drill Elements:</strong> Test responses to damage, hijacking, tampering, unauthorized access, smuggling, use of ship as weapon, and attacks.</li>
<li><strong>Exercise Frequency:</strong> At least once per calendar year, with no more than 18 months between exercises.</li>
<li><strong>Exercise Participants:</strong> May include Company Security Officers, Port Facility Security Officers, relevant authorities, and Ship Security Officers.</li>
<li><strong>Exercise Focus:</strong> Test communications, coordination, resource availability, and response.</li>
<li><strong>Exercise Types:</strong> Full scale/live, tabletop simulation/seminar, or combined with other exercises.</li>
</ul>

<h3>4.7 Execution of Contingency Plans</h3>
<p>And provisions necessary to maintain essential operations of the port facility and the ship-port interface. This covers incident response planning for terrorism and criminal activities: bomb threats, explosions, piracy, and hijackings.</p>',
'text', 4, 120, 1),

-- ─── LESSON 5 ───────────────────────────────────────────────
(18, 'Chapter 5: Identification of Security Threats',
'<h2>5. Identification of Security Threats</h2>

<h3>5.1 Recognition of Techniques Used to Circumvent Protection</h3>
<p>Trainees should be cautioned that no security equipment or measure is infallible. They should be aware of the known techniques that can be employed to evade security systems and controls, such as:</p>
<ul>
<li>Disabling alarm systems.</li>
<li>Picking of locks.</li>
<li>Jamming of radio signals.</li>
<li>Impersonation of authorized personnel.</li>
<li>Forged or stolen credentials.</li>
</ul>

<h3>5.2 Recognition and Detection of Weapons, Hazardous Substances and Devices</h3>
<p>The focus of this session is on the characteristics and potential effects of prohibited weapons; explosives; chemical, biological, and radiological devices; substances and compounds that pose a hazard to personnel and/or ships and facilities:</p>
<ul>
<li><strong>Conventional Weapons:</strong> Firearms, knives, and blunt instruments.</li>
<li><strong>Improvised Explosive Devices (IEDs):</strong> Including letter bombs and vehicle-borne devices.</li>
<li><strong>Chemical, Biological, Radiological and Nuclear (CBRN) Threats:</strong> Substances capable of causing mass casualties.</li>
<li><strong>Incendiary Devices:</strong> Materials intended to cause fire.</li>
</ul>

<h3>5.3 Provisions Relating to Security for Dangerous Goods</h3>
<p>Security should be part of the daily routine for all staff involved with the transport of dangerous goods. Port facility personnel should be trained in the right habits and security should be made part of their work:</p>
<ul>
<li>Clearly formulated standards of responsibility and performance.</li>
<li>As part of their induction training, new staff should be instructed in security measures applicable to their duties.</li>
<li>Security duties should be built into every employee''s contract of employment.</li>
<li>Security should feature in the job description of every employee involved in the transport of dangerous goods.</li>
<li>Regular checks to verify that port facility personnel understand and use the security equipment fitted to their port facilities.</li>
</ul>

<h3>5.4 Crowd Management and Control Techniques</h3>
<p>Course participants should be familiarized with the basic patterns of behavior of people in groups during times of crisis. The critical importance of clear communication with vessel personnel, port facility personnel, passengers, and others involved should be underscored:</p>
<ul>
<li>Crowd behavior is often irrational and unpredictable under stress.</li>
<li>Designated crowd control personnel should be identified in the security plan.</li>
<li>Communication channels must be clear and unambiguous during emergencies.</li>
</ul>

<h3>5.5 Recognition of Characteristics and Behavior Patterns Posing a Threat</h3>
<p>Trainees learn techniques used to conduct physical and non-intrusive searches of persons, personal effects, baggage, cargo, and ship''s stores. Any search shall be undertaken in a manner that fully takes into account the human rights of the individual and preserves his or her basic human dignity.</p>
<p><strong>Key principles:</strong></p>
<ul>
<li>Members of the ship''s crew should not be required to search their colleagues or their personal effects unless there are clear security grounds for doing so.</li>
<li>Searches must be conducted with dignity and respect.</li>
<li>Findings must be documented and reported to the appropriate security officer.</li>
</ul>',
'text', 5, 90, 1),

-- ─── LESSON 6 ───────────────────────────────────────────────
(18, 'Chapter 6: Inspection, Control and Surveillance Activities',
'<h2>6. Inspection, Control and Surveillance Activities</h2>
<p>Trainees must be encouraged to adopt systematic and consistent approaches to the evaluation of security conditions and vulnerabilities. The focus will be more operational and less detailed than that of the Port Facility Security Officer. The use of checklists to perform assessments of security in day-to-day operations should be discussed.</p>

<h3>6.1 Methods to Control Access to the Port Facility and Its Restricted Areas</h3>
<p>Checklist categories for security assessment include:</p>
<ul>
<li>General layout of the ship.</li>
<li>Location of areas that should have restricted access, such as the bridge, engine room, radio room, etc.</li>
<li>Location and function of each actual or potential access point to the ship.</li>
<li>Open deck arrangement including the height of the deck above water.</li>
<li>Emergency and stand-by equipment available to maintain essential services.</li>
<li>Numerical strength, reliability, and security duties of the ship''s crew.</li>
<li>Existing security and safety equipment for protecting the passengers and crew.</li>
<li>Existing agreements with private security companies providing ship and waterside security services.</li>
<li>Existing protective measures and procedures in practice, including inspection, control and monitoring equipment, personnel identification documents and communication, alarm, lighting, access control and other appropriate systems.</li>
</ul>

<h3>6.2 Physical Registration Methods and Non-Intrusive Inspections</h3>
<p>Trainees learn techniques used to conduct physical and non-intrusive searches of persons, personal effects, baggage, cargo, and ship''s stores.</p>
<ul>
<li>Members of the ship''s crew should not be required to search their colleagues or their personal effects unless there are clear security grounds for doing so.</li>
<li>Any such search shall be undertaken in a manner that fully takes into account the human rights of the individual and preserves his or her basic human dignity.</li>
<li>Non-intrusive search methods include: visual inspection, use of scanners and detectors, and document verification.</li>
</ul>

<h3>6.3 Maintain Security on Ship/Port Interface</h3>
<p>The ship/port interface is defined in SOLAS Chapter XI-2 Regulation 1. It is this interface that determines that a port facility exists and therefore determines the need for a Port Facility Security Plan and the interaction with the Ship Security Plan. The setting of security levels by the port or by the ship, with liaison services provided by the Company Security Officer, will allow the Port Facility Security Officer and the Ship Security Officer to understand their duties and constraints.</p>

<h3>6.4 Methods of Inspection of Cargo and Provisions</h3>
<p>Building on previous sections, trainees should be ready to synthesize the requirements and plans into actual procedures:</p>
<ul>
<li>Security inspections of cargo and provisions.</li>
<li>Controlling the cargo and provisions for port facilities and ships.</li>
<li>Monitoring port facility areas, deck areas and areas surrounding the ship.</li>
<li>Documentation and record-keeping for all inspections.</li>
</ul>

<h3>6.5 Recognition of Persons Who May Pose a Threat to Security</h3>
<p>Instructors should explain suspicious patterns of behavior, while emphasizing the importance of avoiding racial profiling and ethnic stereotyping. Examples of suspicious behaviors include:</p>
<ul>
<li>Unknown persons photographing vessels or facilities.</li>
<li>Unknown persons attempting to gain access to vessels or facilities.</li>
<li>Suspicious individuals establishing businesses or roadside food stands adjacent or in proximity to facilities.</li>
<li>Unknown persons loitering in the vicinity of ships or port facilities for extended periods of time.</li>
<li>Unknown persons telephoning facilities to ascertain security, personnel, or standard operating procedures.</li>
<li>Vehicles with personnel loitering and perhaps taking photographs or creating diagrams of vessels or facilities.</li>
<li>Small boats with personnel loitering and perhaps taking photographs or creating diagrams.</li>
<li>Suspicious general aviation aircraft operating in proximity to vessels or facilities.</li>
<li>Suspicious persons who may be carrying bombs or participating in suicide squad activities.</li>
<li>Unknown persons attempting to gain information by engaging personnel or their families in conversation.</li>
<li>Suspicious vendors attempting to sell merchandise near restricted areas.</li>
<li>Unknown or suspicious workmen trying to gain access to facilities to repair, replace, service, or install equipment.</li>
<li>Suspicious emails attempting to obtain information regarding the facility, personnel, or standard operating procedures.</li>
<li>Suspicious package drop-offs/attempted drop-offs.</li>
<li>Anti-national sentiments being expressed by employees or vendors.</li>
<li>Repeated or suspicious out-of-ordinary phone calls.</li>
<li>Recreational boaters posing as mariners in distress to attract assistance from other vessels.</li>
</ul>',
'text', 6, 90, 1),

-- ─── LESSON 7 ───────────────────────────────────────────────
(18, 'Chapter 7: Security Equipment',
'<h2>7. Security Equipment</h2>
<p>Course participants should be aware of the types of security equipment and systems that are useful in enhancing maritime security, both ashore and afloat.</p>

<h3>7.1 Security Equipment and Systems</h3>
<p>Examples of security equipment used in port and maritime security:</p>
<ul>
<li><strong>Ship Security Alert System (SSAS):</strong> A covert distress signal system allowing the ship to send alerts to authorities without alerting attackers.</li>
<li><strong>Locks:</strong> Physical security for hatches, doors, and access points.</li>
<li><strong>Lighting:</strong> Adequate illumination of decks, gangways, and access areas during hours of darkness.</li>
<li><strong>Handheld Radios:</strong> For communication between security personnel.</li>
<li><strong>GMDSS Equipment:</strong> Global Maritime Distress and Safety System for emergency communications.</li>
<li><strong>Closed Circuit Television (CCTV):</strong> For continuous monitoring of restricted and public areas.</li>
<li><strong>Automatic Intrusion Detection Device (Burglar Alarm):</strong> Sensors to detect unauthorized entry.</li>
<li><strong>Metal Detectors:</strong> Walk-through or handheld devices for detecting concealed metallic weapons.</li>
<li><strong>Explosive Detectors:</strong> Trace and vapor detection systems.</li>
<li><strong>Baggage Screening Equipment:</strong> X-ray machines and physical inspection tools.</li>
<li><strong>Container X-Ray Devices:</strong> For non-intrusive inspection of container contents.</li>
<li><strong>General Alarm:</strong> For alerting all personnel to a security threat or emergency.</li>
</ul>
<p>Participants are not expected to acquire detailed technical or scientific knowledge concerning the theoretical underpinnings of the operation of security equipment. The objective is to ensure familiarity with the capabilities and appropriate deployment of such devices and systems.</p>

<h3>7.2 Operational Limitations of Security Equipment and Systems</h3>
<p>The intent of this section is to communicate to trainees the functional limitations and operating constraints of security equipment they may encounter or be called upon to use:</p>
<ul>
<li><strong>Effective Range:</strong> All equipment has a defined operational range — beyond this range, reliability decreases.</li>
<li><strong>Environmental Sensitivities:</strong> Weather, humidity, temperature extremes, and electromagnetic interference can affect equipment performance.</li>
<li><strong>Operator (Human) Error:</strong> Even the best equipment fails when not properly operated — regular training is essential.</li>
<li><strong>False Positives/Negatives:</strong> No detection system is 100% accurate — secondary verification procedures are necessary.</li>
<li><strong>Power Dependency:</strong> Many systems require continuous power — backup power sources must be maintained.</li>
</ul>

<h3>7.3 Testing, Calibration and Maintenance of Security Equipment</h3>
<p>Trainees should be familiar with methods for ensuring the continuing accuracy, efficiency, and operational readiness of selected items of security equipment and associated systems:</p>
<ul>
<li>For the Ship Security Officer, the focus should be on the tasks and procedures required to support such equipment while the vessel is at sea.</li>
<li>Company Security Officer and Port Facility Security Officer trainees should understand the need for developing methods to ensure that the tasks and procedures required to support such equipment are in place and are adhered to.</li>
<li><strong>Key maintenance requirements:</strong>
  <ul>
  <li>Regular testing of alarms and detection systems.</li>
  <li>Calibration according to manufacturer specifications.</li>
  <li>Maintenance logs and records to be kept up to date.</li>
  <li>Defects to be reported and rectified immediately.</li>
  </ul>
</li>
</ul>',
'text', 7, 60, 1);


-- ═══════════════════════════════════════════════════════════
-- QUIZ
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_quizzes (course_id, lesson_id, title, description, pass_percentage, time_limit, is_active)
VALUES (18, NULL,
  'Final Evaluation — PSAS',
  'Security Awareness Training for Port Facility Personnel with Designated Security Duties. Minimum passing score: 70%. STCW Chapter XI-2 SOLAS 1974, ISPS Code.',
  70.00, 60, 1);

SET @quiz_id = LAST_INSERT_ID();

-- ═══════════════════════════════════════════════════════════
-- QUESTIONS (20)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'What percentage of all goods worldwide are transported by water?', 'multiple_choice', 1, 1),
(@quiz_id, 'What does the acronym ISPS stand for in maritime security?', 'multiple_choice', 1, 2),
(@quiz_id, 'Which SOLAS chapter deals with measures to enhance maritime security?', 'multiple_choice', 1, 3),
(@quiz_id, 'How many security levels are defined in the ISPS Code?', 'multiple_choice', 1, 4),
(@quiz_id, 'What is the minimum frequency for conducting security DRILLS at a port facility?', 'multiple_choice', 1, 5),
(@quiz_id, 'What is the minimum frequency for conducting security EXERCISES at a port facility?', 'multiple_choice', 1, 6),
(@quiz_id, 'Who is responsible for developing and implementing the Port Facility Security Plan?', 'multiple_choice', 1, 7),
(@quiz_id, 'What is the Declaration of Security?', 'multiple_choice', 1, 8),
(@quiz_id, 'The ISPS Code Part A is:', 'multiple_choice', 1, 9),
(@quiz_id, 'What does the Ship Security Alert System (SSAS) do?', 'multiple_choice', 1, 10),
(@quiz_id, 'Which post-9/11 U.S. law implemented the ISPS Code domestically?', 'multiple_choice', 1, 11),
(@quiz_id, 'Which of the following is NOT a recognized suspicious behavior that may indicate a security threat?', 'multiple_choice', 1, 12),
(@quiz_id, 'What is the Djibouti Code of Conduct (2009) primarily aimed at?', 'multiple_choice', 1, 13),
(@quiz_id, 'A Recognized Security Organization (RSO) is defined in which SOLAS chapter and regulation?', 'multiple_choice', 1, 14),
(@quiz_id, 'Under ISPS Code, if more than 25% of port facility security personnel change, a security drill must be conducted within:', 'multiple_choice', 1, 15),
(@quiz_id, 'What does CCTV stand for in the context of security equipment?', 'multiple_choice', 1, 16),
(@quiz_id, 'What is the main purpose of the Container Security Initiative (CSI)?', 'multiple_choice', 1, 17),
(@quiz_id, 'Which of the following best describes Security Level 3?', 'multiple_choice', 1, 18),
(@quiz_id, 'When conducting searches of persons, what must always be respected?', 'multiple_choice', 1, 19),
(@quiz_id, 'The ship/port interface is the determining factor for the need to establish a:', 'multiple_choice', 1, 20);

SET @q1  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=1);
SET @q2  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=2);
SET @q3  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=3);
SET @q4  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=4);
SET @q5  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=5);
SET @q6  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=6);
SET @q7  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=7);
SET @q8  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=8);
SET @q9  = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=9);
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=10);
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=11);
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=12);
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=13);
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=14);
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=15);
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=16);
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=17);
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=18);
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=19);
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=20);

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
-- Q1: Over 80%
(@q1, 'Over 50%',  0, 1),
(@q1, 'Over 65%',  0, 2),
(@q1, 'Over 80%',  1, 3),
(@q1, 'Over 95%',  0, 4),

-- Q2: International Ship and Port Facility Security
(@q2, 'International Safety and Protection Systems',                         0, 1),
(@q2, 'International Ship and Port Facility Security',                       1, 2),
(@q2, 'Integrated Security and Port Surveillance',                           0, 3),
(@q2, 'International Standards for Port Security',                           0, 4),

-- Q3: Chapter XI-2
(@q3, 'Chapter V',    0, 1),
(@q3, 'Chapter IX',   0, 2),
(@q3, 'Chapter XI-1', 0, 3),
(@q3, 'Chapter XI-2', 1, 4),

-- Q4: 3 security levels
(@q4, '2', 0, 1),
(@q4, '3', 1, 2),
(@q4, '4', 0, 3),
(@q4, '5', 0, 4),

-- Q5: At least once every 3 months
(@q5, 'Once per month',             0, 1),
(@q5, 'At least every 3 months',    1, 2),
(@q5, 'At least every 6 months',    0, 3),
(@q5, 'Once per year',              0, 4),

-- Q6: At least once per calendar year (no more than 18 months between)
(@q6, 'Every 3 months',                                          0, 1),
(@q6, 'Every 6 months',                                          0, 2),
(@q6, 'At least once per calendar year, no more than 18 months between exercises', 1, 3),
(@q6, 'Every 2 years',                                           0, 4),

-- Q7: Port Facility Security Officer (PFSO)
(@q7, 'Ship Security Officer (SSO)',                    0, 1),
(@q7, 'Company Security Officer (CSO)',                 0, 2),
(@q7, 'Port Facility Security Officer (PFSO)',          1, 3),
(@q7, 'Flag State Administration',                      0, 4),

-- Q8: Agreement between ship and port facility
(@q8, 'A customs clearance document for cargo',                                 0, 1),
(@q8, 'An agreement between a ship and a port facility (or another ship) regarding their respective security measures', 1, 2),
(@q8, 'A certificate confirming ISPS Code compliance',                          0, 3),
(@q8, 'A report of security incidents submitted to authorities',                0, 4),

-- Q9: Mandatory
(@q9, 'Voluntary — provides recommendations for compliance', 0, 1),
(@q9, 'Mandatory',                                           1, 2),
(@q9, 'Optional for small vessels',                          0, 3),
(@q9, 'Applicable only to passenger ships',                  0, 4),

-- Q10: Covert distress signal
(@q10, 'A system to track the ship''s position at all times',                           0, 1),
(@q10, 'A covert distress signal system allowing the ship to alert authorities without notifying attackers', 1, 2),
(@q10, 'A fire alarm system integrated with the ship''s safety plan',                   0, 3),
(@q10, 'A system that locks all watertight doors in an emergency',                     0, 4),

-- Q11: Maritime Transportation Security Act (MTSA) 2002
(@q11, 'Homeland Security Act 2002',                   0, 1),
(@q11, 'Maritime Transportation Security Act (MTSA) 2002', 1, 2),
(@q11, 'Port and Maritime Security Act 2001',          0, 3),
(@q11, 'Container Security Act 2003',                  0, 4),

-- Q12: NOT suspicious behavior — e.g., authorized crew member boarding with proper ID
(@q12, 'Unknown persons photographing vessels',                                        0, 1),
(@q12, 'Authorized crew member arriving at the gangway with valid identification',     1, 2),
(@q12, 'Unknown persons loitering near port facilities for extended periods',         0, 3),
(@q12, 'Vehicles with personnel taking photographs of vessel diagrams',               0, 4),

-- Q13: Fighting piracy
(@q13, 'Regulating international cargo insurance',                                    0, 1),
(@q13, 'Supporting riparian states in fighting piracy through coordination, information exchange, and legal/technical training', 1, 2),
(@q13, 'Establishing a global port facility inspection protocol',                     0, 3),
(@q13, 'Setting minimum wage standards for maritime workers in East Africa',          0, 4),

-- Q14: Chapter XI-2, Regulation 1 part 1.16
(@q14, 'Chapter V, Regulation 19',           0, 1),
(@q14, 'Chapter IX, Regulation 2',           0, 2),
(@q14, 'Chapter XI-2, Regulation 1 part 1.16', 1, 3),
(@q14, 'Chapter XI-1, Regulation 3',         0, 4),

-- Q15: Within one week
(@q15, 'Within 24 hours',    0, 1),
(@q15, 'Within one week',    1, 2),
(@q15, 'Within one month',   0, 3),
(@q15, 'Within three months',0, 4),

-- Q16: Closed Circuit Television
(@q16, 'Coordinated Counter-Terrorism Vessel',    0, 1),
(@q16, 'Closed Circuit Television',               1, 2),
(@q16, 'Cargo Container Tracking Vehicle',        0, 3),
(@q16, 'Central Control and Tracking Vessel',     0, 4),

-- Q17: Address threat of terrorist use of maritime containers
(@q17, 'Ensure faster customs clearance for certified traders',                          0, 1),
(@q17, 'Address the threat of terrorist use of maritime containers by prescreening high-risk containers at foreign ports', 1, 2),
(@q17, 'Create a global database of all containers shipped worldwide',                   0, 3),
(@q17, 'Regulate container weight limits for safety purposes',                           0, 4),

-- Q18: Specific threat — further specific measures for a limited period
(@q18, 'Normal — minimum appropriate protective measures',                               0, 1),
(@q18, 'Heightened risk — additional measures for a period of time',                    0, 2),
(@q18, 'Specific threat — further specific protective measures for a limited period',   1, 3),
(@q18, 'Maximum alert — complete lockdown of the port facility',                        0, 4),

-- Q19: Human rights and basic human dignity
(@q19, 'Commercial efficiency and cargo inspection speed',                              0, 1),
(@q19, 'The human rights of the individual and their basic human dignity',              1, 2),
(@q19, 'The approval of the Ship Security Officer',                                     0, 3),
(@q19, 'The presence of at least two security guards at all times',                    0, 4),

-- Q20: Port Facility Security Plan
(@q20, 'Ship Security Certificate',           0, 1),
(@q20, 'International Safety Management Code compliance', 0, 2),
(@q20, 'Port Facility Security Plan',         1, 3),
(@q20, 'Declaration of Security',             0, 4);

-- ═══════════════════════════════════════════════════════════
-- VERIFY
-- ═══════════════════════════════════════════════════════════
SELECT 'Lessons:'   AS item, COUNT(*) AS total FROM lms_lessons WHERE course_id=18;
SELECT 'Quiz:'      AS item, COUNT(*) AS total FROM lms_quizzes WHERE course_id=18;
SELECT 'Questions:' AS item, COUNT(*) AS total FROM lms_questions WHERE quiz_id=@quiz_id;
SELECT 'Options:'   AS item, COUNT(*) AS total FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id);
