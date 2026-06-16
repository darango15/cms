-- PSHB Course Content — Passenger Ship Crisis Management and Human Behavior Training
-- STCW Regulation V/2, Section A-V/2, paragraph 4 and Table A-V/2-2
-- Run against: cms_db2

USE cms_db2;

-- ─── Create Course ────────────────────────────────────────────────────────────

INSERT INTO lms_courses (
    category_id, course_code, title, slug, description,
    learning_objectives, requirements, target_audience,
    image, level, status, pass_percentage, is_free, created_at
) VALUES (
    6, 'PSHB',
    'Passenger Ship Crisis Management and Human Behavior Training',
    'passenger-ship-crisis-management-human-behavior',
    'This course provides mandatory minimum standards of competence in Passenger Ship Crisis Management and Human Behavior Training in accordance with STCW Regulation V/2, Section A-V/2, paragraph 4 and Table A-V/2-2.',
    JSON_ARRAY(
        'Organize and execute shipboard emergency procedures',
        'Optimize the use of available resources during emergencies',
        'Control response to emergencies with effective leadership',
        'Manage passengers and other personnel during emergency situations',
        'Establish and maintain effective communications under emergency conditions'
    ),
    JSON_ARRAY(
        'Basic Safety Training (BST) certificate',
        'Proficiency in Survival Craft and Rescue Boats (where applicable)'
    ),
    JSON_ARRAY(
        'Masters and Officers required to manage crisis situations on passenger ships',
        'All crew designated to assist passengers in emergency situations'
    ),
    '/uploads/pshb/image1.jpeg',
    'intermediate', 'published', 70, 0, NOW()
);

SET @course_id = LAST_INSERT_ID();

