-- Maritime English Course (ME) - course_id = 184
-- Source: PAM-MAE-ME-52.docx

-- Update course record
UPDATE lms_courses SET
  course_code = 'ME',
  title = 'Maritime English',
  status = 'published',
  category_id = 6,
  image = 'https://pamel.edu.pa/uploads/me/image1.jpeg',
  level = 'intermediate',
  pass_percentage = 70,
  description = 'This Maritime English course is designed to develop seafarers'' English language proficiency in both general and specialized maritime contexts. Based on IMO model course 3.17, it covers Elementary and Intermediate levels across 35 units, developing the four key communication skills — listening, speaking, reading, and writing — using the Communicative Approach and Task-Based Learning. Graduates will be able to communicate effectively in onboard situations, VHF radio communications, and international maritime environments in accordance with STCW requirements.'
WHERE id = 184;

-- Remove existing content for course 184
DELETE FROM lms_question_options WHERE question_id IN (
  SELECT id FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 184
  )
);
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id = 184);
DELETE FROM lms_quizzes WHERE course_id = 184;
DELETE FROM lms_lessons WHERE course_id = 184;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, order_num, is_active, created_at) VALUES
(184, 'Course Overview and Syllabus',
'<div>
<img src="https://pamel.edu.pa/uploads/me/image1.jpeg" alt="Maritime English" style="max-width:100%;margin-bottom:16px;"/>
<h2>Maritime English — Course Overview</h2>
<p>This course is based on the IMO Model Course 3.17 for Maritime English and is designed to develop the English language proficiency of seafarers in both general and specialized maritime contexts. The course is structured in two levels:</p>
<ul>
  <li><strong>General Maritime English (GME)</strong> — Elementary Level: Units 1–18, approximately 197 classroom hours. Focuses on foundational language skills for everyday onboard communication, safety, navigation, cargo operations, and VHF radio procedures.</li>
  <li><strong>Specialized Maritime English (SME)</strong> — Intermediate Level: Units 19–35, approximately 248 classroom hours. Develops advanced professional English for written communications, STCW documentation, meteorology, security, emergency response, and technical maritime language.</li>
</ul>
<h3>Course Units — Elementary Level (Units 1–18)</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Unit</th><th>Topic</th></tr>
  <tr><td>1</td><td>Personal data, crew roles, and ship identification</td></tr>
  <tr><td>2</td><td>Crew ranks, vessel types, and onboard departments</td></tr>
  <tr><td>3</td><td>Safety equipment and fire-fighting appliances</td></tr>
  <tr><td>4</td><td>Navigation, positions, and directions at sea</td></tr>
  <tr><td>5</td><td>Watch-keeping, reporting positions, and ETA</td></tr>
  <tr><td>6</td><td>Pilot boarding, port arrival, and departure procedures</td></tr>
  <tr><td>7</td><td>Teamwork, orders, and routine onboard operations</td></tr>
  <tr><td>8</td><td>Maintenance, repairs, and technical procedures</td></tr>
  <tr><td>9</td><td>Provisions, catering, and onboard supplies</td></tr>
  <tr><td>10</td><td>Emergency procedures and distress communications</td></tr>
  <tr><td>11</td><td>Cargo operations, loading, and stowage</td></tr>
  <tr><td>12</td><td>Health, safety, and accident prevention</td></tr>
  <tr><td>13</td><td>Visitors, inspections, and training exercises</td></tr>
  <tr><td>14</td><td>Weather conditions and meteorological reports</td></tr>
  <tr><td>15</td><td>Past voyages, incidents, and near-miss reports</td></tr>
  <tr><td>16</td><td>Injuries, illness, and medical assistance onboard</td></tr>
  <tr><td>17</td><td>VHF radio procedures and SMCP basics</td></tr>
  <tr><td>18</td><td>Environmental protection and MARPOL compliance</td></tr>
</table>
<h3>Course Units — Intermediate Level (Units 19–35)</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Unit</th><th>Topic</th></tr>
  <tr><td>19</td><td>Written maritime communications (letters, emails, memos)</td></tr>
  <tr><td>20</td><td>VHF radio procedures and advanced SMCP</td></tr>
  <tr><td>21</td><td>Work planning and voyage management</td></tr>
  <tr><td>22</td><td>STCW conventions and certification requirements</td></tr>
  <tr><td>23</td><td>Anchoring, mooring, and port operations</td></tr>
  <tr><td>24</td><td>Ports, terminals, and cargo documentation</td></tr>
  <tr><td>25</td><td>Safety management systems and risk assessment</td></tr>
  <tr><td>26</td><td>Advanced meteorology and weather routing</td></tr>
  <tr><td>27</td><td>Machinery operations and engineering communications</td></tr>
  <tr><td>28</td><td>Maritime security and ISPS code</td></tr>
  <tr><td>29</td><td>Technical problems, repairs, and troubleshooting</td></tr>
  <tr><td>30</td><td>Long-range radio communications and GMDSS</td></tr>
  <tr><td>31</td><td>Watch-keeping duties and bridge team communications</td></tr>
  <tr><td>32</td><td>Developments in shipping and new technologies</td></tr>
  <tr><td>33</td><td>Pollution prevention and environmental regulations</td></tr>
  <tr><td>34</td><td>Emergency response, SAR, and survival procedures</td></tr>
  <tr><td>35</td><td>Mechanical faults, damage control, and stability</td></tr>
</table>
<h3>STCW Compliance</h3>
<p>The course fulfills the English language proficiency competences required by the STCW Code, preparing seafarers to communicate effectively in multilingual crew environments, respond to emergencies in English, and handle all maritime documentation and VHF communications in accordance with international standards.</p>
</div>',
1, 1, NOW()),

