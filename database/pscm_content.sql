-- PSCM: Passenger Ship Crowd Management Training
-- Course id=205, code=PSCM
-- Replaces any existing content for this course

DELETE FROM lms_question_options WHERE question_id IN (
    SELECT id FROM lms_questions WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 205
    )
);
DELETE FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 205
);
DELETE FROM lms_quizzes WHERE course_id = 205;
DELETE FROM lms_lessons WHERE course_id = 205;

UPDATE lms_courses SET
    title = 'Passenger Ship Crowd Management Training',
    course_code = 'PSCM',
    status = 'published',
    image = 'https://pamel.edu.pa/uploads/pscm/image1.jpeg',
    category_id = 6
WHERE id = 205;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, order_num, is_active, created_at) VALUES

(205, 'Introduction to the Course', '<div class="lesson-content">
<img src="https://pamel.edu.pa/uploads/pscm/image1.jpeg" alt="PSCM Course Manual Cover" style="max-width:100%;margin-bottom:1.5rem;">
<h2>1. Accidents on Board Passenger Ships</h2>
<p>The tragic loss of the <strong>MS Herald of Free Enterprise</strong>, <strong>MS Scandinavian Star</strong> and <strong>MS Estonia</strong> led to the amendment of STCW chapter V in 1995.</p>
<p>Maritime disasters involving passenger ships such as <strong>Princess of the Stars (2008)</strong>, <strong>St. Thomas Aquinas (2013)</strong> and <strong>MV Costa Concordia (2012)</strong>, which are mainly attributed to human related causes, suggest the need to have a training for passenger ship crowd management and human behavior training as prescribed in STCW regulation V/2.</p>
<h2>2. Overview of STCW Requirements</h2>
<p>This training is part of the mandatory minimum requirements for the training and qualification of masters, officers, ratings and other personnel on passenger ships as stated in <strong>STCW regulation V/2</strong> and paragraph 3 of section A-V/2 and table A-V/2-1 of the STCW Code.</p>
<h2>What is Crowd Management?</h2>
<div style="display:flex;gap:1rem;flex-wrap:wrap;margin:1rem 0;">
<img src="https://pamel.edu.pa/uploads/pscm/image2.jpeg" alt="Crowd Management" style="max-width:48%;">
<img src="https://pamel.edu.pa/uploads/pscm/image3.jpeg" alt="Crowd Management" style="max-width:48%;">
</div>
<p><em>Figure 1 - Crowd Management</em></p>
<p>It is the <strong>intelligent and disciplined application of practical skills</strong> to control and direct a crowd, both passengers and crew, in an emergency.</p>
<p>The outcome of an effective crowd management depends on your:</p>
<ul>
<li>Leadership qualities</li>
<li>Familiarity with layout of the ship and its escape routes</li>
<li>Knowledge of the emergency and safety procedures</li>
<li>Communication skills</li>
<li>Understanding of the communication behaviour of both passengers and crew in emergencies</li>
</ul>
<p>The ultimate objective of an effective crowd management is to <strong>optimize the chances of survival</strong> for both passengers and crew.</p>
</div>', 1, 1, NOW()),

(205, 'Shipboard Emergency Plans and Procedures', '<div class="lesson-content">
<h2>1. Contributing to the Implementation of Shipboard Emergency Plans and Procedures</h2>
<h3>1.1 Shipboard Emergency Plans, Instructions and Procedures</h3>
<img src="https://pamel.edu.pa/uploads/pscm/image4.png" alt="General ship design and layout" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 2 - General ship design and layout</em></p>
<p>Shipboard emergency plans (e.g., Crew Emergency Plan, Fire Control Plan, Life-Saving Appliances and Escape Route/Evacuation Plan, Damage Control Plan) serve as guidance for the crew. The purpose of these plans is to ease access to information needed in an emergency.</p>
<p>The shipboard emergency plans include:</p>
<ul>
<li><strong>Crew Emergency Plan</strong></li>
<li><strong>Fire Control Plan</strong></li>
<li><strong>Life-saving Appliances and Escape Route/Evacuation Plan</strong></li>
<li><strong>Damage Control Plan</strong></li>
</ul>
<h4>Crew Emergency Plan</h4>
<img src="https://pamel.edu.pa/uploads/pscm/image5.jpeg" alt="Crew emergency plan example" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 3 - Example of crew emergency plan</em></p>
<h4>Fire Control Plan</h4>
<p>It shows the locations, types and technical arrangements of the various fire-fighting equipment available onboard.</p>
<img src="https://pamel.edu.pa/uploads/pscm/image6.png" alt="Shipboard emergency plan example" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 4 - Example of shipboard emergency plan</em></p>
<img src="https://pamel.edu.pa/uploads/pscm/image7.jpeg" alt="Divisions of zones and sections" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 5 - Divisions of zones and sections</em></p>
<img src="https://pamel.edu.pa/uploads/pscm/image8.jpeg" alt="Fire screen doors" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 6 - Fire screen doors</em></p>
<p>Fire screen doors can be closed remotely from the bridge, or locally at each door by pushing a clearly marked button found next to the door.</p>
<h4>Damage Control Plan</h4>
<ul>
<li>Locations, categories and the control stations of the various watertight doors</li>
<li>Boundaries and the openings of the watertight compartments</li>
<li>Arrangements for the correction of any list due to flooding</li>
</ul>
<img src="https://pamel.edu.pa/uploads/pscm/image9.jpeg" alt="Watertight doors" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 7 - Watertight doors</em></p>
<img src="https://pamel.edu.pa/uploads/pscm/image10.jpeg" alt="Operating instructions" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 8 - Operating instructions (posters and signs showing how to operate various equipment)</em></p>
<h4>Life-Saving Appliances Plan and Escape Route Plan</h4>
<ul>
<li>Shows the locations and the types of the various life-saving appliances onboard</li>
<li>Outlines the recommended escape routes and the emergency exits</li>
</ul>
<img src="https://pamel.edu.pa/uploads/pscm/image11.png" alt="Evacuation route from assembly station to lifeboat stations" style="max-width:100%;margin:1rem 0;">
<p><em>Figure 9 - Evacuation route from assembly station to lifeboat stations</em></p>
<h3>1.2 Crew Muster Lists and Emergency Instructions</h3>
<p>The Crew Muster List contains clear instructions detailing the actions to be taken by each crew member on board in the event of an emergency. Copies should be posted in conspicuous locations (bridge, engine control room, accommodation alleyways).</p>
<p>Information includes: general emergency alarm system instructions, emergency signals (general, survival craft embarkation, abandon ship), crew number/rank/position, emergency station/location, duties/actions for each signal, and substitutes for key persons.</p>
<p><strong>Emergency Alarm Signals:</strong></p>
<table style="width:100%;border-collapse:collapse;margin:1rem 0;">
<thead><tr style="background:#f1f5f9;"><th style="padding:8px;border:1px solid #e2e8f0;text-align:left;">Type</th><th style="padding:8px;border:1px solid #e2e8f0;text-align:left;">Alarm Signal</th></tr></thead>
<tbody>
<tr><td style="padding:8px;border:1px solid #e2e8f0;">General emergency</td><td style="padding:8px;border:1px solid #e2e8f0;">7 or more short blasts and 1 long blast on the ship whistle and/or siren and alarm systems</td></tr>
<tr><td style="padding:8px;border:1px solid #e2e8f0;">Lifeboat embarkation</td><td style="padding:8px;border:1px solid #e2e8f0;">1 long blast on the ship whistle and/or siren and alarm systems</td></tr>
<tr><td style="padding:8px;border:1px solid #e2e8f0;">Abandon ship</td><td style="padding:8px;border:1px solid #e2e8f0;">Verbal order given by the Master or via the lifeboat preparation commander</td></tr>
</tbody>
</table>
<h3>1.3 Crowd Management Techniques</h3>
<p>Crowd management decision-making tool (stages):</p>
<ul>
<li><strong>Appraisal:</strong> Knowing what is going on.</li>
<li><strong>Planning:</strong> Actions in accordance with emergency plans.</li>
<li><strong>Execution:</strong> Performing the appropriate emergency action.</li>
<li><strong>Monitoring:</strong> Verifying effectiveness of the action plan.</li>
</ul>
<p><strong>Communication styles:</strong></p>
<ul>
<li><strong>"X" Style (Autocratic):</strong> Hard way — telling people what to do.</li>
<li><strong>"Y" Style (Democratic):</strong> Soft way — asking them to do something.</li>
<li><strong>"X/Y" Style:</strong> Combination of both.</li>
</ul>
<p><strong>Tools — use all available resources:</strong></p>
<ul>
<li><strong>Human:</strong> Crew members, passengers.</li>
<li><strong>Equipment:</strong> Uniform, high-visibility vest, colored caps, megaphones, 2-way radios, whistles, torches.</li>
<li><strong>Information:</strong> Placards, signs, symbols, safety posters, announcements.</li>
</ul>
</div>', 2, 1, NOW()),

(205, 'Assisting Passengers En Route to Muster and Embarkation Stations', '<div class="lesson-content">
<h2>2. Assisting Passengers En Route to Muster and Embarkation Stations</h2>
<h3>2.1 Giving Clear and Reassuring Orders</h3>
<p>When giving orders to passengers during an emergency:</p>
<ul>
<li>Present information precisely, avoid jargon, use common terminology, omit unnecessary details, speak consistently.</li>
<li>Establish physical presence and authority: be visible, wear uniforms, maintain a firm but polite and confident attitude.</li>
<li>Use appropriate communication equipment: UHF Radio, Telephone, Crew messengers, Megaphone, Hand signals.</li>
<li>Audible communication: appropriate Tone, Pace (slowly), Volume, Diction (clear words).</li>
<li>Key considerations: be clear/direct, never lie, repeat commands, use positive language.</li>
<li>Avoid words like "emergency/crisis/disaster" — use "incident/situation/minor technical problems" instead.</li>
</ul>
<h3>2.2 Managing Passengers in Corridors, Staircases and Passageways</h3>
<ul>
<li>Demonstrate the procedures to follow when directing passengers through corridors, stairs, and other places of passage.</li>
<li>Identify the challenges that may arise in managing passengers in corridors, stairs, and passageways.</li>
</ul>
<h3>2.3 Maintaining Escape Routes Clear of Obstructions</h3>
<ul>
<li>Keep escape routes and aisles clear of obstacles at all times — this is critical for safe evacuation.</li>
</ul>
<h3>2.4 Evacuation of Persons with Disability and Persons Needing Special Assistance</h3>
<p>Determine the appropriate evacuation method according to the type of disability and the situation. Types of lifting/carrying techniques include:</p>
<ul>
<li>Stretcher transport, Fireman lift, 4-handed seat, Drag carry, Pulling grip, Chair carry</li>
<li>Fore and aft carry, Hammock carry, 3-handed litter carry, 3-man carry</li>
<li>Clothes lift, Blanket carry, Piggy back carry, Sweetheart carry</li>
</ul>
<p>Two crew members are assigned per disabled person. Lifts/elevators are NOT used during evacuation. Report status to Muster Control.</p>
<h3>2.5 Methods of Searching Passengers Accommodation and Public Spaces</h3>
<p><strong>Passenger cabins and corridors:</strong> Wake passengers, check thoroughly, advise warm clothing and lifejackets, direct to stairway, assist through fire doors, collect lifejackets, report, mark cleared cabins.</p>
<p><strong>Public rooms/Open decks:</strong> Guide passengers, check all spaces, remove hindrances.</p>
<h3>2.6 Effective Mustering Procedures</h3>
<p><strong>Keeping order:</strong> Maintain order at the muster station. Describe actions to maintain order at meeting points.</p>
<p><strong>Reducing and avoiding panic:</strong> Understand and demonstrate procedures to prevent or reduce panic.</p>
<p><strong>Passenger lists for evacuation counts:</strong></p>
<ul>
<li>Use the passenger list for evacuation counts.</li>
<li>Count the passengers evacuated using the passenger list.</li>
<li>Report the number of passengers evacuated to the bridge.</li>
</ul>
<p><strong>Suitable clothing:</strong> Ensure passengers are properly clothed at the time of mustering. Describe actions to be taken if passengers are not properly clothed.</p>
<p><strong>Lifejackets:</strong> Check that passengers have properly donned their life jackets.</p>
<h3>2.7 Disembarking Passengers</h3>
<p>Guide passengers from the muster station to the lifeboat station, keeping family groups together. Use the <strong>"Crocodile queue"</strong> method: efficient and controlled movement where passengers hold the lifejacket of the person in front and never break the line.</p>
<p>Sequence of evacuation is ordered from the Bridge. Assign crew along the queue, consider wheelchair routes, and report when groups are cleared. Follow Lifeboat In-Charge (Coxswain) instructions.</p>
<p><strong>Abandonment priority:</strong> Passengers first (families with children first), assisted by designated crew. Crew embarks into assigned survival craft after passengers.</p>
<h3>3. Evaluation</h3>
<p>Evaluation enables the assessor (instructor) to ascertain if the learner has gained the required skills and knowledge. The purpose of evaluation is to:</p>
<ul>
<li>Assist student learning.</li>
<li>Identify student strengths and weaknesses.</li>
<li>Assess the effectiveness of a particular instructional strategy.</li>
<li>Assess and improve the effectiveness of curriculum programs.</li>
<li>Assess and improve teaching effectiveness.</li>
</ul>
<p>Upon successful completion of the examination, the trainee will be awarded the relevant course completion certificate issued by the training center.</p>
</div>', 3, 1, NOW());

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, created_at) VALUES
(205, 'PSCM Final Examination', 'Passenger Ship Crowd Management Training - Final Exam', 70, 60, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, order_num, created_at) VALUES
(@qid, 'What is the definition of Crowd Management in the context of passenger ship safety?', 'multiple_choice', 1, NOW()),
(@qid, 'Which maritime disasters directly led to the amendment of STCW chapter V in 1995?', 'multiple_choice', 2, NOW()),
(@qid, 'What is the ultimate objective of effective crowd management on a passenger ship?', 'multiple_choice', 3, NOW()),
(@qid, 'Which document contains clear instructions detailing the actions to be taken by each crew member in the event of an emergency?', 'multiple_choice', 4, NOW()),
(@qid, 'What is the correct general emergency alarm signal on a passenger ship?', 'multiple_choice', 5, NOW()),
(@qid, 'What are the four stages of the crowd management decision-making tool (framework)?', 'multiple_choice', 6, NOW()),
(@qid, 'Which communication style is described as "autocratic" or the "hard way" — telling people what to do?', 'multiple_choice', 7, NOW()),
(@qid, 'What information is shown on the Fire Control Plan?', 'multiple_choice', 8, NOW()),
(@qid, 'Which word or phrase should crew AVOID using when communicating with passengers during an emergency?', 'multiple_choice', 9, NOW()),
(@qid, 'What does the "Crocodile queue" method involve during passenger embarkation?', 'multiple_choice', 10, NOW()),
(@qid, 'How many crew members should be assigned to assist one person with a disability during evacuation?', 'multiple_choice', 11, NOW()),
(@qid, 'Which of the following is NOT a tool category available for crowd management?', 'multiple_choice', 12, NOW()),
(@qid, 'What must crew do to cabins after completing a search during evacuation?', 'multiple_choice', 13, NOW()),
(@qid, 'What signal is used for lifeboat embarkation?', 'multiple_choice', 14, NOW()),
(@qid, 'When giving orders to passengers, which audible communication factor should be considered?', 'multiple_choice', 15, NOW()),
(@qid, 'What is the priority order for boarding survival crafts during an abandonment?', 'multiple_choice', 16, NOW()),
(@qid, 'What is the purpose of the Damage Control Plan?', 'multiple_choice', 17, NOW()),
(@qid, 'Where should copies of the Crew Muster List be posted onboard?', 'multiple_choice', 18, NOW()),
(@qid, 'Which lifting technique involves two people forming a seat using their hands and forearms?', 'multiple_choice', 19, NOW()),
(@qid, 'What should crew do FIRST when they encounter passengers in cabins during an emergency evacuation?', 'multiple_choice', 20, NOW());

-- Question 1
SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'The intelligent and disciplined application of practical skills to control and direct a crowd in an emergency', 1, 1),
(@q1, 'The use of physical force to direct passengers toward evacuation routes', 0, 2),
(@q1, 'A set of alarm signals used to notify passengers of an emergency', 0, 3),
(@q1, 'The process of counting passengers at muster stations after an emergency', 0, 4);

-- Question 2
SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'MS Herald of Free Enterprise, MS Scandinavian Star, and MS Estonia', 1, 1),
(@q2, 'MV Costa Concordia, Princess of the Stars, and MS Estonia', 0, 2),
(@q2, 'MV Sewol, St. Thomas Aquinas, and MS Scandinavian Star', 0, 3),
(@q2, 'MS Estonia, MV Costa Concordia, and HMS Sheffield', 0, 4);

