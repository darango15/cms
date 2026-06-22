-- Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces
-- Code: SPSP (PAM-MAE-SPSP-35) â€” Course ID: 207

UPDATE lms_courses SET
    course_code = 'SPSP',
    title       = 'Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces',
    status      = 'published',
    image = 'https://pamel.edu.pa/uploads/spsp/image1.jpeg'
WHERE id = 207;

DELETE FROM lms_lessons WHERE course_id = 207;
DELETE q, qq, qo
FROM lms_quizzes q
LEFT JOIN lms_questions qq ON qq.quiz_id = q.id
LEFT JOIN lms_question_options qo ON qo.question_id = qq.id
WHERE q.course_id = 207;

-- â”€â”€â”€ LESSONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

INSERT INTO lms_lessons (course_id, title, content, type, duration, order_num) VALUES

(207, 'Introduction to the Course', '<h2>Introduction to the Course</h2>
<img src="https://pamel.edu.pa/uploads/spsp/image1.jpeg" alt="Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces" style="max-width:100%;margin-bottom:1rem;">
<h3>Recent Accidents and Disasters on Board Passenger Ships</h3>
<p>The tragic loss of the <strong>MS Herald of Free Enterprise</strong>, <strong>MS Scandinavian Star</strong>, and <strong>MS Estonia</strong> made the inclusion of parts in Chapter V of the code in the 1995 amendment of the STCW Convention.</p>
<p>Maritime disasters involving passenger ships such as <strong>Princess of the Stars</strong> (2008), <strong>St. Thomas Aquinas</strong> (2013), and <strong>Costa Concordia</strong> (2012) â€” which mainly attribute to human-related causes â€” suggest the need to have training for personnel providing direct service to passengers in passenger spaces as prescribed in STCW, Regulation V/2.</p>
<h3>Training Requirements Governed by STCW</h3>
<p>The training is part of the mandatory minimum requirements for the training and qualification of masters, officers, ratings, and other personnel on passenger ships as stated in <strong>STCW Regulation V/2, paragraph 6</strong>, and paragraph 2 of Section A-V/2 of the STCW Code.</p>
<p>Emergencies will often require the evacuation or part evacuation of a vessel. As such, it is necessary to consider how all passengers, including those with reduced mobility, can evacuate to an appropriate place of safety. Keep in mind that some people with mobility difficulties who are usually able to move independently may not be able to do so safely in an evacuation situation where large numbers of other people are moving quickly towards the exits.</p>
<p>Illustrations and instructions for the information of passengers shall be posted in all passenger cabins and displayed at assembly stations and in passenger public spaces to inform passengers of their:</p>
<ul>
<li>Assembly/muster station</li>
<li>The essential actions they must take in an emergency</li>
<li>The method of donning their lifejackets</li>
</ul>
<p>Alleyways, stairways, and exits giving access to assembly/muster stations and embarkation stations are illuminated by lighting supplied from both the ship''s main and emergency source of power. Assembly/muster stations in passenger ships are usually in the vicinity of embarkation stations and permit ready access for passengers from assembly stations to embarkation stations.</p>', 'text', 30, 1),

(207, 'Communication with Passengers during Emergency', '<h2>Communication with Passengers during Emergency</h2>
<h3>Language Appropriateness</h3>
<p>It is important to use languages relevant to the principal nationalities of passengers carried on the particular route. The MV Estonia tragedy is often cited as an example of critical communication failure during an emergency.</p>
<h3>Elementary English as a Common Language</h3>
<p>An ability to use an elementary English vocabulary for basic instructions can provide a means of communicating with a passenger in need of assistance whether or not the passenger and crew member share a common language. English has global reach that makes it effective for conveying basic safety instructions.</p>
<h3>Alternative Communication Means</h3>
<p>When oral communication is impractical, crew members may need to communicate by other means, such as:</p>
<ul>
<li>Demonstration</li>
<li>Hand signals</li>
<li>Calling attention to the location of instructions, muster stations, life-saving devices, or evacuation routes</li>
</ul>
<p>"Closed-loop communication" should be practiced to prevent misunderstandings â€” the receiver confirms receipt and understanding of the message back to the sender.</p>
<h3>Safety Instructions in Native Languages</h3>
<p>Complete safety instructions should be provided to passengers in their native language or languages, and in accessible formats such as large print, audio/video, Braille, and ''easy-to-read'' versions for passengers with disabilities or hearing/visual impairments.</p>
<h3>Emergency Announcements</h3>
<p>Emergency announcements may be broadcast in multiple languages during an emergency or drill to convey critical guidance to passengers. Alternative methods including interpreters, hand signals, and safety signs should be used for hearing-impaired or non-English speaking passengers.</p>
<img src="https://pamel.edu.pa/uploads/spsp/image2.jpeg" alt="Safety Signs and Symbols" style="max-width:100%;margin:1rem 0;">
<p><em>Figure â€“ Safety Signs and Symbols used on passenger ships</em></p>', 'text', 150, 2),

(207, 'Demonstration on the Use of Personal Life-Saving Appliances', '<h2>Demonstration on the Use of Personal Life-Saving Appliances to Passengers</h2>
<h3>Locations Where Lifejackets May Be Stored on a Passenger Ship</h3>
<ul>
<li>Bridge</li>
<li>Engine control room</li>
<li>Crew cabins</li>
<li>Passenger cabins</li>
<li>In special lockers along evacuation routes</li>
<li>Passenger assembly/muster stations</li>
<li>Survival craft embarkation stations</li>
<li>Inside the lifeboats</li>
<li>Open decks</li>
</ul>
<img src="https://pamel.edu.pa/uploads/spsp/image3.jpeg" alt="Life-saving appliances demonstration" style="max-width:100%;margin:1rem 0;">
<h3>Making the Announcement to Passengers</h3>
<blockquote style="border-left:4px solid #ccc;padding:0.5rem 1rem;margin:1rem 0;font-style:italic;">
"Ladies and gentlemen and children, this is your Muster Station Leader. May I have your attention please? We will now demonstrate how to put on the lifejacket properly. Please listen and watch carefully."
</blockquote>
<h3>Lifejacket Donning Procedure</h3>
<p>Procedures in the use of personal life-saving appliances, i.e. lifejacket, must be known by all trainees. It is important for trainees to be able to confidently demonstrate the donning procedures to all passengers.</p>
<ol>
<li>Undo the buckles. Separate the panels and put on your lifejacket like a normal jacket or waistcoat by putting your arms through the two side holes.</li>
<li>Ensure the front sides face outwards.</li>
<li>There are two sets of straps with buckles â€” the <strong>waist strap</strong> and the <strong>chest strap</strong>.</li>
<li><strong>Secure the waist strap first</strong> by passing it around your back from left to right, then clip the buckles at the front.</li>
<li>Then secure the chest strap by clipping the buckles at the front together.</li>
<li>Tighten the lifejacket properly by pulling the chest and waist straps towards the right. Tuck any remaining straps into the back of the lifejacket.</li>
<li>All straps and jacket must be firm and tight with minimal movement.</li>
</ol>
<h3>Lifejacket Safety Features</h3>
<ul>
<li><strong>Whistle</strong> â€” for attracting attention</li>
<li><strong>Light</strong> â€” automatically illuminates when it comes in contact with water</li>
<li><strong>Retro-reflective tape</strong> â€” aids rescuers in locating survivors in the water when dark</li>
</ul>', 'text', 120, 3),

(207, 'Embarking and Disembarking Passengers â€“ Special Attention to Disabled Persons', '<h2>Embarking and Disembarking Passengers</h2>
<h2>Special Attention to Disabled Persons and Persons Needing Assistance</h2>
<h3>Access Procedures for Embarkation and Disembarkation</h3>
<p>Safe embarkation and disembarkation procedures must be followed, covering gangway and accommodation ladder requirements such as handrails, safety nets, adequate illumination, and watches on duty.</p>
<h3>Special Needs Passengers</h3>
<ul>
<li><strong>Wheelchair Users</strong> â€” Trained personnel, barrier-free access, and special considerations for motorized wheelchairs onboard (which may have limitations during an emergency)</li>
<li><strong>Hearing Impaired</strong> â€” Visual instructions and safety information presented clearly and in large format</li>
<li><strong>Visually Impaired</strong> â€” Record their details, communicate their needs to the Master, and assign designated personnel for assistance</li>
</ul>
<h3>Emergency Disembarkation Procedures</h3>
<p><strong>General Emergency Alarm:</strong> Upon hearing the alarm (seven short blasts followed by one long blast), both crew and passengers must follow established emergency procedures.</p>
<p><strong>Lifeboat Embarkation:</strong> Guidance for passengers to lifeboat stations, followed by crew. The disembarkation principle is <strong>"from fastest to slowest"</strong> to ensure efficient movement and prevent obstruction of evacuation routes.</p>
<p><strong>Abandon Ship Signal:</strong> Survival craft crew supervise embarkation, prioritizing passengers, and await orders from Central Command before lowering crafts.</p>
<p><strong>Important:</strong> All lifts are not designed for use in an emergency, so alternatives must be arranged to move wheelchair users and other people with mobility impairments up and down stairs during an evacuation.</p>
<h3>Survival Craft â€” Types and Embarkation</h3>
<div style="display:flex;flex-wrap:wrap;gap:1rem;margin:1rem 0;">
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image4.jpeg" alt="Lifeboat Embarkation Station" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Lifeboat Embarkation Station</figcaption>
</figure>
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image5.jpeg" alt="Life Raft Boarding Procedures" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Life Raft Boarding Procedures and Seating Arrangement</figcaption>
</figure>
</div>
<div style="display:flex;flex-wrap:wrap;gap:1rem;margin:1rem 0;">
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image6.jpeg" alt="Lifeboats" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Lifeboats</figcaption>
</figure>
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image7.jpeg" alt="Rescue Boat" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Rescue Boat</figcaption>
</figure>
</div>
<div style="display:flex;flex-wrap:wrap;gap:1rem;margin:1rem 0;">
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image8.jpeg" alt="Open Lifeboat" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Open Lifeboat and Lifeboat Laden with Crew Only</figcaption>
</figure>
<figure style="flex:1;min-width:200px;text-align:center;">
<img src="https://pamel.edu.pa/uploads/spsp/image9.jpeg" alt="Survival craft" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;"></figcaption>
</figure>
</div>
<figure style="text-align:center;margin:1rem 0;">
<img src="https://pamel.edu.pa/uploads/spsp/image10.jpeg" alt="Throw Overboard Liferaft" style="max-width:100%;border-radius:6px;">
<figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Throw Overboard Liferaft / Davit-Launchable Life Raft / Free Fall Life Raft on the Ramp</figcaption>
</figure>
<h3>Evaluation</h3>
<p>Upon successful completion of the examination, which is carried out during and at the end of the course, the trainee will be awarded the relevant course completion certificate issued by the training center.</p>', 'text', 60, 4);

-- â”€â”€â”€ QUIZ â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit)
VALUES (207, 'SPSP â€“ Final Exam', 'Final examination for Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces (SPSP)', 70, 60);

SET @quiz_id = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'Which STCW regulation governs Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces?', 'multiple_choice', 1, 1),
(@quiz_id, 'Which maritime disasters led to the inclusion of passenger ship personnel training in the STCW Convention?', 'multiple_choice', 1, 2),
(@quiz_id, 'What signal constitutes the General Emergency Alarm on a passenger ship?', 'multiple_choice', 1, 3),
(@quiz_id, 'Which strap should be secured FIRST when donning a lifejacket?', 'multiple_choice', 1, 4),
(@quiz_id, 'What does the light on a lifejacket do?', 'multiple_choice', 1, 5),
(@quiz_id, 'What is the purpose of retro-reflective tape on a lifejacket?', 'multiple_choice', 1, 6),
(@quiz_id, 'What is "closed-loop communication"?', 'multiple_choice', 1, 7),
(@quiz_id, 'What is the disembarkation principle to ensure efficient movement during an evacuation?', 'multiple_choice', 1, 8),
(@quiz_id, 'Which of the following is NOT a location where lifejackets may be stored on a passenger ship?', 'multiple_choice', 1, 9),
(@quiz_id, 'Why are not all lifts suitable for use during an emergency?', 'multiple_choice', 1, 10),
(@quiz_id, 'Where must safety instructions (muster station, essential actions, lifejacket donning) be posted on a passenger ship?', 'multiple_choice', 1, 11),
(@quiz_id, 'What are the alternative communication methods when oral communication is impractical during an emergency?', 'multiple_choice', 1, 12),
(@quiz_id, 'What special consideration applies to motorized wheelchairs during an emergency evacuation?', 'multiple_choice', 1, 13),
(@quiz_id, 'What should be done before lowering survival craft during an Abandon Ship situation?', 'multiple_choice', 1, 14),
(@quiz_id, 'How should safety information be presented to hearing-impaired passengers?', 'multiple_choice', 1, 15),
(@quiz_id, 'What is the purpose of the whistle on a lifejacket?', 'multiple_choice', 1, 16),
(@quiz_id, 'In which STCW Code section is the training standard for SPSP defined?', 'multiple_choice', 1, 17),
(@quiz_id, 'Which of the following is an example of accessible format for passenger safety instructions?', 'multiple_choice', 1, 18),
(@quiz_id, 'What should happen to remaining straps after tightening the lifejacket?', 'multiple_choice', 1, 19),
(@quiz_id, 'During an emergency evacuation, who boards survival craft first?', 'multiple_choice', 1, 20);

-- Q1
SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'Regulation II/1', 0, 1),
(@q1, 'Regulation V/2', 1, 2),
(@q1, 'Regulation VI/6', 0, 3),
(@q1, 'Regulation III/4', 0, 4);

-- Q2
SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'MS Titanic, MV Dona Paz, and MV Sewol', 0, 1),
(@q2, 'MS Herald of Free Enterprise, MS Scandinavian Star, and MS Estonia', 1, 2),
(@q2, 'Costa Concordia, Princess of the Stars, and St. Thomas Aquinas', 0, 3),
(@q2, 'MS Estonia, Costa Concordia, and MV Sewol', 0, 4);