(184, 'Communicative Language Teaching Approach',
'<div>
<h2>The Communicative Approach to Maritime English</h2>
<p>This course uses the <strong>Communicative Approach (CA)</strong> as its primary teaching methodology. The CA holds that language learning is best achieved through meaningful communication rather than through memorization of grammar rules in isolation. Students learn English by <em>using</em> it to perform real tasks — describing a safety procedure, conducting a VHF radio call, or writing a technical report.</p>
<h3>Key Principles</h3>
<ul>
  <li><strong>Meaning over form:</strong> The primary goal is to communicate a message successfully. Accuracy is important but should not come at the expense of fluency.</li>
  <li><strong>Authentic contexts:</strong> Language is practiced in realistic maritime situations — bridge communications, engine room instructions, port procedures, emergency drills.</li>
  <li><strong>Learner-centered:</strong> Students are active participants. Pair work, group tasks, role plays, and simulations place the responsibility for communication on the learners.</li>
  <li><strong>All four skills:</strong> Listening, speaking, reading, and writing are integrated rather than taught in isolation.</li>
  <li><strong>English through English:</strong> Instruction is delivered in English at all times to maximize exposure and immersion.</li>
</ul>
<h3>Task-Based Learning (TBL)</h3>
<p>Task-Based Learning is a central component of the Communicative Approach used in this course. In TBL, students complete authentic maritime tasks — such as planning a watch schedule, reporting a medical emergency via VHF, or writing a cargo discrepancy report — using the language as the tool to accomplish the task.</p>
<p>Tasks are organized in three phases:</p>
<ol>
  <li><strong>Pre-task:</strong> Introduction to the topic and key vocabulary; activation of prior knowledge.</li>
  <li><strong>Task cycle:</strong> Students complete the task in pairs or groups; planning and reporting follow.</li>
  <li><strong>Language focus:</strong> Analysis and practice of specific language features that appeared in the task.</li>
</ol>
<h3>Lesson Stage Models</h3>
<p>Teachers in this course use two complementary models for lesson planning:</p>
<ul>
  <li><strong>PPP (Present, Practice, Produce):</strong> The teacher presents new language in context, students practice it in controlled exercises, then use it freely in productive tasks.</li>
  <li><strong>ESA (Engage, Study, Activate):</strong> Students are engaged with interesting material, study specific language features, then activate what they have learned through communicative tasks.</li>
</ul>
<h3>Error Correction</h3>
<p>Error correction in the Communicative Approach is strategic:</p>
<ul>
  <li>During <strong>accuracy activities</strong> (grammar drills, controlled practice): correct errors immediately and explicitly.</li>
  <li>During <strong>fluency activities</strong> (role plays, discussions, simulations): note errors without interrupting; give feedback after the task.</li>
  <li>Use <strong>reformulation</strong> to confirm what the student meant while modeling the correct form: "You mean you have arrived at the anchorage?" rather than "Wrong — say \'have arrived\'."</li>
</ul>
</div>',
2, 1, NOW()),