-- Question 3
SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'To optimize the chances of survival for both passengers and crew', 1, 1),
(@q3, 'To ensure all passengers reach the bridge as quickly as possible', 0, 2),
(@q3, 'To prevent any crew member from leaving their assigned post', 0, 3),
(@q3, 'To launch lifeboats within the minimum time required by SOLAS', 0, 4);

-- Question 4
SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Crew Muster List', 1, 1),
(@q4, 'Fire Control Plan', 0, 2),
(@q4, 'Damage Control Plan', 0, 3),
(@q4, 'General Arrangement Plan', 0, 4);

-- Question 5
SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, '7 or more short blasts and 1 long blast on the ship whistle and/or siren', 1, 1),
(@q5, '1 long blast on the ship whistle and/or siren', 0, 2),
(@q5, '3 short blasts followed by 3 long blasts', 0, 3),
(@q5, 'A verbal order given by the Master over the PA system', 0, 4);

-- Question 6
SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Appraisal, Planning, Execution, Monitoring', 1, 1),
(@q6, 'Detection, Assessment, Response, Recovery', 0, 2),
(@q6, 'Observe, Orient, Decide, Act', 0, 3),
(@q6, 'Alert, Contain, Evacuate, Report', 0, 4);

-- Question 7
SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'X Style', 1, 1),
(@q7, 'Y Style', 0, 2),
(@q7, 'X/Y Style', 0, 3),
(@q7, 'Z Style', 0, 4);