-- Q3
SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'One long blast', 0, 1),
(@q3, 'Six short blasts followed by one long blast', 0, 2),
(@q3, 'Seven short blasts followed by one long blast', 1, 3),
(@q3, 'Three long blasts', 0, 4);

-- Q4
SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'The chest strap', 0, 1),
(@q4, 'The waist strap', 1, 2),
(@q4, 'Either strap â€” it does not matter', 0, 3),
(@q4, 'The neck strap', 0, 4);

-- Q5
SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'It flashes every 5 seconds to signal rescuers', 0, 1),
(@q5, 'It automatically illuminates when it comes in contact with water', 1, 2),
(@q5, 'It requires manual activation by pressing a button', 0, 3),
(@q5, 'It only works in daylight conditions', 0, 4);

-- Q6
SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'To make the lifejacket more visible in daylight', 0, 1),
(@q6, 'To aid rescuers in locating survivors in the water when dark', 1, 2),
(@q6, 'To reinforce the structural integrity of the lifejacket', 0, 3),
(@q6, 'To identify the owner of the lifejacket', 0, 4);

-- Q7
SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'Broadcasting emergency announcements in multiple languages simultaneously', 0, 1),
(@q7, 'A method where the receiver confirms receipt and understanding of the message back to the sender', 1, 2),
(@q7, 'Using hand signals instead of verbal communication during an emergency', 0, 3),
(@q7, 'Communicating exclusively in English to avoid confusion', 0, 4);