(184, 'Classroom Management and Learner Training',
'<div>
<h2>Classroom Management for Maritime English</h2>
<p>Effective classroom management creates the conditions in which seafarers can develop confidence and fluency in English. This lesson covers seating arrangements, pair and group work strategies, learner autonomy, and managing multilingual and mixed-ability classes.</p>
<h3>Seating Arrangements</h3>
<p>The physical arrangement of the classroom influences the type of interaction that takes place:</p>
<ul>
  <li><strong>Horseshoe / U-shape:</strong> Facilitates whole-class discussion and teacher monitoring; all students face each other.</li>
  <li><strong>Clusters / islands:</strong> Groups of 3–4 students facing each other; ideal for collaborative tasks and group work.</li>
  <li><strong>Rows:</strong> Traditional arrangement useful for controlled practice and individual written work; limits interaction.</li>
  <li><strong>Back-to-back:</strong> Pairs sit facing opposite directions; simulates telephone/VHF radio conditions where speakers cannot see each other.</li>
</ul>
<h3>Pair and Group Work</h3>
<p>Pair and group activities are essential in the Communicative Approach because they maximize student speaking time. Seafarers are accustomed to teamwork and respond well to collaborative tasks:</p>
<ul>
  <li><strong>Information gap activities:</strong> Each student holds different information; they must communicate to complete the task (simulates real maritime communication).</li>
  <li><strong>Role plays:</strong> Students take on ranks and roles (Captain, Pilot, Officer of the Watch) to practice authentic onboard interactions.</li>
  <li><strong>Problem-solving tasks:</strong> Groups analyze a maritime incident or emergency and collaboratively decide on the correct response.</li>
</ul>
<h3>Managing Mixed-Ability Classes</h3>
<ul>
  <li>Pair stronger students with weaker ones for support tasks; separate them for competitive activities.</li>
  <li>Provide differentiated tasks: more complex role cards or writing tasks for advanced learners, simpler prompts for beginners.</li>
  <li>Use "open class" activities (whole-group discussion) to demonstrate tasks before pair/group work begins.</li>
</ul>
<h3>Learner Autonomy and Self-Study</h3>
<p>Developing autonomous learners — seafarers who can continue improving their English independently — is a key goal of this course. Strategies include:</p>
<ul>
  <li>Encouraging vocabulary notebooks with phonetic spelling, collocations, and example sentences.</li>
  <li>Teaching students to use monolingual maritime dictionaries effectively.</li>
  <li>Recommending self-study resources: maritime English websites, podcasts, BBC radio, and VHF radio recordings.</li>
  <li>Self-assessment checklists that allow learners to identify their own strengths and weaknesses.</li>
  <li>Encouraging students to listen to a range of English accents (British, American, Indian, Filipino, etc.) to prepare for real multinational crew environments.</li>
</ul>
<h3>Learner Training Activities</h3>
<ul>
  <li><strong>Recording vocabulary:</strong> Students use tables of word families (verb/noun/adjective/opposite) to build systematic vocabulary records.</li>
  <li><strong>Self-recording:</strong> Students record their own voice in SMCP dialogues and compare with model recordings to monitor pronunciation.</li>
  <li><strong>Portfolio writing:</strong> Students keep a diary in English, recording reflections on what they learned each day.</li>
</ul>
</div>',
3, 1, NOW()),

