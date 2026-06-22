-- Security Awareness Training for All Seafarers (SAT) - PAM-MAE-SAT-62
-- Course ID: 204

UPDATE lms_courses SET
    course_code = 'PAM-MAE-SAT-62',
    title       = 'Security Awareness Training for All Seafarers',
    status      = 'published',
    image = 'https://pamel.edu.pa/uploads/sat/image1.jpeg'
WHERE id = 204;

DELETE FROM lms_lessons WHERE course_id = 204;
DELETE q, qq, qo
FROM lms_quizzes q
LEFT JOIN lms_questions qq ON qq.quiz_id = q.id
LEFT JOIN lms_question_options qo ON qo.question_id = qq.id
WHERE q.course_id = 204;

-- â”€â”€â”€ LESSONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

INSERT INTO lms_lessons (course_id, title, content, type, duration, order_num) VALUES

(204, 'Introduction', '<h2>Introduction</h2>
<img src="https://pamel.edu.pa/uploads/sat/image1.jpeg" alt="Security Awareness Training for All Seafarers" style="max-width:100%;margin-bottom:1rem;">
<h3>Course Overview</h3>
<p>As with other training courses the starting point should be a brief statement of the purpose of the course, a short review of the timeline, an introduction of participants, determination of knowledge and experience levels, and a brief description of the teaching facility.</p>
<h3>Competencies to Be Achieved</h3>
<p>The aim of the course is stated, competences of the course are reviewed, and the outcome of the learning objectives is made clear; namely, that "the expected learning outcome is that the trainee." Instructors should emphasize that no one is being trained to fight or similarly respond to security threats but rather that trainees should be able to contribute to the enhancement of maritime security through heightened awareness and the ability to recognize security threats and to respond appropriately.</p>
<h3>Current Security Threats and Patterns</h3>
<p>Current threats to maritime security should be summarized in order to provide a basis for understanding of the recent conventions and legislation in this area. Personnel receiving this training must clearly sense the reality of today''s security issues.</p>
<p><strong>Piracy and armed attacks</strong> continue to occur on an all too frequent basis. Attacks occur mostly in port areas whereas piracy by definition usually occurs on ships at sea. The United Nations Convention on the Law of the Sea, Article 101, defines piracy as any illegal acts of violence or detention or any act of depredation committed for private ends directed on the high seas against another ship or aircraft, or against persons or property on board such ship or aircraft.</p>
<p><strong>Terrorism</strong> usually involves violence or the threat of violence by extremist groups seeking to gain political objectives. Various types of bombs or bomb threats may be employed or hijacking may be the method by which the terrorist group hopes to make a statement.</p>
<p><strong>Contraband smuggling</strong>, a criminal activity, may result in large financial loss to the ship-owner. Drugs are often the commodity being smuggled and they may be brought on board in creative ways such as in luggage, stores, on or in a person''s body, or in electronic equipment.</p>
<p><strong>Cargo theft</strong>, an age-old problem, continues to plague the maritime industry and causes financial losses in staggering amounts. Prevention is normally the most effective method of dealing with this security threat.</p>
<p><strong>Collateral damage</strong> occurs when a nearby fire, explosion, or attack results in damage to a ship or facility. There are measures that may minimize the consequences of this type of damage.</p>
<h3>Ship and Port Operations and Conditions</h3>
<p>This section provides trainees with sufficient understanding of the larger transportation and logistics context in which maritime operations occur. A basic understanding of the general patterns and mechanisms of cargo and passenger movement through international and intermodal transportation chains is essential for those charged with enhancing maritime security. Trainees should also be exposed to the fundamentals of cargo tracking and related information systems in the context of security.</p>', 'text', 30, 1),

(204, 'Maritime Security Policy', '<h2>Maritime Security Policy</h2>
<h3>Awareness of Relevant International Conventions, Codes, and Recommendations</h3>
<p>The International Maritime Organization (IMO) has adopted a number of resolutions and conventions to minimize threats to security in maritime transportation, including:</p>
<ul>
<li><strong>Resolution A.545(13)</strong> â€“ Measures To Prevent Acts Of Piracy And Armed Robbery Against Ships (1983)</li>
<li><strong>Resolution A.584(14)</strong> â€“ Measures To Prevent Unlawful Acts Which Threaten Safety Of Ships And Security Of Passengers (1985, reviewed 2001)</li>
<li><strong>MSC/Circ.443</strong> â€“ Measures To Prevent Unlawful Acts Against Passengers And Crew On Board Ships (1986)</li>
<li><strong>SUA Convention (1988)</strong> â€“ Convention for the Suppression of Unlawful Acts against the Safety of Maritime Navigation; entered into force March 1, 1992. Obliges contracting governments either to extradite or prosecute alleged offenders.</li>
</ul>
<p>Following September 11, 2001, the IMO developed new maritime security measures adopted at the Diplomatic Conference of December 2002. These amendments to SOLAS 74 entered into force on <strong>July 1, 2004</strong>, introducing Chapter XI-2 Regulations 1â€“13 and the ISPS Code.</p>
<h3>Awareness of Relevant Government Legislation and Regulations</h3>
<p>Some governments have acted on a national level to produce legislation concerned with maritime security. Examples include the Maritime Transportation Security Act of 2002 (MTSA 2002) and the Customs-Trade Partnership Against Terrorism (C-TPAT).</p>
<h3>Definitions</h3>
<p>Trainees need a working knowledge of terms found in SOLAS Chapter XI-2 Regulation 1 and the ISPS Code Part A section 2. For instance, the Ship Security Officer is a person <em>on board the ship</em>, making it impossible for a Company Security Officer to simultaneously act as the Ship Security Officer.</p>
<h3>Handling Sensitive Security-Related Information and Communications</h3>
<p>Certain information and communications will be considered security sensitive, and the level of sensitivity may change as do security levels 1, 2, and 3. All personnel must appreciate the risk of security leaks through communication by improper methods or to the wrong persons.</p>', 'text', 60, 2),

(204, 'Security Responsibilities', '<h2>Security Responsibilities</h2>
<p>This section gives trainees a clear picture of the maritime security system and how the various entities work together to form an efficient and effective whole.</p>
<h3>Contracting Governments</h3>
<p>SOLAS Chapters XI-1 and XI-2 discuss the obligations of contracting governments in the overall scheme to enhance maritime security. Understanding this helps trainees comprehend how their governments have acted and how they may experience port state control exercised by another government.</p>
<h3>Recognized Security Organizations (RSO)</h3>
<p>RSOs are defined in SOLAS Chapter XI-2 Regulation 1 part 1.16. Trainees should understand how and when an RSO may take on the security-related activities of a contracting government.</p>
<h3>The Company</h3>
<p>The company is given numerous obligations under Chapter XI-2 and the ISPS Code, from Continuous Synopsis Records to maintenance of the International Ship Security Certificate.</p>
<h3>The Ship</h3>
<p>Various segments of Chapter XI and the ISPS Code discuss the persons, activities, plans, documentation, and procedures that a ship will be exposed to in a security context. All trainees need to understand these requirements as they relate to this cornerstone of maritime transportation.</p>
<h3>The Port Facility</h3>
<p>The Port Facility is defined in SOLAS Chapter XI-2 Regulation 1 part 1.9 and is the location where a ship/port interface takes place. Numerous duties and activities are assigned to the Port Facility in maintaining maritime security.</p>
<h3>Key Security Personnel</h3>
<ul>
<li><strong>Ship Security Officer (SSO)</strong> â€“ Person on board the ship responsible for implementing the Ship Security Plan and liaising with the CSO and PFSO</li>
<li><strong>Company Security Officer (CSO)</strong> â€“ Person designated by the company to develop, implement, and maintain the Ship Security Plan</li>
<li><strong>Port Facility Security Officer (PFSO)</strong> â€“ Person responsible for development and implementation of the Port Facility Security Plan</li>
<li><strong>Seafarers with designated security duties</strong> â€“ Crew members assigned specific security responsibilities under the Ship Security Plan</li>
<li><strong>Port facility personnel with designated security duties</strong> â€“ Port workers with specific security roles under the Port Facility Security Plan</li>
</ul>
<p>Trainees should understand the role of each of these persons and know what to expect from each in terms of authority and responsibility. The ISPS Code Parts A and B clearly delineate the functions, duties, and training requirements for each category.</p>', 'text', 60, 3),

(204, 'Threat Identification, Recognition, and Response', '<h2>Threat Identification, Recognition, and Response</h2>
<h3>Recognition and Detection of Weapons, Dangerous Substances and Devices</h3>
<p>The focus of this session is on the characteristics and potential effects of prohibited weapons; explosives; chemical, biological, and radiological devices; and substances and compounds that pose a hazard to personnel and/or ships and facilities.</p>
<h3>Recognition of Persons Posing Potential Security Risks</h3>
<p>Instructors should explain suspicious patterns of behavior, while emphasizing the importance of <strong>avoiding racial profiling and ethnic stereotyping</strong>. Examples of suspicious behaviors include:</p>
<ul>
<li>Unknown persons photographing vessels or facilities</li>
<li>Unknown persons attempting to gain access to vessels or facilities</li>
<li>Suspicious individuals establishing businesses adjacent or in proximity to facilities</li>
<li>Unknown persons loitering in the vicinity of ships or port facilities for extended periods</li>
<li>Unknown persons telephoning facilities to ascertain security, personnel, or operating procedures</li>
<li>Vehicles with personnel loitering and perhaps taking photographs or diagrams of vessels</li>
<li>Small boats with personnel loitering near vessels or facilities</li>
<li>Suspicious general aviation aircraft operating in proximity to vessels or facilities</li>
<li>Suspicious persons who may be carrying bombs or participating in suicide squad activities</li>
<li>Unknown persons attempting to gain information by engaging personnel or their families in conversation</li>
<li>Suspicious vendors attempting to sell merchandise</li>
<li>Unknown or suspicious workmen trying to gain access to facilities to repair, replace, or install equipment</li>
<li>Suspicious emails attempting to obtain information regarding the facility or personnel</li>
<li>Suspicious package drop-offs or attempted drop-offs</li>
<li>Anti-national sentiments expressed by employees or vendors, or pamphlets distributed to employees</li>
<li>Repeated or suspicious out-of-ordinary phone calls</li>
<li>Recreational boaters posing as mariners in distress to attract assistance from other vessels</li>
</ul>
<h3>Techniques Used to Circumvent Security Measures</h3>
<p>Trainees should be cautioned that no security equipment or measure is infallible. Known techniques to evade security systems include disabling alarm systems, picking of locks, jamming of radio signals, and other methods.</p>', 'text', 60, 4),

(204, 'Ship Security Actions', '<h2>Ship Security Actions</h2>
<p>This section covers material that both the Ship Security Officer and the Company Security Officer should be very familiar with. Parts A and B of the ISPS Code are helpful in organizing this material â€” this is where ideas, plans, and preparation turn into actions and procedures.</p>
<h3>Actions Required by Different Security Levels</h3>
<p>Different types of security measures apply depending on whether ships are at sea or in port, and on the current security level. The three security levels are:</p>
<ul>
<li><strong>Security Level 1 (Normal)</strong> â€“ Minimum appropriate protective security measures maintained at all times</li>
<li><strong>Security Level 2 (Heightened)</strong> â€“ Additional protective security measures maintained for a period of time due to increased risk of a security incident</li>
<li><strong>Security Level 3 (Exceptional)</strong> â€“ Further specific protective security measures maintained for a limited period when a security incident is probable or imminent</li>
</ul>
<p>Trainees may benefit from an in-class creation of a checklist detailing the appropriate generic actions given various conditions and security levels. Participants are not expected to acquire detailed technical knowledge of security equipment â€” the objective is familiarity with capabilities and appropriate deployment of such devices and systems.</p>
<h3>Reporting Security Incidents</h3>
<p>All security incidents must be reported in accordance with specific reporting requirements. Trainees should understand the proper procedures for reporting incidents to ensure appropriate action is taken promptly. Instructors are encouraged to provide sample security incidents and have trainees explain how they would report these incidents.</p>', 'text', 45, 5),

(204, 'Preparation for Emergencies, Exercises and Practices', '<h2>Preparation for Emergencies, Exercises and Practices</h2>
<h3>Contingency Planning</h3>
<p>This portion of the course is concerned with incident response planning for a variety of contingencies associated with terrorism and other criminal activities in the maritime setting. Appropriate action to be taken in the case of bomb threats, explosions, piracy, hijackings, and similar events should be discussed.</p>
<h3>Security Drills</h3>
<p>The objective of drills is to ensure that shipboard personnel are proficient in all assigned security duties at all security levels and can identify security-related deficiencies. Key requirements:</p>
<ul>
<li>Drills must be conducted <strong>at least once every three months</strong></li>
<li>When more than <strong>25% of the ship''s personnel</strong> have been changed with personnel that have not previously participated in a drill on that ship within the last 3 months, a drill must be conducted <strong>within one week</strong> of the change</li>
</ul>
<p>Drills should test individual elements of the plan, including scenarios such as:</p>
<ul>
<li>Damage or destruction of the ship or port facility (explosives, arson, sabotage, vandalism)</li>
<li>Hijacking or seizure of the ship or persons on board</li>
<li>Tampering with cargo, essential ship equipment, or ship''s stores</li>
<li>Unauthorized access or use, including presence of stowaways</li>
<li>Smuggling weapons or equipment, including weapons of mass destruction</li>
<li>Use of the ship to carry those intending to cause a security incident</li>
<li>Use of the ship itself as a weapon or means to cause damage</li>
<li>Attacks from seaward while at berth or at anchor</li>
<li>Attacks while at sea</li>
</ul>
<h3>Exercises Involving Multiple Organizations</h3>
<p>Exercises involving Company Security Officers, Port Facility Security Officers, relevant government authorities, and Ship Security Officers should be carried out <strong>at least once each calendar year</strong> with no more than <strong>18 months between exercises</strong>. These may be:</p>
<ul>
<li>Full scale or live exercises</li>
<li>Tabletop simulation or seminar</li>
<li>Combined with other exercises such as search and rescue or emergency response exercises</li>
</ul>
<h3>Evaluation</h3>
<p>Upon successful completion of the examination carried out during and at the end of the course, the trainee will be awarded the relevant course completion certificate issued by the training center.</p>', 'text', 45, 6);

-- â”€â”€â”€ QUIZ â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit)
VALUES (204, 'Security Awareness Training â€“ Final Exam', 'Final examination for Security Awareness Training for All Seafarers (PAM-MAE-SAT-62)', 70, 60);

SET @quiz_id = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'Which STCW regulation governs Security Awareness Training for All Seafarers?', 'multiple_choice', 1, 1),
(@quiz_id, 'According to the UN Convention on the Law of the Sea, what defines piracy?', 'multiple_choice', 1, 2),
(@quiz_id, 'Which of the following is an example of suspicious behavior that should be reported?', 'multiple_choice', 1, 3),
(@quiz_id, 'What does ISPS Code stand for?', 'multiple_choice', 1, 4),
(@quiz_id, 'What are the three security levels defined in the ISPS Code?', 'multiple_choice', 1, 5),
(@quiz_id, 'Who is the Ship Security Officer (SSO)?', 'multiple_choice', 1, 6),
(@quiz_id, 'How frequently must security drills be conducted on a ship?', 'multiple_choice', 1, 7),
(@quiz_id, 'When more than 25% of a ship''s personnel are new and have not participated in a recent drill, when must a drill be conducted?', 'multiple_choice', 1, 8),
(@quiz_id, 'What is the purpose of the SUA Convention (1988)?', 'multiple_choice', 1, 9),
(@quiz_id, 'How frequently must exercises involving CSOs, PFSOs, and SSOs be carried out?', 'multiple_choice', 1, 10),
(@quiz_id, 'Which organization adopted the ISPS Code?', 'multiple_choice', 1, 11),
(@quiz_id, 'Which of the following is a known technique used to circumvent security measures?', 'multiple_choice', 1, 12),
(@quiz_id, 'What SOLAS chapter specifically deals with maritime security measures?', 'multiple_choice', 1, 13),
(@quiz_id, 'What does SOLAS stand for?', 'multiple_choice', 1, 14),
(@quiz_id, 'What is the role of a Recognized Security Organization (RSO)?', 'multiple_choice', 1, 15),
(@quiz_id, 'When did the SOLAS amendments introducing Chapter XI-2 and the ISPS Code enter into force?', 'multiple_choice', 1, 16),
(@quiz_id, 'What is the primary objective of Security Awareness Training for All Seafarers?', 'multiple_choice', 1, 17),
(@quiz_id, 'Which security level indicates that a security incident is probable or imminent?', 'multiple_choice', 1, 18),
(@quiz_id, 'What should a seafarer do when they observe suspicious behavior near the vessel?', 'multiple_choice', 1, 19),
(@quiz_id, 'What is the maximum interval allowed between full-scale or tabletop security exercises involving multiple organizations?', 'multiple_choice', 1, 20);

-- Q1
SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'Regulation II/1', 0, 1),
(@q1, 'Regulation VI/6, paragraphs 1-3', 1, 2),
(@q1, 'Regulation V/4', 0, 3),
(@q1, 'Regulation IV/2', 0, 4);

-- Q2
SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'Any unlawful act committed within a port area', 0, 1),
(@q2, 'Illegal acts of violence or detention committed for private ends on the high seas', 1, 2),
(@q2, 'Any unauthorized boarding of a vessel in port', 0, 3),
(@q2, 'Any damage to cargo at sea regardless of intent', 0, 4);

-- Q3
SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Taking notes during a safety drill', 0, 1),
(@q3, 'Unknown persons photographing vessels or facilities', 1, 2),
(@q3, 'Working overtime in the cargo hold', 0, 3),
(@q3, 'Asking for directions to the port office', 0, 4);

-- Q4
SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'International Safety Protection Standard Code', 0, 1),
(@q4, 'International Ship and Port Facility Security Code', 1, 2),
(@q4, 'International Seafarers'' Protection System Code', 0, 3),
(@q4, 'International Security Policy Standard Code', 0, 4);

-- Q5
SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Levels A, B, and C', 0, 1),
(@q5, 'Levels 1, 2, and 3', 1, 2),
(@q5, 'Low, Medium, and High', 0, 3),
(@q5, 'Levels I, II, and III (Roman numerals)', 0, 4);

-- Q6
SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'A government inspector who boards the ship periodically', 0, 1),
(@q6, 'A person on board the ship responsible for implementing the Ship Security Plan', 1, 2),
(@q6, 'A company official based at company headquarters', 0, 3),
(@q6, 'The captain of the ship in all cases', 0, 4);