-- Q8
SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'From slowest to fastest to protect persons with disabilities', 0, 1),
(@q8, 'From fastest to slowest to ensure efficient movement and prevent obstruction', 1, 2),
(@q8, 'Passengers by cabin number order', 0, 3),
(@q8, 'Crew first, then passengers', 0, 4);

-- Q9
SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Inside the lifeboats', 0, 1),
(@q9, 'The ship''s galley (kitchen)', 1, 2),
(@q9, 'Passenger cabins', 0, 3),
(@q9, 'Open decks', 0, 4);

-- Q10
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'They require a special key that only officers have', 0, 1),
(@q10, 'Not all lifts are designed for emergency use, so alternatives are required', 1, 2),
(@q10, 'Lifts are reserved for crew use only during emergencies', 0, 3),
(@q10, 'Lifts become too slow when many people use them simultaneously', 0, 4);

-- Q11
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Only at the main entrance of the ship', 0, 1),
(@q11, 'In all passenger cabins, at assembly stations, and in passenger public spaces', 1, 2),
(@q11, 'Only at lifeboat embarkation stations', 0, 3),
(@q11, 'On the bridge and in the engine control room', 0, 4);

-- Q12
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Using only English as the universal language', 0, 1),
(@q12, 'Demonstration, hand signals, or directing attention to instructions and muster stations', 1, 2),
(@q12, 'Written messages in the passenger''s native language only', 0, 3),
(@q12, 'Sounding the emergency alarm repeatedly', 0, 4);