(184, 'Teaching Grammar and Vocabulary',
'<div>
<h2>Teaching Language Systems: Grammar and Vocabulary</h2>
<p>Grammar and vocabulary are the building blocks of Maritime English. This lesson outlines effective strategies for teaching new language items, from initial presentation through to free production.</p>
<h3>Grammar Teaching Principles</h3>
<p>This course follows an <strong>inductive approach</strong> to grammar where possible: students observe examples of language in context, identify the pattern themselves, and then the teacher confirms and clarifies the rule. This develops learner independence and is more memorable than purely deductive (rule-first) instruction.</p>
<h4>Presentation Techniques</h4>
<ul>
  <li><strong>Contextualization:</strong> All new grammar is presented in a meaningful maritime context — a VHF exchange, a log book entry, a safety announcement — not in isolated sentences.</li>
  <li><strong>Concept Checking Questions (CCQs):</strong> Short yes/no questions that confirm students understand the meaning (not just the form) of new grammar.</li>
  <li><strong>Substitution tables:</strong> Grids showing how elements of a sentence can be replaced, allowing students to generate many correct sentences from a pattern.</li>
  <li><strong>Timelines:</strong> Visual representations on the board to explain tense usage (Past Simple, Present Perfect, Future forms).</li>
</ul>
<h4>Practice Techniques</h4>
<ul>
  <li><strong>Drilling</strong> (choral, individual, split-class): Fast-paced repetition to help students internalize new forms before using them freely.</li>
  <li><strong>Controlled exercises:</strong> Gap-fill, matching, sentence transformation — ensuring students produce the target structure correctly.</li>
  <li><strong>Semi-controlled tasks:</strong> Substitution drills, guided dialogues — students have more choice but are still guided by a framework.</li>
  <li><strong>Free production:</strong> Role plays, simulations, written reports — students use the new grammar to communicate without scaffolding.</li>
</ul>
<h3>Vocabulary Teaching</h3>
<p>Maritime English has a rich and specialized lexicon. Vocabulary teaching goes beyond providing translations: students need to know the word\'s meaning, pronunciation, collocations, register, and how to use it in context.</p>
<h4>Techniques for Presenting New Vocabulary</h4>
<ul>
  <li><strong>Visual representation:</strong> Diagrams, photographs, and technical drawings of ship parts, safety equipment, and onboard procedures.</li>
  <li><strong>Realia:</strong> Real objects (life jacket, EPIRB, fire extinguisher) or models used to teach technical vocabulary tangibly.</li>
  <li><strong>Contextualization:</strong> Always present new words in a sentence or dialogue that shows how they are used.</li>
  <li><strong>Gesture and mime:</strong> Effective for action verbs and physical processes (heave, lower, secure, release).</li>
  <li><strong>Oral explanation:</strong> Paraphrase, give synonyms, describe function — useful when visual aids are unavailable.</li>
</ul>
<h4>Vocabulary Practice Activities</h4>
<ul>
  <li><strong>Describe and draw:</strong> Student A describes a ship diagram; Student B draws from the description (practices prepositions and technical vocabulary).</li>
  <li><strong>Odd one out:</strong> "tanker, ro-ro, reefer, lifeboat, bulk carrier" — which doesn\'t belong and why?</li>
  <li><strong>Semantic grids:</strong> Match types of weather with collocating adjectives (light rain / heavy swell / dense fog).</li>
  <li><strong>Crosswords and word grids:</strong> Students create clues for vocabulary they have learned, reinforcing definitions.</li>
  <li><strong>Word family tables:</strong> signal/signal/signify/significant; act/action/activate — students build awareness of prefixes, suffixes, and word class.</li>
</ul>
<h4>Vocabulary Revision Strategies</h4>
<ul>
  <li>Brainstorming: Generate all words connected with a maritime topic in 2 minutes.</li>
  <li>Word definition bingo: Teacher reads definitions; students identify words on their lists.</li>
  <li>Taboo: Describe a maritime term without using the five most obvious related words.</li>
  <li>Call My Bluff: Teams give three definitions for a term — only one is correct; the class votes on which is true.</li>
</ul>
</div>',
4, 1, NOW()),