-- Q7
SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'At least once every six months', 0, 1),
(@q7, 'At least once every three months', 1, 2),
(@q7, 'At least once per year', 0, 3),
(@q7, 'Before every port call', 0, 4);

-- Q8
SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Within 24 hours of the change', 0, 1),
(@q8, 'Within one week of the change', 1, 2),
(@q8, 'Within one month of the change', 0, 3),
(@q8, 'At the next scheduled quarterly drill', 0, 4);

-- Q9
SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Standards of safety for seafarers at sea', 0, 1),
(@q9, 'Suppression of unlawful acts against the safety of maritime navigation', 1, 2),
(@q9, 'Standards of training for port facility security officers', 0, 3),
(@q9, 'Security of underwater areas in maritime zones', 0, 4);

-- Q10
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'At least twice per year', 0, 1),
(@q10, 'At least once each calendar year with no more than 18 months between exercises', 1, 2),
(@q10, 'At least every three months', 0, 3),
(@q10, 'At least every six months', 0, 4);

-- Q11
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'The United Nations Security Council', 0, 1),
(@q11, 'The International Maritime Organization (IMO)', 1, 2),
(@q11, 'The World Trade Organization (WTO)', 0, 3),
(@q11, 'The International Labor Organization (ILO)', 0, 4);