-- Question 8
SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Locations, types and technical arrangements of the various fire-fighting equipment onboard', 1, 1),
(@q8, 'Locations of all watertight doors and their control stations', 0, 2),
(@q8, 'The locations and types of all life-saving appliances and recommended escape routes', 0, 3),
(@q8, 'Emergency instructions for crew members and their muster stations', 0, 4);

-- Question 9
SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Emergency, crisis, or disaster', 1, 1),
(@q9, 'Incident, situation, or minor technical problem', 0, 2),
(@q9, 'Muster, embark, or abandon', 0, 3),
(@q9, 'Lifejacket, lifeboat, or survival craft', 0, 4);

-- Question 10
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Passengers hold the lifejacket of the person in front and never break the line', 1, 1),
(@q10, 'Passengers run in pairs to the lifeboat station as quickly as possible', 0, 2),
(@q10, 'Passengers stand in a circle around a crew member at the muster station', 0, 3),
(@q10, 'Passengers board lifeboats in alphabetical order by cabin number', 0, 4);

-- Question 11
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Two crew members', 1, 1),
(@q11, 'One crew member', 0, 2),
(@q11, 'Three crew members', 0, 3),
(@q11, 'Four crew members', 0, 4);

-- Question 12
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Financial resources (ship funds/petty cash)', 1, 1),
(@q12, 'Human resources (crew and passengers)', 0, 2),
(@q12, 'Equipment (uniforms, megaphones, radios)', 0, 3),
(@q12, 'Information (signs, announcements, placards)', 0, 4);