-- Q13
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'They should be left on the pier as they cannot be brought onboard', 0, 1),
(@q13, 'They may have limitations during an emergency and require special considerations', 1, 2),
(@q13, 'They have priority access to the lifeboats', 0, 3),
(@q13, 'They are banned from passenger ships for safety reasons', 0, 4);

-- Q14
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Survival craft are lowered immediately when the abandon ship signal is given', 0, 1),
(@q14, 'Await orders from Central Command before lowering survival craft', 1, 2),
(@q14, 'Crew must complete a full muster check before lowering craft', 0, 3),
(@q14, 'The Captain must physically present at each embarkation station before lowering', 0, 4);

-- Q15
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Audio-only announcements in their native language', 0, 1),
(@q15, 'Visual instructions and safety information presented clearly and in large format', 1, 2),
(@q15, 'They should be seated close to crew members who will assist them', 0, 3),
(@q15, 'Sign language interpreters must be available at all times', 0, 4);

-- Q16
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'To signal other crew members of your location', 0, 1),
(@q16, 'To attract attention when in distress', 1, 2),
(@q16, 'To activate the lifejacket light', 0, 3),
(@q16, 'To communicate with rescuers using Morse code', 0, 4);

-- Q17
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Section A-II/1', 0, 1),
(@q17, 'Section A-V/2, paragraph 2', 1, 2),
(@q17, 'Section A-VI/6', 0, 3),
(@q17, 'Section A-III/4', 0, 4);

-- Q18
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Instructions printed exclusively in English', 0, 1),
(@q18, 'Large print, audio/video, Braille, or easy-to-read versions', 1, 2),
(@q18, 'Digital-only format accessible via passenger mobile devices', 0, 3),
(@q18, 'Color-coded diagrams without text', 0, 4);

-- Q19
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Left hanging freely outside the lifejacket', 0, 1),
(@q19, 'Tucked into the back of the lifejacket', 1, 2),
(@q19, 'Tied around the waist for additional security', 0, 3),
(@q19, 'Cut off to avoid entanglement', 0, 4);

-- Q20
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id AND order_num=20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Crew members board first to prepare the craft', 0, 1),
(@q20, 'Passengers board first, supervised by survival craft crew', 1, 2),
(@q20, 'Officers board first to direct the evacuation', 0, 3),
(@q20, 'Passengers and crew board simultaneously', 0, 4);