-- Q12
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Filing a security incident report', 0, 1),
(@q12, 'Disabling alarm systems or jamming radio signals', 1, 2),
(@q12, 'Conducting a security drill', 0, 3),
(@q12, 'Updating the ship security plan', 0, 4);

-- Q13
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Chapter IV', 0, 1),
(@q13, 'Chapter XI-2', 1, 2),
(@q13, 'Chapter VI', 0, 3),
(@q13, 'Chapter III', 0, 4);

-- Q14
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Standards of Logistics and Security at Sea', 0, 1),
(@q14, 'Safety of Life at Sea', 1, 2),
(@q14, 'Safety Operations at Sea', 0, 3),
(@q14, 'Security of Lifesaving at Sea', 0, 4);

-- Q15
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'To train all seafarers in security awareness on behalf of the IMO', 0, 1),
(@q15, 'To take on security-related activities of a contracting government when authorized', 1, 2),
(@q15, 'To provide security equipment exclusively to ships', 0, 3),
(@q15, 'To conduct annual security audits of all ports worldwide', 0, 4);

-- Q16
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'January 1, 2003', 0, 1),
(@q16, 'July 1, 2004', 1, 2),
(@q16, 'September 11, 2001', 0, 3),
(@q16, 'March 1, 1992', 0, 4);

-- Q17
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'To train seafarers to physically fight and neutralize security threats', 0, 1),
(@q17, 'To enhance maritime security through heightened awareness and recognition of threats', 1, 2),
(@q17, 'To qualify seafarers as Ship Security Officers', 0, 3),
(@q17, 'To teach seafarers how to handle weapons on board', 0, 4);

-- Q18
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Security Level 1', 0, 1),
(@q18, 'Security Level 3', 1, 2),
(@q18, 'Security Level 2', 0, 3),
(@q18, 'Security Level 4', 0, 4);

-- Q19
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Confront the suspicious person directly', 0, 1),
(@q19, 'Report it in accordance with established security incident reporting requirements', 1, 2),
(@q19, 'Ignore it if it does not directly affect your work', 0, 3),
(@q19, 'Document the behavior and report at the end of the voyage', 0, 4);

-- Q20
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Every 6 months', 0, 1),
(@q20, '18 months', 1, 2),
(@q20, '12 months with no exceptions', 0, 3),
(@q20, '24 months', 0, 4);

