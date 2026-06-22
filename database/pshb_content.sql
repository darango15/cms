-- PSHB: Passenger Ship Crisis Management and Human Behavior Training
-- Course id=203, code=PSHB
-- Replaces any existing content for this course

DELETE FROM lms_question_options WHERE question_id IN (
    SELECT id FROM lms_questions WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 203
    )
);
DELETE FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 203
);
DELETE FROM lms_quizzes WHERE course_id = 203;
DELETE FROM lms_lessons WHERE course_id = 203;

UPDATE lms_courses SET
    title = 'Passenger Ship Crisis Management and Human Behavior Training',
    course_code = 'PSHB',
    status = 'published',
    image = 'https://pamel.edu.pa/uploads/pshb/image1.jpeg',
    category_id = 6
WHERE id = 203;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, order_num, is_active, created_at) VALUES

(203, 'Introduction to the Course', '<div class="lesson-content">
<img src="https://pamel.edu.pa/uploads/pshb/image1.jpeg" alt="PSHB Course Manual Cover" style="max-width:100%;margin-bottom:1.5rem;">
<h2>Past and Recent Accidents on Board Passenger Ships</h2>
<p>The tragic loss of the <strong>MS Herald of Free Enterprise</strong>, <strong>MS Scandinavian Star</strong> and <strong>MS Estonia</strong> made the inclusion of parts in chapter V of the code in the 1995 amendment of the STCW Convention.</p>
<p>Recent maritime disasters involving passenger ships, i.e. <strong>MV Costa Concordia (2012)</strong> and <strong>MV Sewol (2014)</strong> demonstrate the importance of crisis management and human behavior training. The scope of this training is centered on risk to:</p>
<ul>
<li>Personnel</li>
<li>The vessel</li>
<li>The environment</li>
<li>The operation</li>
</ul>
<h2>Training Requirement</h2>
<p>This training is part of the mandatory minimum requirements for the training and qualification of all masters and officers that are required to manage crisis situations on board in accordance with <strong>Table A-V/2-2 of the STCW Code</strong> relating to the minimum standard of competence in passenger ship crisis management and human behavior.</p>
<p>This course provides mandatory minimum standards of competence in Passenger Ship Crisis Management and Human Behavior Training in accordance with the provisions of <strong>Section A-V/2, paragraph 4 and Table A-V/2-2 of the STCW Code</strong>.</p>
</div>', 1, 1, NOW()),

(203, 'Organize Shipboard Emergency Procedures', '<div class="lesson-content">
<h2>1. Organize Shipboard Emergency Procedures</h2>
<h3>1.1 Elements of Shipboard Emergency Procedures</h3>
<p>Shipboard emergency procedures outline actions to be taken during an emergency and are broken down into the following components:</p>
<h4>Discovery</h4>
<p>Initial identification and reaction to a potentially hazardous situation. Example: Quickly dousing a smoldering cigarette in a wastebasket to eliminate fire risk.</p>
<h4>Containment</h4>
<p>The most crucial phase of emergency response after early discovery. The goal is to prevent an incident from escalating into a major emergency/crisis.</p>
<p><strong>Types of Containment:</strong></p>
<ul>
<li><strong>Personnel Containment:</strong> Ensuring crew and passengers are in safe areas (muster points), deploying emergency response teams to safe working areas.</li>
<li><strong>Area Containment:</strong> Shutting watertight/fire/smoke doors.</li>
<li><strong>Environmental Containment:</strong> Shutting down ventilation, setting up smoke boundaries, deploying SOPEP equipment, etc.</li>
<li><strong>Mechanical/Electrical Containment:</strong> Shutting down and isolating equipment that could escalate the incident if left running.</li>
</ul>
<p>If an incident cannot be contained, the <strong>Central Command Team (CCT)</strong> on the Bridge is responsible for planning, evaluating, deciding, and conducting vessel evacuation before the crisis becomes unmanageable.</p>
<h4>Damage Control</h4>
<p>The process of making an incident site safe. Can be conducted during or after the containment phase, especially with multiple incidents.</p>
<p><strong>Damage Control Activities:</strong></p>
<ul>
<li>Ballasting to maintain stability.</li>
<li>Extinguishing a fire sufficiently to mitigate reignition chances.</li>
<li>Pumping out flooded spaces and shoring hull breaches.</li>
<li>Ventilating and testing atmosphere in smoke or toxic gas environments.</li>
<li>Isolating broken pipelines, checking cargo stowage.</li>
<li>Containing and cleaning up spills.</li>
</ul>
<h4>Incident Investigation and Reporting</h4>
<p>A major part of the emergency response plan. Identifies root causes of incidents and provides controls to prevent recurrence. In crisis situations, independent bodies (e.g., <em>Marine Accident Investigation Branch - MAIB</em>) should conduct investigations.</p>
<h3>1.2 General Design and Layout of the Ship</h3>
<p><strong>SOLAS (Safety of Life at Sea) 1974</strong> provides clear requirements for ship design, construction, Emergency Response Equipment, and Life-Saving Appliances (LSA). Ships are constructed with "containment" in mind to ensure survivability.</p>
<p><strong>Containment Features:</strong></p>
<ul>
<li><strong>Watertight Compartments:</strong> Doors can be operated remotely from the bridge, locally, or from emergency hand pump control stations.</li>
<li><strong>Double Bottoms:</strong> Mandated for new build tankers to reduce environmental contamination risk in case of collision or grounding.</li>
<li><strong>Fire Zones:</strong> Vessels are divided into fire zones to help the CCT locate and monitor fire spread.</li>
</ul>
<h3>1.3 Major Crisis Types</h3>
<p>Major crises onboard vessels often arise from individual incidents that have a cascading effect. Common major crisis types include:</p>
<ul>
<li>Fire/Explosion</li>
<li>Flooding</li>
<li>Collision</li>
<li>Grounding</li>
<li>Foundering</li>
<li>Blackout/Mechanical failure</li>
<li>Toxic gas</li>
<li>Mass casualties</li>
</ul>
<h3>1.4 Safety Regulations</h3>
<p><strong>International Safety Management (ISM) Code — Emergency Preparedness (Part A, Section 8):</strong></p>
<ul>
<li>Companies must identify potential emergency shipboard situations and establish response procedures.</li>
<li>Companies must establish programs for drills and exercises for emergency actions.</li>
<li>The Safety Management System (SMS) must ensure the company can respond at any time to hazards, accidents, and emergencies involving its ships.</li>
</ul>
<p><strong>SOLAS</strong> provides comprehensive safety regulations covering construction, fire protection, life-saving appliances, radiocommunications, safety of navigation, carriage of cargoes, dangerous goods, nuclear ships, management, high-speed craft, maritime security, bulk carriers, and polar waters.</p>
<h3>1.5 Emergency Plans and Procedures</h3>
<p>Emergency or contingency plans are crucial documents that assist the crisis management team in decision-making during an emergency. Required to be at accessible points on the vessel (bridge, engine control room, gangway access points).</p>
<p>Content includes:</p>
<ul>
<li>Crew muster list plan</li>
<li>Crew emergency plan</li>
<li>Fire control plan</li>
<li>Life-saving appliances and escape route/evacuation plan</li>
<li>Damage control plan</li>
<li>General arrangement plan</li>
<li>Log book</li>
</ul>
<h3>1.6 Importance of Pre-planning and Drills</h3>
<p>Regular practice and drills help teams respond to and manage incidents before they escalate into crises. Exercises should be planned from different emergency scenarios according to onboard emergency procedures.</p>
<p>All personnel must be aware of and adhere to pre-planned emergency procedures as carefully as possible. In escalating incidents, prioritization and delegation are key.</p>
<img src="https://pamel.edu.pa/uploads/pshb/image2.jpeg" alt="Crew muster list and crew emergency plan" style="max-width:100%;margin-top:1.5rem;">
<p><em>Figure 2 - Crew muster list and crew emergency plan</em></p>
</div>', 2, 1, NOW()),

(203, 'Optimize the Use of Resources', '<div class="lesson-content">
<h2>2. Optimize the Use of Resources</h2>
<p>During an emergency, people react differently. Two common psychological modes are:</p>
<ul>
<li><strong>Flight:</strong> Desire to run away.</li>
<li><strong>Fight:</strong> Desire to tackle the problem head-on.</li>
</ul>
<p>On a ship, "flight" is a secondary option; the "fight" mode is developed through practice. Incident managers must consider these factors when dealing with people in emergencies:</p>
<ul>
<li><strong>Uncertainty, Ambiguity, or Conflicting Information:</strong> Information must be gathered, assessed, and clarified in early stages before decision-making.</li>
<li><strong>Shifting and Competing Goals:</strong> Priorities during incident escalation must be: (1) Passenger and personnel safety, (2) Vessel safety, (3) Environmental safety, (4) Operational safety. The CCT should take "time out" to ensure priorities are covered.</li>
<li><strong>Time Stress:</strong> Time seems to slow down during emergencies. The CCT must avoid demanding information when none is available and trust the ERT to deliver timely reports.</li>
<li><strong>Multiple Players (Team Factors):</strong> Language, culture, and communication are vital. A closed-loop communication style is essential. Tasks should be assigned to competent team members, and all tasks/completions recorded with time annotations.</li>
<li><strong>Personal Factors:</strong> Unwanted behaviors (anger, sorrow, apathy, indecision, confusion, stress, panic) can break down teamwork. The incident manager must control their own emotions and observe others.</li>
</ul>
<h3>2.1 Full Use of Available Personnel and Equipment</h3>
<p><strong>Principles of Delegation:</strong> Passenger ship organizational structure facilitates task delegation:</p>
<ul>
<li>Master — Incident/Crisis Manager</li>
<li>Chief Officer — marine incidents</li>
<li>Chief Engineer — technical incidents</li>
<li>Navigational Officer — safety</li>
<li>Another Officer — communications</li>
<li>Dedicated incident recorder (scribe)</li>
</ul>
<p>Effective delegation relies on training and competency. To delegate: define the task, communicate requirements clearly, ensure understanding (closed loop), and follow up on progress.</p>
<h3>2.2 Realistic Drills and Readiness</h3>
<p><strong>Tips for Effective Utilization:</strong></p>
<ul>
<li><strong>Regular Drills and Onboard Training:</strong> Familiarizes teams with equipment.</li>
<li><strong>Ventilation and Watertight Integrity:</strong> Quick shutdown prevents smoke/gas spread; rapid closure of watertight doors contains flooding.</li>
<li><strong>Speed:</strong> Fast ERT response limits escalation.</li>
<li><strong>Communication:</strong> Quick, clear Muster Station/Head count reports; regular Situation Reports (SITREPS) reduce fear.</li>
<li><strong>Use of Fixed Fire Fighting Systems:</strong> Early deployment can suppress fires. Ensure compartments are evacuated first.</li>
<li><strong>Safe Working Areas:</strong> Setting up close to the incident saves SCBA air, shortens hoses, and provides quick first aid.</li>
<li><strong>Electrical/Mechanical Isolation:</strong> Early shutdown reduces load and ensures personnel/equipment safety.</li>
<li><strong>Record-keeping:</strong> A dedicated log keeper (scribe) records time, decisions, instructions, and situation reports.</li>
<li><strong>Lifeboats and Liferafts:</strong> Abandonment is an executive order based on vessel habitability. Factors include trim (up to 10°) and list (up to 20°).</li>
</ul>
</div>', 3, 1, NOW()),

(203, 'Control Response to Emergencies', '<div class="lesson-content">
<h2>3. Control Response to Emergencies</h2>
<h3>3.1 Initial Assessment and Effective Response</h3>
<p>Emergencies require strong leaders at all levels (on-scene commander, engine room control, first aid, zone commanders). Initial information may be sparse, but personnel and resources must be mobilized under calm, decisive leadership.</p>
<p><strong>Initial Assessment Questions:</strong></p>
<ul>
<li>What is the problem?</li>
<li>What has been done?</li>
<li>How to contain it?</li>
<li>What resources are needed?</li>
<li>Anyone hurt?</li>
<li>Who needs to be informed?</li>
</ul>
<p><strong>Raising the Alarm:</strong> Seafarers are taught to report location, nature of emergency, and casualties. These reports, along with detectors (smoke/flame, gas, flooding), are vital for the crisis manager initial assessment and action plan development.</p>
<h3>3.2 Leading and Directing Others in Emergency Situations</h3>
<ul>
<li><strong>Setting an Example:</strong> Leaders must demonstrate tolerance under pressure and consider team members suggestions.</li>
<li><strong>Focusing Decision Making:</strong> Decisions must be firm and based on established contingency and emergency plans.</li>
<li><strong>Motivating, Encouraging, and Calming:</strong> Keep all crew and passengers informed with Situation Reports (SITREPS) every 15 minutes. Use the public address system.</li>
</ul>
<p>Radios should be handled by the scribe. The crisis manager uses closed-loop communication with the radio operator (instruction, repeat-back, acknowledgment). Communication should be short and clear.</p>
<h3>3.3 Identifying and Managing Personnel Stress</h3>
<p>Traumatic incidents can cause strong emotional reactions.</p>
<p><strong>Physical Symptoms:</strong> Chest pain, difficulty breathing, fatigue, nausea/vomiting, dizziness, sweating, rapid heart rate, thirst, headaches.</p>
<p><strong>Cognitive Symptoms:</strong> Confusion, nightmares, disorientation, poor concentration, memory problems, poor problem-solving.</p>
<p><strong>Emotional Symptoms:</strong> Anxiety, guilt, grief, denial, intense anger, fear/irritability, loss of emotional control, depression.</p>
<p><strong>Behavioral Symptoms:</strong> Withdrawal, emotional outbursts, inability to rest, pacing, temporary loss/increase of appetite.</p>
<p><strong>Managing Stress:</strong></p>
<ul>
<li>Adhere to safety policies and procedures.</li>
<li>Encourage and support co-workers.</li>
<li>Recognize that "not having enough to do" or "waiting" are normal.</li>
<li>Take "time outs" to decompress.</li>
<li>Practice relaxation techniques (deep breathing, meditation, stretching).</li>
</ul>
</div>', 4, 1, NOW()),

(203, 'Control Passengers and Other Personnel During Emergency Situations', '<div class="lesson-content">
<h2>4. Control Passengers and Other Personnel During Emergency Situations</h2>
<h3>Phase One - Warning</h3>
<p>People often show reluctance to accept an emergency, especially in early stages. Social inhibitions can lead to slow initial responses. If warnings are prolonged or guidance is absent, uncertainty and anxiety rise, potentially leading to panic.</p>
<p><strong>Factors Influencing Reaction:</strong></p>
<ul>
<li><strong>Credibility of Sender:</strong> Authority, expertise, and experience lend credibility.</li>
<li><strong>Age Differences:</strong> Younger people may respond faster than the elderly.</li>
<li><strong>Presence of Family or Friends:</strong> Families take warnings more seriously and try to stay together.</li>
<li><strong>Observations:</strong> People observe others behavior to interpret the situation.</li>
<li><strong>Time of Warning:</strong> Harder to rouse people at night; alarms need to be louder than background noise.</li>
<li><strong>Experience:</strong> Prior emergency experience increases adaptive response.</li>
</ul>
<p><strong>Maximizing Effectiveness of Warnings/Instructions:</strong></p>
<ul>
<li>Given by appropriate, trustworthy people.</li>
<li>Specific, correct content with clearly defined expectations and timing.</li>
<li>Neither underestimate nor overestimate danger.</li>
<li>Suggest appropriate actions in understandable language.</li>
<li>Repeated frequently.</li>
</ul>
<h3>Phase Two - Impact</h3>
<p>The threat is understood as real. Roughly 25% of people act rationally - this group can be a valuable asset. The bulk of passengers may accept the problem but take no action due to fear or confidence in the crew. A small number (approx. 15%) may engage in inappropriate behaviors.</p>
<p><strong>Common Passenger Reactions:</strong></p>
<ul>
<li>Looking for relatives, friends, and/or belongings.</li>
<li>Seeking safety in cabins or other perceived safe places (search parties are assigned to ensure all areas are evacuated).</li>
<li>Tendency to move to the upper side when the ship is listing (survival vessels may not be usable on the high side).</li>
</ul>
<h3>Phase Three - Evacuation</h3>
<p>Getting passengers to stop what they are doing and move requires both awareness of the threat and acceptance of it.</p>
<p><strong>Categories of Human Behavioral Response During Evacuation:</strong></p>
<ul>
<li><strong>Category 1 - Inaction:</strong> Stunned, bewildered response ("freezing" or "negative panic").</li>
<li><strong>Category 2 - Fear/Flight:</strong> Non-rational escape behavior, just short of panic.</li>
<li><strong>Category 3 - Panic:</strong> Highly emotional, intense, non-adaptive behavior characterized by self-preservation at all costs, breakdown of group ties. Can increase danger for self and others.</li>
<li><strong>Category 5 - Altruism and Affiliation:</strong> Protective behaviors that assist survival. People often respond rationally and altruistically, especially towards primary groups (family, close friends).</li>
</ul>
<h3>Phase Four - Recoil (Stop Phase)</h3>
<p>In a serious event, the realization of the full extent of what happened (loss of possessions/loved ones). Post-Traumatic Stress Disorder (PTSD) symptoms may include flashbacks, depression, anxiety, and nightmares.</p>
<p><strong>Children Vulnerability:</strong></p>
<ul>
<li>Up to 8-9 years: Mirror parents responses.</li>
<li>9-14 years: Excitement, no fear/anxiety; may try to re-enter the disaster area.</li>
<li>Over 14 years: More likely to show fear, behave like adults.</li>
</ul>
<p><strong>Roll Call:</strong> A powerful tool to establish authority, identify capable individuals, utilize skills, record injuries, assess mental state, and reassure individuals. Repeat roll calls for reassurance.</p>
</div>', 5, 1, NOW()),

(203, 'Establish and Maintain Effective Communications', '<div class="lesson-content">
<h2>5. Establish and Maintain Effective Communications</h2>
<h3>5.1 Clear and Concise Instructions and Reports</h3>
<p><strong>Elementary Language:</strong> Use simple language for basic instructions to passengers. English is widely spoken and has a higher chance of understanding.</p>
<p><strong>Audible Communication:</strong> Use appropriate tone (professional, friendly), pace (slowly), volume (loud but low pitch), and diction (clear words).</p>
<p><strong>Closed-Loop Communication:</strong> A technique to avoid misunderstandings:</p>
<ol>
<li>Sender gives message.</li>
<li>Receiver repeats it back.</li>
<li>Sender confirms.</li>
</ol>
<p>This ensures the message is fully understood before execution and avoids misinterpretation.</p>
<h3>5.2 Communication with Passengers and Other Personnel</h3>
<p><strong>Language Appropriateness:</strong> Identify languages appropriate to the principal nationalities of passengers. The MV Estonia tragedy highlighted the need for announcements in languages understood by passengers.</p>
<p><strong>Alternative Communication Means</strong> (when oral is impractical):</p>
<ul>
<li>Demonstration and hand signals.</li>
<li>Pointing to instructions, muster stations, life-saving devices, or evacuation routes.</li>
<li>Information should be accessible (large print, audio/video, Braille, easy-to-read).</li>
<li>For hearing-impaired or non-English speakers: assign interpreters, use hand signals, point to posters/safety signs/symbols.</li>
</ul>
<p><strong>Emergency Announcements:</strong> Crew must demonstrate the ability to broadcast emergency announcements using elementary English. Announcements should be simple, concise, accurate, and clear. Examples include:</p>
<ul>
<li>Instructions for putting on lifejackets.</li>
<li>Guidance to lifeboat stations.</li>
<li>Maintaining single file.</li>
</ul>
<h3>6. Evaluation</h3>
<p>Evaluation enables the assessor (instructor) to ascertain if the learner has gained the required skills and knowledge. The purpose of evaluation is to:</p>
<ul>
<li>Assist student learning.</li>
<li>Identify student strengths and weaknesses.</li>
<li>Assess the effectiveness of a particular instructional strategy.</li>
<li>Assess and improve the effectiveness of curriculum programs.</li>
<li>Assess and improve teaching effectiveness.</li>
</ul>
<p>Upon successful completion of the examination, the trainee will be awarded the relevant course completion certificate issued by the training center.</p>
</div>', 6, 1, NOW());

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, created_at) VALUES
(203, 'PSHB Final Examination', 'Passenger Ship Crisis Management and Human Behavior Training - Final Exam', 70, 60, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, order_num, created_at) VALUES
(@qid, 'Which maritime disasters led to the inclusion of crisis management training requirements in the 1995 STCW Convention amendment?', 'multiple_choice', 1, NOW()),
(@qid, 'What does the Central Command Team (CCT) do when a vessel incident cannot be contained?', 'multiple_choice', 2, NOW()),
(@qid, 'Which of the following is an example of Environmental Containment during an onboard emergency?', 'multiple_choice', 3, NOW()),
(@qid, 'According to SOLAS, which feature divides vessels into sections to help the CCT locate and monitor fire spread?', 'multiple_choice', 4, NOW()),
(@qid, 'Where must emergency or contingency plans be located on a vessel?', 'multiple_choice', 5, NOW()),
(@qid, 'During an emergency, what are the correct priorities in order according to the PSHB course?', 'multiple_choice', 6, NOW()),
(@qid, 'What is the role of a scribe in the ship emergency management structure?', 'multiple_choice', 7, NOW()),
(@qid, 'Which factor does NOT typically influence passenger reaction during the Warning Phase of an emergency?', 'multiple_choice', 8, NOW()),
(@qid, 'Approximately what percentage of people act rationally during the Impact Phase of a shipboard emergency?', 'multiple_choice', 9, NOW()),
(@qid, 'What is Category 3 behavioral response during evacuation?', 'multiple_choice', 10, NOW()),
(@qid, 'What communication technique involves the sender giving a message, the receiver repeating it back, and the sender confirming?', 'multiple_choice', 11, NOW()),
(@qid, 'Why was the MV Estonia tragedy significant in terms of emergency communications?', 'multiple_choice', 12, NOW()),
(@qid, 'Which symptom is classified as a COGNITIVE symptom of excessive stress after a traumatic incident?', 'multiple_choice', 13, NOW()),
(@qid, 'How frequently should Situation Reports (SITREPS) be issued during an emergency?', 'multiple_choice', 14, NOW()),
(@qid, 'What is the maximum list angle typically considered acceptable before abandonment of the vessel?', 'multiple_choice', 15, NOW()),
(@qid, 'Children aged 9-14 years typically react to an onboard emergency by:', 'multiple_choice', 16, NOW()),
(@qid, 'Which ISM Code section specifically addresses emergency preparedness requirements for companies?', 'multiple_choice', 17, NOW()),
(@qid, 'What is the primary goal of the Containment phase in shipboard emergency procedures?', 'multiple_choice', 18, NOW()),
(@qid, 'What are the two common psychological modes people experience during emergencies?', 'multiple_choice', 19, NOW()),
(@qid, 'Which independent body typically conducts investigations after major maritime crises?', 'multiple_choice', 20, NOW());

-- Question 1
SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'MS Herald of Free Enterprise, MS Scandinavian Star, and MS Estonia', 1, 1),
(@q1, 'MV Costa Concordia, MV Sewol, and MS Titanic', 0, 2),
(@q1, 'MV Prestige, SS Edmund Fitzgerald, and MS Estonia', 0, 3),
(@q1, 'MS Estonia, MV Sewol, and HMS Sheffield', 0, 4);

-- Question 2
SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'Plans, evaluates, decides, and conducts vessel evacuation before the crisis becomes unmanageable', 1, 1),
(@q2, 'Dispatches the Engine Response Team to seal all watertight compartments', 0, 2),
(@q2, 'Contacts port authorities and awaits external rescue teams', 0, 3),
(@q2, 'Activates automatic fire suppression systems in all zones simultaneously', 0, 4);

-- Question 3
SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Shutting down ventilation and setting up smoke boundaries', 1, 1),
(@q3, 'Deploying emergency response teams to safe working areas', 0, 2),
(@q3, 'Shutting watertight and fire doors', 0, 3),
(@q3, 'Isolating broken pipelines and checking cargo stowage', 0, 4);

-- Question 4
SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Fire Zones', 1, 1),
(@q4, 'Watertight Compartments', 0, 2),
(@q4, 'Double Bottoms', 0, 3),
(@q4, 'Muster Stations', 0, 4);

-- Question 5
SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Bridge, engine control room, and gangway access points', 1, 1),
(@q5, 'Captain cabin, crew mess, and engine room only', 0, 2),
(@q5, 'Only on the bridge under the master direct control', 0, 3),
(@q5, 'Lifeboats and life raft deployment stations only', 0, 4);

-- Question 6
SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Passenger/personnel safety, vessel safety, environmental safety, operational safety', 1, 1),
(@q6, 'Vessel safety, operational safety, passenger safety, environmental safety', 0, 2),
(@q6, 'Environmental safety, passenger safety, operational safety, vessel safety', 0, 3),
(@q6, 'Operational safety, vessel safety, passenger safety, environmental safety', 0, 4);

-- Question 7
SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'A dedicated log keeper who records time, decisions, instructions, and situation reports', 1, 1),
(@q7, 'The officer responsible for broadcasting emergency announcements over the PA system', 0, 2),
(@q7, 'The crew member in charge of deploying lifeboats and liferafts', 0, 3),
(@q7, 'The crisis manager who leads the Central Command Team', 0, 4);

-- Question 8
SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'The color of the vessel hull', 1, 1),
(@q8, 'The credibility of the person delivering the warning', 0, 2),
(@q8, 'The time of day when the emergency occurs', 0, 3),
(@q8, 'The prior emergency experience of passengers', 0, 4);

-- Question 9
SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Approximately 25%', 1, 1),
(@q9, 'Approximately 50%', 0, 2),
(@q9, 'Approximately 75%', 0, 3),
(@q9, 'Approximately 15%', 0, 4);

-- Question 10
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Panic - highly emotional, non-adaptive behavior with self-preservation at all costs and breakdown of group ties', 1, 1),
(@q10, 'Inaction - stunned, bewildered freezing or negative panic response', 0, 2),
(@q10, 'Fear-Flight - non-rational escape behavior just short of panic', 0, 3),
(@q10, 'Altruism and Affiliation - protective behaviors that assist survival', 0, 4);

-- Question 11
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Closed-Loop Communication', 1, 1),
(@q11, 'Active Listening Protocol', 0, 2),
(@q11, 'SITREP Broadcast Method', 0, 3),
(@q11, 'Elementary Language Technique', 0, 4);

-- Question 12
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'It highlighted the need for announcements in languages understood by passengers', 1, 1),
(@q12, 'It demonstrated that PA systems must be digital to be effective', 0, 2),
(@q12, 'It showed that all emergency announcements must be in English only', 0, 3),
(@q12, 'It proved that visual signals are more effective than verbal announcements', 0, 4);