(184, 'Teaching Pronunciation',
'<div>
<h2>Teaching Pronunciation in Maritime English</h2>
<p>Clear pronunciation is critical for seafarers. Communication failures on board and in VHF radio exchanges are frequently caused by pronunciation problems — particularly when speakers of different nationalities are involved. This lesson covers the key areas of pronunciation and practical teaching strategies.</p>
<h3>Why Pronunciation Matters at Sea</h3>
<p>Research shows that approximately <strong>90% of verbal communication breakdowns between non-native speakers of English are caused by pronunciation difficulties</strong>, not grammar or vocabulary errors. In maritime contexts, unclear pronunciation can have life-threatening consequences during emergency communications, distress calls, or bridge-to-bridge radio exchanges.</p>
<h3>English Sounds and Phonemes</h3>
<p>English has 44 phonemes (individual sounds). Key teaching strategies include:</p>
<ul>
  <li><strong>Minimal pairs:</strong> Pairs of words that differ by a single sound (e.g., "ship/sheep", "right/light", "deep/dip"). Students listen and identify which word is said, then practice producing the distinction.</li>
  <li><strong>Modelling sounds:</strong> Use mirrors so students can see lip and tongue position; demonstrate aspiration (hold paper in front of mouth for "p" and "k"); distinguish voiced from unvoiced sounds by touching the throat.</li>
  <li><strong>Phonetic symbols:</strong> Introduce gradually, focusing on the schwa (ə) — the most common English vowel sound — and sounds that students from specific language backgrounds find difficult.</li>
  <li><strong>Tongue twisters:</strong> Practice difficult consonant clusters in an engaging way.</li>
</ul>
<h3>Connected Speech</h3>
<p>Native and fluent speakers do not pronounce words individually but connect them in natural speech. Students must recognize and practice:</p>
<ul>
  <li><strong>Linking:</strong> Consonant-to-vowel links (e.g., "The ship is old" sounds like "The shi-pis old"). Visualized with arches drawn above connecting letters.</li>
  <li><strong>Contractions:</strong> "I\'ve got" not "I have got"; "they\'re ready" not "they are ready" — natural in speech and important for both production and comprehension.</li>
  <li><strong>The schwa:</strong> Weak vowels in unstressed syllables (e.g., "the", "of", "and", "a") — the most frequent vowel sound in English.</li>
  <li><strong>Elision:</strong> The disappearance of weak sounds in connected speech ("February" → "Feb-ry"; "h" in "What\'s her name?").</li>
</ul>
<h3>Word Stress</h3>
<p>English is a <strong>stress-timed language</strong> (like German, Russian, and Arabic), not syllable-timed (like Spanish or French). Content words (nouns, main verbs, adjectives) receive strong stress; structure words (articles, prepositions, auxiliaries) are weakened. Students must:</p>
<ul>
  <li>Count syllables and mark stress patterns (using large/small symbols above syllables).</li>
  <li>Learn tendencies: two-syllable nouns stress the first syllable ("signal", "anchor", "cargo"); two-syllable verbs stress the second ("re-PORT", "de-PART").</li>
  <li>Practice with back-chaining: Build up long SMCP phrases from the last syllable: "require" → "do you require" → "assistance do you require" → "What kind of assistance do you require?"</li>
</ul>
<h3>Intonation and Pitch</h3>
<p>English uses rising and falling intonation to express meaning, attitude, and grammatical structure:</p>
<ul>
  <li><strong>Falling intonation:</strong> Statements, commands, wh-questions — conveys certainty and conclusion.</li>
  <li><strong>Rising intonation:</strong> Yes/no questions, checking questions — conveys uncertainty or request for confirmation.</li>
  <li><strong>Wide pitch range:</strong> Indicates enthusiasm, surprise, or strong emotion.</li>
  <li><strong>Narrow pitch (monotone):</strong> Can indicate boredom, low authority, or disengagement — problematic in leadership communications.</li>
</ul>
<p>Practice techniques include tracing pitch patterns drawn above written sentences, "elastic band" drills to visualize pitch range, and identifying attitudes from recordings of "oh" said with different intonation.</p>
<h3>IMO Standard Marine Communication Phrases (SMCP)</h3>
<p>SMCP pronunciation must be clear and consistent. Key strategies:</p>
<ul>
  <li>Practice SMCP phrases with back-chaining drills, building from the end of the phrase.</li>
  <li>Record students producing SMCP dialogues and compare to model recordings.</li>
  <li>Back-to-back pair work (simulating radio conditions where speakers cannot see each other) to train listening accuracy.</li>
</ul>
</div>',
5, 1, NOW()),