-- Question 13
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Mark the cabin as cleared/evacuated', 1, 1),
(@q13, 'Lock the cabin door to prevent re-entry', 0, 2),
(@q13, 'Leave a crew member standing guard outside', 0, 3),
(@q13, 'Radio the bridge with the cabin number before moving on', 0, 4);

-- Question 14
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, '1 long blast on the ship whistle and/or siren', 1, 1),
(@q14, '7 or more short blasts and 1 long blast', 0, 2),
(@q14, '3 short blasts on the ship whistle', 0, 3),
(@q14, 'A verbal order given by the Lifeboat In-Charge', 0, 4);

-- Question 15
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Tone, pace, volume, and diction', 1, 1),
(@q15, 'Language, fluency, pitch, and accent', 0, 2),
(@q15, 'Speed, clarity, emotion, and silence', 0, 3),
(@q15, 'Authority, confidence, posture, and rank', 0, 4);

-- Question 16
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Passengers first (families with children first), then crew', 1, 1),
(@q16, 'Crew first so they can assist passengers into survival crafts', 0, 2),
(@q16, 'Officers first, then ratings, then passengers', 0, 3),
(@q16, 'All persons board simultaneously to save time', 0, 4);

-- Question 17
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Shows locations of watertight doors, compartment boundaries, and flooding correction arrangements', 1, 1),
(@q17, 'Shows locations and types of all fire-fighting equipment onboard', 0, 2),
(@q17, 'Shows the recommended escape routes and life-saving appliance locations', 0, 3),
(@q17, 'Lists all crew emergency duties and muster station assignments', 0, 4);

-- Question 18
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Bridge, engine control room, and accommodation alleyways', 1, 1),
(@q18, 'Captain cabin, crew mess, and officer lounge only', 0, 2),
(@q18, 'Only on the bridge under the master direct control', 0, 3),
(@q18, 'Lifeboat stations and muster stations only', 0, 4);

-- Question 19
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, '4-handed seat carry', 1, 1),
(@q19, 'Fireman lift', 0, 2),
(@q19, 'Drag carry', 0, 3),
(@q19, 'Blanket carry', 0, 4);

-- Question 20
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Wake passengers and inform them of the emergency', 1, 1),
(@q20, 'Lock the cabin door and move to the next one', 0, 2),
(@q20, 'Radio the bridge to report the cabin number', 0, 3),
(@q20, 'Check the cabin is empty before waking any passengers', 0, 4);