-- Question 13
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Poor concentration and memory problems', 1, 1),
(@q13, 'Chest pain and rapid heart rate', 0, 2),
(@q13, 'Emotional outbursts and withdrawal', 0, 3),
(@q13, 'Excessive alcohol consumption', 0, 4);

-- Question 14
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Every 15 minutes', 1, 1),
(@q14, 'Every 5 minutes', 0, 2),
(@q14, 'Every 30 minutes', 0, 3),
(@q14, 'Only at the start and end of the emergency', 0, 4);

-- Question 15
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, '20 degrees', 1, 1),
(@q15, '10 degrees', 0, 2),
(@q15, '30 degrees', 0, 3),
(@q15, '45 degrees', 0, 4);

-- Question 16
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Showing excitement with no fear/anxiety; may try to re-enter the disaster area', 1, 1),
(@q16, 'Mirroring their parents responses', 0, 2),
(@q16, 'Showing adult-like fear and anxiety responses', 0, 3),
(@q16, 'Remaining calm and assisting other passengers', 0, 4);

-- Question 17
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Part A, Section 8', 1, 1),
(@q17, 'Part B, Section 3', 0, 2),
(@q17, 'Part A, Section 12', 0, 3),
(@q17, 'Part C, Section 5', 0, 4);

-- Question 18
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'To prevent an incident from escalating into a major emergency/crisis', 1, 1),
(@q18, 'To extinguish any fire on board as quickly as possible', 0, 2),
(@q18, 'To identify the root cause of the incident for the investigation report', 0, 3),
(@q18, 'To begin vessel evacuation before the situation worsens', 0, 4);

-- Question 19
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Flight (desire to run away) and Fight (desire to tackle the problem head-on)', 1, 1),
(@q19, 'Panic and Paralysis', 0, 2),
(@q19, 'Aggression and Submission', 0, 3),
(@q19, 'Adaptation and Non-Adaptation', 0, 4);

-- Question 20
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Marine Accident Investigation Branch (MAIB)', 1, 1),
(@q20, 'International Maritime Organization (IMO) Safety Committee', 0, 2),
(@q20, 'Flag State Administration of the vessel', 0, 3),
(@q20, 'The shipping company Safety Management System team', 0, 4);