-- ─── Lessons ─────────────────────────────────────────────────────────────────

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active, created_at) VALUES
(@course_id, 'Introduction', '<img src="/uploads/pshb/image1.jpeg" alt="Passenger Ship Crisis Management" style="max-width:100%;margin-bottom:1.5rem;">
<h2>Introduction to the Course</h2>
<p>This training provides mandatory minimum standards of competence in <strong>Passenger Ship Crisis Management and Human Behavior Training</strong> as required by STCW Regulation V/2, Section A-V/2, paragraph 4 and Table A-V/2-2.</p>

<h3>Past and Recent Accidents Involving Passenger Ships</h3>
<p>Lessons learned from major maritime disasters have shaped modern crisis management training:</p>
<ul>
  <li><strong>MS Herald of Free Enterprise (1987):</strong> Car ferry capsized shortly after leaving Zeebrugge, Belgium, with 193 fatalities — primarily due to bow doors being left open.</li>
  <li><strong>MS Scandinavian Star (1990):</strong> Fire aboard a passenger ferry killed 158 people, raising concerns about crew training and evacuation procedures.</li>
  <li><strong>MS Estonia (1994):</strong> Ferry sank in the Baltic Sea with 852 fatalities, the worst peacetime European maritime disaster. Led to major SOLAS amendments in 1995.</li>
  <li><strong>MV Costa Concordia (2012):</strong> Grounding and capsizing off Isola del Giglio, Italy, killing 32 people. Highlighted failures in leadership, evacuation management, and passenger communication.</li>
  <li><strong>MV Sewol (2014):</strong> Korean ferry sank with 304 fatalities, most of them students. Demonstrated critical failures in crisis response and passenger instruction.</li>
</ul>
<p>These tragedies led to the inclusion of crisis management and human behavior training requirements in Chapter V of the STCW Code (1995 amendment) and continued emphasis on training today.</p>

<h3>Training Requirements</h3>
<p>This training fulfills the mandatory minimum requirements for masters and officers required to manage crisis situations on board passenger ships, in accordance with Table A-V/2-2 of the STCW Code. The scope of training covers risk to:</p>
<ul>
  <li>Personnel</li>
  <li>The vessel</li>
  <li>The environment</li>
  <li>The operation</li>
</ul>

<h3>Course Duration</h3>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>#</th><th>Module</th><th>Lecture Hours</th><th>Practice Hours</th></tr>
  </thead>
  <tbody>
    <tr><td>Intro</td><td>Introduction</td><td>0.5</td><td>—</td></tr>
    <tr><td>1</td><td>Organize Shipboard Emergency Procedures</td><td>0.5</td><td>1.0</td></tr>
    <tr><td>2</td><td>Optimize the Use of Resources</td><td>—</td><td>3.0</td></tr>
    <tr><td>3</td><td>Control Response to Emergencies</td><td>2.0</td><td>5.0</td></tr>
    <tr><td>4</td><td>Control Passengers and Other Personnel</td><td>—</td><td>3.0</td></tr>
    <tr><td>5</td><td>Establish and Maintain Effective Communications</td><td>1.0</td><td>—</td></tr>
    <tr><td>6</td><td>Examination</td><td>—</td><td>1.0</td></tr>
    <tr><td colspan="2"><strong>TOTAL</strong></td><td><strong>11</strong></td><td><strong>7</strong></td></tr>
  </tbody>
</table>', 'text', 1, 30, 1, NOW()),

(@course_id, '1. Organize Shipboard Emergency Procedures', '<h2>1. Organize Shipboard Emergency Procedures</h2>

<h3>1.1 Elements of Shipboard Emergency Procedures</h3>
<p>Shipboard emergency procedures outline actions to be taken during an emergency and are broken into four phases:</p>

<h4>Discovery</h4>
<p>Initial identification and reaction to a potentially hazardous situation. Example: Quickly dousing a smoldering cigarette in a wastebasket to eliminate fire risk.</p>

<h4>Containment</h4>
<p>The most crucial phase of emergency response after early discovery. The goal is to prevent an incident from escalating into a major emergency. Types of containment:</p>
<ul>
  <li><strong>Personnel Containment:</strong> Ensuring crew and passengers are at muster points; deploying emergency response teams to safe working areas.</li>
  <li><strong>Area Containment:</strong> Shutting watertight/fire/smoke doors.</li>
  <li><strong>Environmental Containment:</strong> Shutting down ventilation, setting up smoke boundaries, deploying SOPEP equipment.</li>
  <li><strong>Mechanical/Electrical Containment:</strong> Shutting down and isolating equipment that could escalate the incident.</li>
</ul>
<p>If an incident cannot be contained, the <strong>Central Command Team (CCT)</strong> on the Bridge is responsible for planning, evaluating, deciding, and conducting vessel evacuation before the crisis becomes unmanageable.</p>

<h4>Damage Control</h4>
<p>The process of making an incident site safe. Activities include:</p>
<ul>
  <li>Ballasting to maintain stability.</li>
  <li>Extinguishing a fire sufficiently to mitigate reignition.</li>
  <li>Pumping out flooded spaces and shoring hull breaches.</li>
  <li>Ventilating and testing atmosphere in smoke or toxic gas environments.</li>
  <li>Isolating broken pipelines and checking cargo stowage.</li>
  <li>Containing and cleaning up spills.</li>
</ul>

<h4>Incident Investigation and Reporting</h4>
<p>Identifies root causes and provides controls to prevent recurrence. In major crises, independent bodies (e.g., Marine Accident Investigation Branch — MAIB) conduct formal investigations. Findings are disseminated industry-wide.</p>

<h3>1.2 General Design and Layout of the Ship</h3>
<p>SOLAS 1974 provides clear requirements for ship design, construction, Emergency Response Equipment, and Life-Saving Appliances (LSA). Ships are constructed with "containment" in mind. Key containment features:</p>
<ul>
  <li><strong>Watertight Compartments:</strong> Doors operable remotely from the bridge, locally, or from emergency hand pump stations. Closure is a command decision considering personnel in the compartment, stability/trim, and bilge pumps.</li>
  <li><strong>Double Bottoms:</strong> Mandated for new-build tankers to reduce environmental risk in collision or grounding scenarios.</li>
  <li><strong>Fire Zones:</strong> Vessels are divided into fire zones to help the CCT locate and monitor fire spread. Actions: identify source and zone, shut ventilation, deploy ERT to safe working area, set up boundary cooling.</li>
</ul>

<h3>1.3 Major Crisis Types</h3>
<p>Major crises often arise from individual incidents with cascading effects on stability, trim, or habitability:</p>
<ul>
  <li>Fire / Explosion</li>
  <li>Flooding</li>
  <li>Collision</li>
  <li>Grounding</li>
  <li>Foundering</li>
  <li>Blackout / Mechanical failure</li>
  <li>Toxic gas</li>
  <li>Mass casualties</li>
</ul>

<h3>1.4 Safety Regulations</h3>
<p><strong>International Safety Management (ISM) Code — Emergency Preparedness (Part A, Section 8):</strong></p>
<ul>
  <li>Companies must identify potential emergency shipboard situations and establish response procedures.</li>
  <li>Programs for drills and exercises must be established.</li>
  <li>The Safety Management System (SMS) must ensure the company can respond at any time to hazards, accidents, and emergencies.</li>
</ul>
<p><strong>SOLAS</strong> provides comprehensive safety regulations covering construction, fire protection, life-saving appliances, radiocommunications, navigation safety, dangerous goods, ISM, high-speed craft, maritime security, and ships operating in polar waters.</p>

<h3>1.5 Emergency Plans and Procedures</h3>
<p>Emergency and contingency plans are crucial documents assisting the crisis management team. They must be accessible at key points (bridge, engine control room, gangway). Contents include:</p>
<ul>
  <li>Crew muster list plan</li>
  <li>Crew emergency plan</li>
  <li>Fire control plan</li>
  <li>Life-saving appliances and escape route/evacuation plan</li>
  <li>Damage control plan</li>
  <li>General arrangement plan</li>
  <li>Log book (for recording management decisions and orders)</li>
</ul>

<h3>1.6 Importance of Pre-Planning and Drills</h3>
<img src="/uploads/pshb/image2.jpeg" alt="Crew Muster List and Emergency Plan" style="max-width:100%;margin:1rem 0;">
<p>Regular practice and drills help teams respond to and manage incidents before they escalate into crises. A collision scenario illustrates how an initial incident can escalate: collision → structural damage → flooding → electrical arcing → fire → blackout → crew injury — requiring the crisis management team to handle multiple simultaneous emergencies.</p>
<p>Key principles from the <strong>Crew Emergency Plan (CEP)</strong>:</p>
<ul>
  <li><strong>Initial Actions (First Response):</strong> What each crew member must do upon discovering an incident (e.g., for fire: raise alarm, fight if safe, seal compartment if not safe, wait for ERT).</li>
  <li><strong>Central Command Team Procedures:</strong> How to manage an incident (e.g., receive muster reports, check for missing persons, stop ventilation, deploy ERT, manage casualties, communicate).</li>
  <li>In escalating incidents, prioritization and delegation are key — delegate specific issues to department heads while the CCT coordinates the overall response.</li>
</ul>', 'text', 2, 90, 1, NOW()),

(@course_id, '2. Optimize the Use of Resources', '<h2>2. Optimize the Use of Resources</h2>

<h3>2.1 Psychological Modes During Emergencies</h3>
<p>During an emergency, people react differently. Two common psychological modes are:</p>
<ul>
  <li><strong>Flight:</strong> Desire to run away. On a ship, this is a secondary option.</li>
  <li><strong>Fight:</strong> Desire to tackle the problem head-on. This mode is developed through practice and is the expected response from crew.</li>
</ul>

<h3>2.1.1 Key Factors for Incident Managers</h3>
<p>Incident managers must consider the following factors when managing people in emergencies:</p>
<ul>
  <li><strong>Uncertainty, Ambiguity, or Conflicting Information:</strong> Information must be gathered, assessed, and clarified in the early stages before decision-making.</li>
  <li><strong>Shifting and Competing Goals:</strong> Priorities during incident escalation must follow this order:
    <ol>
      <li>Passenger and personnel safety</li>
      <li>Vessel safety</li>
      <li>Environmental safety</li>
      <li>Operational safety</li>
    </ol>
    The CCT should take "time outs" to ensure all priorities are covered.
  </li>
  <li><strong>Time Stress:</strong> Time seems to slow down during emergencies. The CCT must avoid demanding information when none is available and trust the Emergency Response Team (ERT) to deliver timely reports.</li>
  <li><strong>Potential Serious Consequences:</strong> Focus must remain on containing the incident and ensuring safety.</li>
  <li><strong>Multiple Players (Team Factors):</strong> Language, culture, and communication are vital. Panicked or stressed people may revert to their mother tongue. Closed-loop communication is essential. Tasks should be assigned to competent team members with time-annotated records kept.</li>
  <li><strong>Personal Factors:</strong> Unwanted behaviors (anger, sorrow, apathy, indecision, confusion, stress, panic) can break down teamwork. The incident manager must control their own emotions and monitor the team. Additional factors: fatigue, workload, communications, and competency.</li>
</ul>

<h3>2.2 Full Use of Available Personnel and Equipment</h3>

<h4>Principles of Delegation</h4>
<p>The passenger ship organizational structure facilitates task delegation. Typical roles during a crisis:</p>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>Role</th><th>Responsibility</th></tr>
  </thead>
  <tbody>
    <tr><td>Master</td><td>Overall Incident/Crisis Manager</td></tr>
    <tr><td>Chief Officer</td><td>Marine incidents</td></tr>
    <tr><td>Chief Engineer</td><td>Technical incidents</td></tr>
    <tr><td>Navigational Officer</td><td>Safety coordination</td></tr>
    <tr><td>Officer (additional)</td><td>External communications</td></tr>
    <tr><td>Designated crew member</td><td>Incident log/recorder (scribe)</td></tr>
  </tbody>
</table>
<p>How to delegate effectively: Define the task → Communicate requirements clearly → Ensure understanding (closed-loop) → Follow up on progress.</p>

<h4>Short-Term Strategies for Unavailable Equipment</h4>
<ul>
  <li><strong>Regular Drills and Onboard Training:</strong> Familiarizes teams with equipment and builds muscle memory.</li>
  <li><strong>Ventilation and Watertight Integrity:</strong> Quick shutdown prevents smoke/gas spread; rapid closure of watertight doors contains flooding.</li>
  <li><strong>Speed:</strong> Fast ERT response limits escalation.</li>
  <li><strong>Communication:</strong> Quick, clear muster/head count reports; regular Situation Reports (SITREPS) every 15 minutes reduce fear and maintain coordination.</li>
  <li><strong>Use of Fixed Fire Fighting Systems:</strong> Early deployment can suppress fires. Ensure compartments are evacuated first.</li>
  <li><strong>Safe Working Areas:</strong> Setting up close to the incident saves SCBA air and shortens hoses.</li>
  <li><strong>Electrical/Mechanical Isolation:</strong> Early shutdown reduces load and ensures safety.</li>
  <li><strong>Record-Keeping:</strong> A dedicated scribe records time, decisions, instructions, and SITREPs. Diagrams should be marked with incident details, ERT locations, and equipment status.</li>
</ul>

<h4>Lifeboats and Liferafts</h4>
<p>Abandonment is an <em>executive order</em> based on vessel habitability. Factors considered include:</p>
<ul>
  <li>Trim (up to 10°)</li>
  <li>List (up to 20°)</li>
  <li>Speed of loading and launching</li>
</ul>', 'text', 3, 180, 1, NOW()),

(@course_id, '3. Control Response to Emergencies', '<h2>3. Control Response to Emergencies</h2>

<h3>3.1 Initial Assessment and Effective Response</h3>
<p>Emergencies require strong leaders at all levels — on-scene commander, engine room control, first aid teams, and zone commanders.</p>
<p>Initial information may be sparse, but personnel and resources must be mobilized under calm, decisive leadership. Key principles:</p>
<ul>
  <li>Leadership style must be firm and decisive.</li>
  <li>Stress levels will heighten; symptoms (rapid heart rate, sweating) must be identified to reallocate tasks and request support.</li>
  <li><strong>Raising the Alarm:</strong> Seafarers report location, nature of emergency, and casualties.</li>
  <li><strong>Situational Awareness:</strong> Reports from detectors (smoke/flame, gas, flooding) are vital for the crisis manager''s initial assessment and action plan.</li>
</ul>

<h4>Initial Assessment Questions</h4>
<ul>
  <li>What is the problem?</li>
  <li>What has already been done?</li>
  <li>How to contain it?</li>
  <li>What resources are needed?</li>
  <li>Is anyone hurt?</li>
  <li>Who needs to be informed?</li>
</ul>

<h3>3.2 Leading and Directing Others in Emergency Situations</h3>

<h4>Setting an Example</h4>
<ul>
  <li>Leaders must demonstrate tolerance under pressure.</li>
  <li>Consider suggestions and ideas from team members.</li>
  <li>Maintain complete situational awareness.</li>
  <li>Make firm decisions based on established contingency and emergency plans.</li>
</ul>

<h4>Motivating, Encouraging, and Calming</h4>
<ul>
  <li>Keep all crew and passengers informed with SITREPs every 15 minutes using the public address system.</li>
  <li>Radios should be handled by the scribe; the crisis manager uses closed-loop communication with the radio operator (instruction → repeat-back → acknowledgment).</li>
  <li>Communication should be short and clear (e.g., "Pass to the fire team on air standby to enter XYZ compartment").</li>
</ul>

<h3>3.3 Identifying and Managing Personnel Stress</h3>
<p>Traumatic incidents can cause strong emotional reactions. Personnel must recognize and manage stress symptoms in themselves and others.</p>

<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>Type</th><th>Symptoms</th></tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Physical</strong></td>
      <td>Chest pain, difficulty breathing, fatigue, nausea, dizziness, sweating, rapid heart rate, headaches, visual difficulties</td>
    </tr>
    <tr>
      <td><strong>Cognitive</strong></td>
      <td>Confusion, disorientation, poor concentration, memory problems, difficulty identifying familiar objects or people</td>
    </tr>
    <tr>
      <td><strong>Emotional</strong></td>
      <td>Anxiety, guilt, grief, denial, intense anger, fear, loss of emotional control, depression, feeling overwhelmed</td>
    </tr>
    <tr>
      <td><strong>Behavioral</strong></td>
      <td>Withdrawal, emotional outbursts, changes in appetite, inability to rest, pacing</td>
    </tr>
  </tbody>
</table>

<h4>Managing Stress</h4>
<ul>
  <li>Adhere to safety policies and procedures.</li>
  <li>Encourage and support co-workers.</li>
  <li>Recognize that "waiting" and "not having enough to do" are normal during emergencies.</li>
  <li>Take "time outs" to decompress.</li>
  <li>Practice relaxation techniques: deep breathing, meditation, stretching.</li>
  <li>Seek medical attention for severe physical symptoms.</li>
</ul>

<h3>3.4 Effects of Emergency Stress on Performance</h3>
<p>Stress generated by emergency situations can significantly affect the performance of individuals and their ability to follow instructions and adhere to procedures. Crisis managers must:</p>
<ul>
  <li>Monitor their own emotional state continuously.</li>
  <li>Observe team members for signs of overwhelming stress.</li>
  <li>Reassign tasks when a team member is unable to perform effectively.</li>
  <li>Request additional support (e.g., from company or authorities) when team capacity is exceeded.</li>
</ul>', 'text', 4, 420, 1, NOW()),

(@course_id, '4. Control Passengers and Other Personnel During Emergency Situations', '<h2>4. Control Passengers and Other Personnel During Emergency Situations</h2>

<h3>4.1 General Reaction Patterns — Phase One: Warning</h3>
<p>People often show reluctance to accept an emergency, especially in early stages. Social inhibitions can lead to slow initial responses. If warnings are prolonged or guidance is absent, uncertainty and anxiety rise, potentially leading to panic.</p>

<h4>Factors Influencing Passenger Reaction</h4>
<ul>
  <li><strong>Credibility of Sender:</strong> Authority, expertise, and experience lend credibility to instructions.</li>
  <li><strong>Conveyance and Content:</strong> How the message is delivered and by whom; avoid ambiguity.</li>
  <li><strong>Age Differences:</strong> Younger people may respond faster than the elderly.</li>
  <li><strong>Social Situation:</strong> Individuals or peer groups may respond slower than family groups.</li>
  <li><strong>Presence of Family or Friends:</strong> Families take warnings more seriously and try to stay together.</li>
  <li><strong>Time of Warning:</strong> Harder to rouse people at night; alarms need to be louder than background noise.</li>
  <li><strong>Experience:</strong> Prior emergency experience increases adaptive response.</li>
</ul>

<h4>Aids to Decision Making (Cues)</h4>
<ul>
  <li>How other people behave, especially crew.</li>
  <li>What other people say.</li>
  <li>Presence of specialized staff (senior officers, fire parties).</li>
  <li>Changes in the environment (engines slowing, listing).</li>
  <li>Physical evidence of a problem (heat, noise, smoke).</li>
  <li>Direct instructions from staff.</li>
</ul>

<h4>Maximizing Effectiveness of Warnings</h4>
<ul>
  <li>Delivered by appropriate, trustworthy people.</li>
  <li>Specific, correct content with clear expectations.</li>
  <li>Understandable language, repeated frequently.</li>
  <li>Neither underestimate nor overestimate danger.</li>
  <li>Never refer to similar catastrophes during the announcement.</li>
</ul>

<h3>4.2 Phase Two: Impact — When the Emergency is Confirmed</h3>
<p>The threat is understood as real. People detect environmental changes, collect information, interpret it, and decide on actions. Key observations:</p>
<ul>
  <li>Families and close friends want to stay together — they should be kept together.</li>
  <li>Roughly <strong>25%</strong> of people act rationally; this group is a valuable asset to crew.</li>
  <li>The bulk of passengers may accept the problem but take no action due to fear or confidence in crew.</li>
  <li>A small number (approx. <strong>15%</strong>) may engage in inappropriate behaviors (collecting belongings, panic).</li>
</ul>
<h4>Common Passenger Reactions</h4>
<ul>
  <li>Looking for relatives, friends, and belongings.</li>
  <li>Seeking safety in cabins or perceived safe places — search parties must ensure all areas are evacuated.</li>
  <li>Tendency to move to the upper side when the ship is listing. Crew must explain survival vessels may not be usable on the high side, and the danger of sliding to the lower side.</li>
</ul>

<h3>4.3 Phase Three: Evacuation — Panic and Separated Families</h3>
<p>Getting passengers to stop what they are doing and move requires both awareness of the threat (warning phase) and acceptance (impact phase).</p>

<h4>Common Assumptions That Hinder Evacuation</h4>
<ul>
  <li>Individuals move immediately upon alarm.</li>
  <li>Motivation to escape drives all actions.</li>
  <li>Evacuation time depends only on physical movement to exit.</li>
  <li>People move to the nearest exit and as individuals.</li>
  <li>Fire exit signs guarantee safe routes.</li>
</ul>

<h4>Categories of Human Behavioral Response</h4>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>Category</th><th>Behavior</th><th>Description</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>Inaction</td><td>Stunned, bewildered ("freezing" or "negative panic")</td></tr>
    <tr><td>2</td><td>Fear-Flight</td><td>Non-rational escape behavior, automatic responses to danger (moving to high side, retrieving belongings)</td></tr>
    <tr><td>3</td><td>Panic</td><td>Highly emotional, self-preservation at all costs, breakdown of group ties. Can increase danger for self and others.</td></tr>
    <tr><td>5</td><td>Altruism</td><td>Protective behaviors assisting survival; families/close friends respond rationally and altruistically</td></tr>
  </tbody>
</table>

<h3>4.4 Phase Four: Recoil (Stop Phase)</h3>
<p>After the emergency, crew must manage the aftermath:</p>
<ul>
  <li><strong>Non-serious events:</strong> Return to normal duties; passengers resume activities.</li>
  <li><strong>Serious events:</strong> Realization of full extent — loss of possessions/loved ones. Risk of Post-Traumatic Stress Disorder (PTSD): flashbacks, depression, anxiety, nightmares.</li>
</ul>
<h4>Helpful Responses During Recoil</h4>
<ul>
  <li>Decisive, compassionate leadership.</li>
  <li>Maintaining control and will to survive.</li>
  <li>Actively assisting others.</li>
  <li><strong>Roll Call:</strong> A powerful tool to establish authority, identify capable individuals, utilize skills, record injuries, assess mental state, and provide reassurance. Repeat roll calls regularly.</li>
</ul>
<h4>Children''s Vulnerability</h4>
<ul>
  <li><strong>Up to 8-9 years:</strong> Mirror parents'' responses.</li>
  <li><strong>9-14 years:</strong> May show excitement with no fear; may try to re-enter the disaster area.</li>
  <li><strong>Over 14 years:</strong> More likely to show fear; behavior similar to adults.</li>
</ul>', 'text', 5, 180, 1, NOW()),

(@course_id, '5. Establish and Maintain Effective Communications', '<h2>5. Establish and Maintain Effective Communications</h2>

<h3>5.1 Clear and Concise Instructions and Reports</h3>

<h4>Elementary Language</h4>
<p>Use simple, widely understood language for basic instructions to passengers. English is broadly spoken in maritime contexts and has a higher chance of understanding.</p>

<h4>Audible Communication Principles</h4>
<ul>
  <li><strong>Tone:</strong> Professional and friendly.</li>
  <li><strong>Pace:</strong> Speak slowly and deliberately.</li>
  <li><strong>Volume:</strong> Loud but with a low, calm pitch.</li>
  <li><strong>Diction:</strong> Clear, precise words without jargon.</li>
</ul>

<h4>Closed-Loop Communication</h4>
<p>A critical technique to avoid misunderstandings in high-stress situations:</p>
<ol>
  <li><strong>Sender</strong> gives the message.</li>
  <li><strong>Receiver</strong> repeats it back.</li>
  <li><strong>Sender</strong> confirms or corrects.</li>
</ol>
<p>This ensures the message is fully understood before execution and avoids costly misinterpretation during emergencies.</p>

<h3>5.2 Relevant Information to Passengers and Other Personnel</h3>

<h4>Language Appropriateness</h4>
<p>Crew must identify languages appropriate to the principal nationalities of passengers on each route. The <strong>MV Estonia</strong> tragedy highlighted the critical need for announcements in languages understood by the passengers on board.</p>

<h4>Alternative Communication Means</h4>
<p>When oral communication is impractical, use:</p>
<ul>
  <li>Demonstrations and physical guidance.</li>
  <li>Hand signals.</li>
  <li>Pointing to posted instructions, muster stations, life-saving devices, or evacuation routes.</li>
  <li>Large print, audio/video aids, or pictographic symbols.</li>
</ul>
<p>For hearing-impaired or non-English speakers: assign interpreters (crew or fellow passengers), use hand signals, point to safety posters and signs.</p>

<h3>5.3 Emergency Announcements</h3>
<p>Crew must demonstrate the ability to broadcast emergency announcements using elementary English. Announcements must be:</p>
<ul>
  <li>Simple and concise.</li>
  <li>Accurate and factual.</li>
  <li>Clear and unambiguous.</li>
  <li>Repeated at regular intervals.</li>
</ul>

<h4>Example Announcement Topics</h4>
<ul>
  <li>Instructions for putting on lifejackets.</li>
  <li>Guidance to lifeboat/muster stations.</li>
  <li>Instructions to maintain single file and remain calm.</li>
  <li>Updates on the nature and status of the emergency (at appropriate detail level).</li>
</ul>

<h3>Key Communication Principles Summary</h3>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>Principle</th><th>Application</th></tr>
  </thead>
  <tbody>
    <tr><td>Closed-loop communication</td><td>All critical orders between CCT and ERT</td></tr>
    <tr><td>SITREPs every 15 minutes</td><td>Crew and passenger updates via PA system</td></tr>
    <tr><td>Elementary language</td><td>Passenger instructions and announcements</td></tr>
    <tr><td>Dedicated radio operator/scribe</td><td>Frees the crisis manager to focus on decision-making</td></tr>
    <tr><td>Multi-language capability</td><td>Route-appropriate announcements for passenger nationalities</td></tr>
  </tbody>
</table>', 'text', 6, 60, 1, NOW());

-- ─── Quiz ─────────────────────────────────────────────────────────────────────

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id,
        'Passenger Ship Crisis Management — Final Examination',
        'Final examination covering crisis management organization, resource optimization, emergency response, passenger control, and communications.',
        70, 60, 1, NOW());

SET @quiz_id = LAST_INSERT_ID();

-- ─── Questions ────────────────────────────────────────────────────────────────

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'Which maritime disaster most directly led to the inclusion of crisis management training in the 1995 STCW amendment?', 'multiple_choice', 1, 1),
(@quiz_id, 'What is the primary goal of the Containment phase during a shipboard emergency?', 'multiple_choice', 1, 2),
(@quiz_id, 'Which team on a passenger ship is responsible for planning, evaluating, and deciding on vessel evacuation?', 'multiple_choice', 1, 3),
(@quiz_id, 'What are the two common psychological modes observed in people during emergencies?', 'multiple_choice', 1, 4),
(@quiz_id, 'In what order should priorities be addressed during an escalating emergency?', 'multiple_choice', 1, 5),
(@quiz_id, 'What is closed-loop communication?', 'multiple_choice', 1, 6),
(@quiz_id, 'What percentage of passengers typically acts rationally during the impact phase of an emergency?', 'multiple_choice', 1, 7),
(@quiz_id, 'How often should Situation Reports (SITREPs) be issued during an emergency?', 'multiple_choice', 1, 8),
(@quiz_id, 'At what maximum list angle may launching of survival craft become compromised?', 'multiple_choice', 1, 9),
(@quiz_id, 'What is the STCW regulation that governs Passenger Ship Crisis Management training?', 'multiple_choice', 1, 10),
(@quiz_id, 'Which cognitive stress symptom is most likely to impair a crisis manager''s decision-making?', 'multiple_choice', 1, 11),
(@quiz_id, 'What was a key lesson from the MV Costa Concordia disaster (2012)?', 'multiple_choice', 1, 12),
(@quiz_id, 'Who is typically designated as the dedicated log keeper (scribe) during a shipboard crisis?', 'multiple_choice', 1, 13),
(@quiz_id, 'Which behavioral category describes highly emotional, non-adaptive self-preservation behavior that can increase danger for others?', 'multiple_choice', 1, 14),
(@quiz_id, 'What is the most critical phase of emergency response after early discovery?', 'multiple_choice', 1, 15),
(@quiz_id, 'Children between 9-14 years old typically respond to a maritime emergency by:', 'multiple_choice', 1, 16),
(@quiz_id, 'The MV Estonia disaster highlighted the need for emergency announcements to be made in:', 'multiple_choice', 1, 17),
(@quiz_id, 'What factor should be considered before operating watertight compartment doors during a flooding scenario?', 'multiple_choice', 1, 18),
(@quiz_id, 'An abandonment order (launching lifeboats/liferafts) is based on which criterion?', 'multiple_choice', 1, 19),
(@quiz_id, 'Which ISM Code section requires companies to establish programs for drills and exercises?', 'multiple_choice', 1, 20);

-- Store question IDs
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

-- ─── Options ──────────────────────────────────────────────────────────────────

-- Q1: STCW 1995 amendment trigger
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'MV Costa Concordia (2012)', 0, 0),
(@q1, 'MS Herald of Free Enterprise, MS Scandinavian Star, and MS Estonia', 1, 1),
(@q1, 'The Titanic (1912)', 0, 2),
(@q1, 'MV Sewol (2014)', 0, 3);

-- Q2: Goal of Containment phase
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'To evacuate all passengers immediately', 0, 0),
(@q2, 'To identify the root cause of the incident', 0, 1),
(@q2, 'To prevent an incident from escalating into a major emergency', 1, 2),
(@q2, 'To contact the company and report the incident', 0, 3);

-- Q3: Team responsible for evacuation decision
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Emergency Response Team (ERT)', 0, 0),
(@q3, 'Central Command Team (CCT) on the Bridge', 1, 1),
(@q3, 'Damage Control Team', 0, 2),
(@q3, 'Port State Control Officers', 0, 3);

-- Q4: Psychological modes
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Confusion and Clarity', 0, 0),
(@q4, 'Panic and Calm', 0, 1),
(@q4, 'Flight and Fight', 1, 2),
(@q4, 'Denial and Acceptance', 0, 3);

-- Q5: Priority order in emergencies
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Vessel safety → Passenger safety → Environmental safety → Operational safety', 0, 0),
(@q5, 'Passenger and personnel safety → Vessel safety → Environmental safety → Operational safety', 1, 1),
(@q5, 'Environmental safety → Vessel safety → Passenger safety → Operational safety', 0, 2),
(@q5, 'Operational safety → Passenger safety → Vessel safety → Environmental safety', 0, 3);

-- Q6: Closed-loop communication
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Broadcasting on a closed radio channel only', 0, 0),
(@q6, 'Sender gives message → Receiver repeats back → Sender confirms or corrects', 1, 1),
(@q6, 'Using encrypted radio communications', 0, 2),
(@q6, 'Communicating only with the ship''s master', 0, 3);

-- Q7: Percentage acting rationally
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'About 10%', 0, 0),
(@q7, 'About 50%', 0, 1),
(@q7, 'About 25%', 1, 2),
(@q7, 'About 75%', 0, 3);

-- Q8: SITREP frequency
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Every 5 minutes', 0, 0),
(@q8, 'Every 15 minutes', 1, 1),
(@q8, 'Every 30 minutes', 0, 2),
(@q8, 'Every hour', 0, 3);

-- Q9: List angle affecting lifeboat launch
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'Up to 10°', 0, 0),
(@q9, 'Up to 15°', 0, 1),
(@q9, 'Up to 20°', 1, 2),
(@q9, 'Up to 30°', 0, 3);