(184, 'Teaching the Four Communication Skills',
'<div>
<h2>Teaching the Four Communication Skills</h2>
<p>The four communication skills — listening, speaking, reading, and writing — are the core of Maritime English competence. This lesson outlines the approach used in this course for developing each skill, with emphasis on maritime contexts and STCW requirements.</p>
<h3>Teaching Listening</h3>
<p>Seafarers must listen to many types of communication: VHF radio traffic, bridge-to-bridge calls, shipboard announcements, port authority instructions, and multinational crew conversations. Listening tasks are structured in three stages:</p>
<ul>
  <li><strong>Pre-listening:</strong> Activate prior knowledge, pre-teach key vocabulary, set a prediction task. Example: "You will hear a VHF exchange about a vessel in distress — what information do you expect to hear?"</li>
  <li><strong>While-listening:</strong> First listening for <em>gist</em> (general understanding); second listening for <em>specific information</em> (names, positions, times, SMCP phrases).</li>
  <li><strong>Post-listening:</strong> Productive activities using the information heard — write a distress message summary, role-play a follow-up VHF exchange, complete a message form.</li>
</ul>
<h3>Teaching Speaking and SMCP</h3>
<p>Speaking activities develop both <strong>accuracy</strong> (controlled practice) and <strong>fluency</strong> (free production):</p>
<ul>
  <li><strong>Drilling SMCP:</strong> Choral drills, split-class drills, back-chaining, vanishing dialogues — essential for internalizing standard phrases.</li>
  <li><strong>Guided dialogues:</strong> Outline of a VHF exchange written on the board; students complete it using SMCP before practicing freely.</li>
  <li><strong>Role plays:</strong> Students take roles (OOW, Pilot, Port Control, rescue vessel) and improvise exchanges based on authentic maritime scenarios.</li>
  <li><strong>Problem-solving simulations:</strong> Groups analyze an onboard emergency or technical failure and discuss in English, then report their decision to the class.</li>
  <li><strong>Presentations:</strong> Each student delivers a short technical talk (e.g., explaining a safety procedure, describing their vessel\'s cargo system) to practice formal spoken register.</li>
</ul>
<h3>Teaching Reading</h3>
<p>Seafarers read a wide range of authentic maritime texts: MARPOL regulations, ISM documentation, cargo manifests, weather forecasts, MARS incident reports, technical manuals, and maritime correspondence. Reading instruction develops three sub-skills:</p>
<ul>
  <li><strong>Skim reading:</strong> Moving the eyes quickly through a text to get the general meaning — without stopping at every unknown word.</li>
  <li><strong>Scan reading:</strong> Searching quickly for specific information (a name, date, IMO number, regulation code) without reading the whole text.</li>
  <li><strong>Intensive reading:</strong> Careful, detailed reading of short texts (VHF messages, checklists, incident summaries) for complete understanding.</li>
</ul>
<h4>Key Reading Activities</h4>
<ul>
  <li>Jumbled paragraph ordering: Restoring a shuffled incident report to its correct sequence.</li>
  <li>Jigsaw reading: Different groups read different accounts of the same incident, then exchange information.</li>
  <li>MARS report analysis: Students identify cause, effect, and recommendations in a real accident report.</li>
  <li>True/false comprehension: Based on VHF transcripts, safety bulletins, or STCW regulations.</li>
</ul>
<h3>Teaching Writing</h3>
<p>Professional maritime writing includes telexes, emails, log book entries, incident reports, cargo documents, and SMCP message logs. The course uses <strong>process writing</strong> — teaching students to plan, draft, revise, and edit:</p>
<ul>
  <li><strong>Controlled writing:</strong> Gap-fill templates, sentence combining, correcting errors in model texts — builds accuracy at word and sentence level.</li>
  <li><strong>Guided process writing:</strong> Students brainstorm, create an outline, draft in groups, edit each other\'s work, and produce a final version. Collaborative writing builds both language accuracy and communication skills.</li>
  <li><strong>Authentic text types:</strong> Students practice the specific layouts and language of real maritime documents: formal letters, memos, cargo discrepancy reports, oil record book entries, distress signal logs.</li>
</ul>
<h4>Key Writing Strategies</h4>
<ul>
  <li>Analyzing authentic texts for layout, register, functional phrases, and paragraph structure.</li>
  <li>Text transfer: Convert log book entries into a formal incident report; expand a telex into a full letter.</li>
  <li>Dictogloss: Listen to a short maritime text, reconstruct it from notes, then compare with the original.</li>
  <li>Cause and effect conjunctions: Practice writing safety and environmental texts using "due to", "as a result of", "consequently", "because of".</li>
</ul>
<h3>Integrated Skills</h3>
<p>Real maritime communication rarely uses only one skill in isolation. This course integrates all four skills in multi-step tasks that mirror real shipboard situations:</p>
<ul>
  <li>Listen to a distress call → note key information → write a MAYDAY relay → transmit it in a VHF role play.</li>
  <li>Read a cargo loading plan → discuss discrepancies in groups → write a cargo discrepancy report → present findings to the Master.</li>
  <li>Watch a training video → summarize the safety procedure in writing → present it to the class using technical vocabulary from the lesson.</li>
</ul>
</div>',
6, 1, NOW());

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (184, 'Maritime English — Final Assessment',
'Comprehensive assessment covering course methodology, communication skills, teaching approaches, and SMCP for the Maritime English course.',
70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- Questions
INSERT INTO lms_questions (quiz_id, question, type, order_num, created_at) VALUES
(@qid, 'What are the two proficiency levels covered in this Maritime English course?', 'multiple_choice', 1, NOW()),
(@qid, 'How many units are included in the Elementary Level of the Maritime English course?', 'multiple_choice', 2, NOW()),
(@qid, 'What is the primary teaching methodology used in this Maritime English course?', 'multiple_choice', 3, NOW()),
(@qid, 'What does the acronym SMCP stand for?', 'multiple_choice', 4, NOW()),
(@qid, 'What is the total number of units in the complete Maritime English course?', 'multiple_choice', 5, NOW()),
(@qid, 'The Intermediate Level (Specialized Maritime English) of this course covers which units?', 'multiple_choice', 6, NOW()),
(@qid, 'What are the four communication skills developed in this Maritime English course?', 'multiple_choice', 7, NOW()),
(@qid, 'In the PPP lesson model, what do the three letters stand for?', 'multiple_choice', 8, NOW()),
(@qid, 'According to the course, what is the most common cause of verbal communication failure between non-native English speakers?', 'multiple_choice', 9, NOW()),
(@qid, 'In Task-Based Learning, what is the primary focus of the "task cycle" phase?', 'multiple_choice', 10, NOW()),
(@qid, 'Which listening activity requires students to understand the overall meaning of a text without needing to understand every detail?', 'multiple_choice', 11, NOW()),
(@qid, 'What is the "schwa" in English pronunciation?', 'multiple_choice', 12, NOW()),
(@qid, 'What is the purpose of "drilling" in language teaching?', 'multiple_choice', 13, NOW()),
(@qid, 'Which category of vocabulary learning strategy includes "using a dictionary to find the meaning of an unknown word"?', 'multiple_choice', 14, NOW()),
(@qid, 'What is "skim reading"?', 'multiple_choice', 15, NOW()),
(@qid, 'In a Maritime English classroom, "realia" refers to:', 'multiple_choice', 16, NOW()),
(@qid, 'What does ESA stand for in the ESA lesson model?', 'multiple_choice', 17, NOW()),
(@qid, 'English is classified as which type of language in terms of rhythm?', 'multiple_choice', 18, NOW()),
(@qid, 'In process writing, what does the term "drafting" refer to?', 'multiple_choice', 19, NOW()),
(@qid, 'What is the technique of "back-chaining" used for in language teaching?', 'multiple_choice', 20, NOW());

-- Options
SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'General Maritime English (GME) and Specialized Maritime English (SME)', 1, 1),
(@q1, 'Basic English and Advanced English', 0, 2),
(@q1, 'Nautical English and Technical English', 0, 3),
(@q1, 'Operational English and Management English', 0, 4);

SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, '12 units', 0, 1),
(@q2, '15 units', 0, 2),
(@q2, '18 units', 1, 3),
(@q2, '20 units', 0, 4);

SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Grammar-Translation Method', 0, 1),
(@q3, 'Audio-Lingual Method', 0, 2),
(@q3, 'Communicative Approach', 1, 3),
(@q3, 'Direct Instruction Method', 0, 4);

SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Standard Maritime Communication Procedures', 0, 1),
(@q4, 'Standard Marine Communication Phrases', 1, 2),
(@q4, 'Safety Maritime Communication Protocol', 0, 3),
(@q4, 'Standard Marine Command Phrases', 0, 4);

SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, '25 units', 0, 1),
(@q5, '30 units', 0, 2),
(@q5, '35 units', 1, 3),
(@q5, '40 units', 0, 4);

SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Units 1 to 18', 0, 1),
(@q6, 'Units 18 to 35', 0, 2),
(@q6, 'Units 19 to 35', 1, 3),
(@q6, 'Units 20 to 35', 0, 4);

SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'Grammar, vocabulary, pronunciation, and writing', 0, 1),
(@q7, 'Listening, speaking, reading, and writing', 1, 2),
(@q7, 'Listening, grammar, reading, and speaking', 0, 3),
(@q7, 'Vocabulary, pronunciation, reading, and speaking', 0, 4);

SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Prepare, Practice, Produce', 0, 1),
(@q8, 'Plan, Perform, Progress', 0, 2),
(@q8, 'Present, Practice, Produce', 1, 3),
(@q8, 'Preview, Practice, Perform', 0, 4);

SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Poor grammar usage', 0, 1),
(@q9, 'Limited vocabulary', 0, 2),
(@q9, 'Inaccurate pronunciation', 1, 3),
(@q9, 'Incorrect use of SMCP', 0, 4);

SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Memorizing grammar rules and vocabulary lists', 0, 1),
(@q10, 'Students completing a communicative task using the language', 1, 2),
(@q10, 'The teacher explaining new grammar structures', 0, 3),
(@q10, 'Individual written exercises on the target language', 0, 4);

SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Intensive listening', 0, 1),
(@q11, 'Listening for specific information', 0, 2),
(@q11, 'Gist listening', 1, 3),
(@q11, 'Dictation listening', 0, 4);

SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'A type of consonant cluster used in English', 0, 1),
(@q12, 'A rising intonation pattern for questions', 0, 2),
(@q12, 'The most common weak vowel sound in English', 1, 3),
(@q12, 'A silent letter rule applied to final consonants', 0, 4);

SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Testing students on grammar they have already learned', 0, 1),
(@q13, 'Helping students internalize new language forms through repetition', 1, 2),
(@q13, 'Introducing completely new grammar structures for the first time', 0, 3),
(@q13, 'Assessing student performance at the end of a lesson', 0, 4);

SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Social strategy', 0, 1),
(@q14, 'Cognitive strategy', 0, 2),
(@q14, 'Determination strategy', 1, 3),
(@q14, 'Mnemonic strategy', 0, 4);

SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Reading every word carefully to understand a text in full detail', 0, 1),
(@q15, 'Scanning a text to locate a specific piece of information', 0, 2),
(@q15, 'Reading quickly through a text to get its general meaning', 1, 3),
(@q15, 'Reading aloud with correct pronunciation and intonation', 0, 4);

SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Real-life objects (e.g., equipment, tools) brought into the classroom for teaching', 1, 1),
(@q16, 'Role-play scenarios based on real maritime incidents', 0, 2),
(@q16, 'Audio recordings of authentic VHF radio communications', 0, 3),
(@q16, 'Reading passages about real maritime topics and regulations', 0, 4);

SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Evaluate, Study, Assess', 0, 1),
(@q17, 'Engage, Study, Activate', 1, 2),
(@q17, 'Explain, Speak, Analyze', 0, 3),
(@q17, 'Experience, Study, Apply', 0, 4);

SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'A syllable-timed language like French, Spanish, and Italian', 0, 1),
(@q18, 'A stress-timed language like German, Russian, and Arabic', 1, 2),
(@q18, 'A tonal language like Mandarin Chinese and Vietnamese', 0, 3),
(@q18, 'A pitch-accent language like Japanese and Swedish', 0, 4);

SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Producing a final, error-free written product', 0, 1),
(@q19, 'Completing a grammar exercise focused on writing accuracy', 0, 2),
(@q19, 'Writing an initial version of a text that will be revised and improved', 1, 3),
(@q19, 'Analyzing the writing style of authentic maritime documents', 0, 4);

SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Teaching vocabulary by associating words with pictures from the back of a book', 0, 1),
(@q20, 'Building up a long word or phrase by starting from the last part and adding sections forward', 1, 2),
(@q20, 'Reviewing previous lessons by working backwards through the course', 0, 3),
(@q20, 'Organizing pair work activities by seating students back to back', 0, 4);