-- Q10: STCW regulation for PSHB
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'STCW Regulation VI/1', 0, 0),
(@q10, 'STCW Regulation V/2, Table A-V/2-2', 1, 1),
(@q10, 'STCW Regulation VIII/2', 0, 2),
(@q10, 'STCW Regulation II/1', 0, 3);

-- Q11: Cognitive stress symptom affecting decision-making
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Nausea', 0, 0),
(@q11, 'Jaw clenching', 0, 1),
(@q11, 'Poor problem-solving and poor concentration', 1, 2),
(@q11, 'Thirst', 0, 3);

-- Q12: Costa Concordia lesson
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'The danger of operating in polar waters', 0, 0),
(@q12, 'Failures in leadership, evacuation management, and passenger communication', 1, 1),
(@q12, 'The importance of better watertight door technology', 0, 2),
(@q12, 'The need for more powerful engines on passenger ships', 0, 3);

-- Q13: Role of scribe
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Chief Officer', 0, 0),
(@q13, 'Master of the vessel', 0, 1),
(@q13, 'A dedicated crew member assigned as log keeper', 1, 2),
(@q13, 'Ship''s Doctor', 0, 3);

-- Q14: Behavioral category for panic
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Category 1 — Inaction', 0, 0),
(@q14, 'Category 2 — Fear-Flight', 0, 1),
(@q14, 'Category 3 — Panic', 1, 2),
(@q14, 'Category 5 — Altruism', 0, 3);

-- Q15: Most critical phase after discovery
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Incident Investigation', 0, 0),
(@q15, 'Evacuation', 0, 1),
(@q15, 'Containment', 1, 2),
(@q15, 'Damage Control', 0, 3);

-- Q16: Children 9-14 in emergencies
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Mirror their parents'' response closely', 0, 0),
(@q16, 'Show excitement with little fear, may try to re-enter the disaster area', 1, 1),
(@q16, 'Behave exactly like adults', 0, 2),
(@q16, 'Become completely unresponsive', 0, 3);

-- Q17: Estonia lesson about announcements
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Languages understood by the passengers on board', 1, 0),
(@q17, 'Only English to ensure uniformity', 0, 1),
(@q17, 'Only the official flag-state language', 0, 2),
(@q17, 'Using coded messages to prevent panic', 0, 3);

-- Q18: Watertight door consideration
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Only the captain''s order', 0, 0),
(@q18, 'Number of personnel in the affected compartment, stability/trim, and bilge pump status', 1, 1),
(@q18, 'The age of the ship''s hull', 0, 2),
(@q18, 'Time of day and sea conditions only', 0, 3);

-- Q19: Abandonment criterion
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Order from company headquarters', 0, 0),
(@q19, 'Approval from port state control', 0, 1),
(@q19, 'Vessel habitability (based on trim, list, and rate of flooding)', 1, 2),
(@q19, 'Passenger majority vote', 0, 3);

-- Q20: ISM Code emergency preparedness section
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'ISM Code Part A, Section 5', 0, 0),
(@q20, 'ISM Code Part A, Section 8', 1, 1),
(@q20, 'ISM Code Part B, Section 12', 0, 2),
(@q20, 'ISM Code Part A, Section 11', 0, 3);

SELECT 'PSHB course content loaded successfully.' AS result;
SELECT @course_id AS new_course_id;
SELECT COUNT(*) AS total_lessons FROM lms_lessons WHERE course_id = @course_id;
SELECT COUNT(*) AS total_quizzes FROM lms_quizzes WHERE course_id = @course_id;
SELECT COUNT(*) AS total_questions FROM lms_questions WHERE quiz_id = @quiz_id;
SELECT COUNT(*) AS total_options FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id = @quiz_id);
