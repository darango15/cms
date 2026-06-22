-- ASD - Able Seafarer - Deck Course
-- Course ID: 196 (existing draft, UPDATE)
-- STCW Regulation II/5, Table A-II/5 (Manila Amendments 2010)
-- Total: 39 hours (Rating forming part of a Navigational Watch)

SET NAMES utf8mb4;
SET @course_id = 196;

UPDATE lms_courses SET
  course_code     = 'ASD',
  title           = 'Able Seafarer - Deck (ASD)',
  slug            = 'able-seafarer-deck',
  description     = 'The Able Seafarer - Deck course meets the requirements of STCW Regulation II/5 and Table A-II/5 (Manila Amendments 2010). Trainees acquire competencies in navigational watchkeeping, bridge lookout duties, helmsman responsibilities, mooring and anchoring operations, cargo handling and securing, survival craft and rescue boat operation, fire prevention and firefighting, first aid, and general deck maintenance. The course prepares ratings to serve as Able Seafarers forming part of a navigational watch on SOLAS vessels.',
  image           = 'https://pamel.edu.pa/uploads/asd/image1.jpeg',
  level           = 'beginner',
  status          = 'published',
  category_id     = 6,
  pass_percentage = 70,
  is_free         = 0,
  price           = 0.00
WHERE id = @course_id;

-- Cleanup existing content
DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id);
DELETE FROM lms_quizzes WHERE course_id=@course_id;
DELETE FROM lms_lessons WHERE course_id=@course_id;

-- ============================================================
-- LESSONS (8 lessons)
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(@course_id,
'STCW Requirements, Certification & Responsibilities of the Able Seafarer',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image1.jpeg" alt="Able Seafarer Deck" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image2.png" alt="STCW Framework" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image5.png" alt="Certificate of Competency" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image6.png" alt="Seafarer Duties" style="max-width:100%;">',
'<h2>Introduction to the Able Seafarer - Deck Rating</h2>
<p>The Able Seafarer - Deck (ASD) is a rating who has demonstrated competence to form part of a navigational watch on ships at sea. The qualification is governed internationally by the International Convention on Standards of Training, Certification and Watchkeeping for Seafarers (STCW), specifically Regulation II/5 and Table A-II/5 of the STCW Code, as amended by the 2010 Manila Amendments.</p>
<h3>Minimum Requirements for Certification (STCW Regulation II/5)</h3>
<p>To be certified as an Able Seafarer - Deck, a candidate must:</p>
<ul>
<li>Have approved seagoing service of not less than 18 months as part of an approved training programme, OR</li>
<li>Have approved seagoing service of not less than 36 months</li>
<li>Have performed watchkeeping duties at sea for a period of not less than 12 months during the required seagoing service</li>
<li>Meet the applicable requirements of Section A-VI/1 (basic safety training — personal survival, fire prevention, elementary first aid, personal safety and social responsibility)</li>
<li>Satisfy the standard of competence in Table A-II/5</li>
</ul>
<h3>STCW Table A-II/5 — Competences Required</h3>
<p>The Able Seafarer - Deck must demonstrate competence in the following functions:</p>
<ol>
<li>Steer the ship and comply with helm orders in English</li>
<li>Keep a proper lookout by sight and hearing</li>
<li>Contribute to the monitoring and watchkeeping functions at the support level</li>
<li>Contribute to berthing, unberthing, and mooring operations</li>
<li>Contribute to anchoring operations</li>
<li>Operate survival craft and rescue boats</li>
<li>Contribute to cargo and store handling operations</li>
<li>Apply occupational health and safety (OH&S) precautions</li>
<li>Apply fire prevention measures and use firefighting equipment</li>
<li>Apply first aid on board ship</li>
</ol>
<h2>The Deck Watch Team</h2>
<p>On the bridge during a navigational watch, the typical team comprises:</p>
<ul>
<li><strong>Officer of the Watch (OOW):</strong> A deck officer (STCW Regulation II/1) with overall responsibility for the safe navigation of the vessel</li>
<li><strong>Helmsman (Quartermaster):</strong> An Able Seafarer at the helm, steering the ship on orders from the OOW</li>
<li><strong>Lookout:</strong> An Able Seafarer stationed as dedicated lookout — cannot be the helmsman simultaneously (except in exceptional circumstances in good visibility in uncongested waters)</li>
</ul>
<h2>STCW Basic Safety Certificates Required</h2>
<p>Before serving aboard any SOLAS vessel, an Able Seafarer must hold valid certificates in:</p>
<ul>
<li><strong>Personal Survival Techniques (PST)</strong> — STCW Section VI/1-1</li>
<li><strong>Fire Prevention and Firefighting (FPFF)</strong> — STCW Section VI/1-2</li>
<li><strong>Elementary First Aid (EFA)</strong> — STCW Section VI/1-3</li>
<li><strong>Personal Safety and Social Responsibilities (PSSR)</strong> — STCW Section VI/1-4</li>
<li><strong>Security Awareness</strong> — STCW Section VI/6-1</li>
</ul>
<h2>Shipboard Hierarchy and Reporting</h2>
<p>The Able Seafarer - Deck works under the direction of:</p>
<ul>
<li>The <strong>Bosun</strong> (Boatswain) — senior rating responsible for deck maintenance and deck crew</li>
<li>The <strong>Deck Officers</strong> (Chief Mate, 2nd Mate, 3rd Mate) — for watchkeeping duties</li>
<li>The <strong>Master</strong> — ultimate authority on board</li>
</ul>
<p>Able Seafarers must follow orders promptly and accurately, report any hazardous conditions observed, and maintain a professional attitude at all times. They must be familiar with the ship\'s safety management system (SMS) under the ISM Code.</p>'),
'text', 1, 150, 1),

(@course_id,
'Bridge Watchkeeping & Lookout Duties',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image7.png" alt="Bridge Watchkeeping" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image8.png" alt="Lookout Duties" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image9.png" alt="Navigation Lights" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image10.jpeg" alt="Binoculars Use" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image11.png" alt="Watch Handover" style="max-width:100%;">',
'<h2>The Navigational Watch</h2>
<p>The navigational watch is the continuous monitoring of the vessel\'s position, surroundings, traffic, and safety at sea. STCW Regulation VIII/2 and the STCW Code Section A-VIII/2 establish the principles of safe watchkeeping.</p>
<h3>STCW Principles for Watchkeeping</h3>
<ul>
<li>A proper watch must be maintained at all times</li>
<li>The composition of the watch must be sufficient for the prevailing circumstances</li>
<li>The OOW must never leave the bridge without being properly relieved</li>
<li>The Able Seafarer acting as lookout must give full attention to the task and not be assigned any other duties that could interfere</li>
</ul>
<h2>Duties of the Lookout</h2>
<p>The dedicated lookout is one of the most critical roles of the Able Seafarer on bridge watch. Responsibilities include:</p>
<h3>Primary Duties</h3>
<ul>
<li>Maintain a continuous visual and aural watch for all vessels, navigational hazards, lights, shapes, and sounds</li>
<li>Report immediately to the OOW any vessel, light, hazard, or anything unusual observed</li>
<li>Use binoculars effectively for distant objects and in reduced visibility</li>
<li>Maintain their position at the designated lookout station (usually at the bridge wings or forward lookout position)</li>
<li>Never leave the lookout station without permission from the OOW</li>
</ul>
<h3>What to Report</h3>
<ul>
<li>Any vessel sighted — give bearing and approximate range</li>
<li>Navigation lights and their color/pattern (to identify vessel type and aspect)</li>
<li>Sound signals (fog horns, distress signals)</li>
<li>Any debris, floating objects, or persons in the water</li>
<li>Changes in weather — reduced visibility, approaching squalls</li>
<li>Lights on shore or uncharted lights</li>
</ul>
<h3>Standard Lookout Report Format</h3>
<p>Reports to the OOW should be clear and concise using compass bearings:</p>
<ul>
<li>"Light on the port bow, bearing two-seven-zero degrees"</li>
<li>"Vessel broad on the starboard beam, bearing zero-nine-zero, appears to be crossing ahead"</li>
<li>"Fog signal heard, broad on the port bow"</li>
</ul>
<h2>Navigation Lights and Shapes</h2>
<p>The Able Seafarer must be able to identify vessel types and their intentions from their navigation lights and shapes (COLREGS, Rules 20–31):</p>
<h3>Power-driven Vessels Underway</h3>
<ul>
<li><strong>Masthead light (white):</strong> Forward — visible over 225°, arc from dead ahead to 22.5° abaft the beam on each side</li>
<li><strong>Second masthead light (white):</strong> Aft, higher than forward light — vessels over 50m required</li>
<li><strong>Sidelights:</strong> Green (starboard) and Red (port) — each visible over 112.5°</li>
<li><strong>Sternlight (white):</strong> Visible over 135° from astern</li>
</ul>
<h3>Key Light Combinations to Recognize</h3>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Lights Seen</th><th style="border:1px solid #ddd;padding:6px;">Vessel Type / Aspect</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Green only</td><td style="border:1px solid #ddd;padding:6px;">Power vessel — showing starboard side (crossing from right)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Red only</td><td style="border:1px solid #ddd;padding:6px;">Power vessel — showing port side (crossing from left)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">White only (single)</td><td style="border:1px solid #ddd;padding:6px;">Power vessel — showing stern (vessel ahead, moving away)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Two white vertically + red + green</td><td style="border:1px solid #ddd;padding:6px;">Power vessel head-on</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Two white vertically (no side lights)</td><td style="border:1px solid #ddd;padding:6px;">Vessel at anchor (&lt;50m — one white; &gt;50m — two white)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Red over white (vertical)</td><td style="border:1px solid #ddd;padding:6px;">Fishing vessel trawling</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Green over white (vertical)</td><td style="border:1px solid #ddd;padding:6px;">Pilot vessel on duty</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Red over red (vertical)</td><td style="border:1px solid #ddd;padding:6px;">Not under command (NUC)</td></tr>
</table>
<h2>Watchkeeping in Restricted Visibility</h2>
<p>In fog, mist, snow, or any condition reducing visibility, additional precautions are required (COLREGS Rule 19):</p>
<ul>
<li>Sound fog signals as required (Rule 35) — power-driven vessel underway: one prolonged blast every 2 minutes</li>
<li>Post dedicated forward lookout</li>
<li>Reduce to safe speed (Rule 6)</li>
<li>Have engines ready for immediate manoeuvre</li>
<li>Notify the Master</li>
<li>Switch on navigation lights</li>
<li>Use radar and plot contacts</li>
</ul>
<h2>Taking Over and Handing Over a Watch</h2>
<p>The relieving Able Seafarer must, before taking over the watch:</p>
<ul>
<li>Ensure they are rested and fit for duty</li>
<li>Check the current heading, speed, and any steering orders in effect</li>
<li>Be informed of any unusual conditions or orders from the Master</li>
<li>Confirm equipment is functioning correctly</li>
</ul>'),
'text', 2, 150, 1),

(@course_id,
'Steering the Ship — Helm Orders, Gyrocompass & Autopilot',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image12.jpeg" alt="Ship Helm" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image13.png" alt="Steering Modes" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image14.png" alt="Gyrocompass" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image15.png" alt="Autopilot" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image16.jpeg" alt="Helm Orders" style="max-width:100%;">',
'<h2>The Helmsman (Quartermaster)</h2>
<p>When assigned as helmsman, the Able Seafarer is responsible for steering the ship on orders received from the OOW. The helmsman must steer accurately, report any difficulty in steering, and respond promptly to all helm orders.</p>
<h2>Steering Modes</h2>
<h3>Hand Steering (Manual)</h3>
<p>The helmsman manually operates the steering wheel (or tiller) to maintain the ordered course. Used when:</p>
<ul>
<li>In confined waters, ports, and channels</li>
<li>During departure and arrival manoeuvres</li>
<li>When autopilot is unreliable or when rapid course changes are needed</li>
<li>In heavy weather requiring constant helm corrections</li>
</ul>
<h3>Autopilot (Automatic Steering)</h3>
<p>The autopilot maintains a set course automatically. The helmsman monitors the display and is ready to take manual control immediately. The OOW must supervise autopilot performance. Transition from autopilot to manual must be smooth — the helmsman must be at the wheel and helm confirmed steady before autopilot is disengaged.</p>
<h3>Non-Follow-Up (NFU) / Joystick Steering</h3>
<p>NFU steering applies rudder directly while the control is held — rudder moves only while the lever is operated. Used for precise manoeuvring at slow speed. When released, the rudder stays in position.</p>
<h2>Standard IMO Helm Orders</h2>
<p>Helm orders are given in English on all internationally trading vessels. The Able Seafarer must understand and execute these immediately:</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Order</th><th style="border:1px solid #ddd;padding:6px;">Action Required</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Starboard [number] / Port [number]</td><td style="border:1px solid #ddd;padding:6px;">Apply the ordered number of degrees of rudder to starboard / port</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Midships</td><td style="border:1px solid #ddd;padding:6px;">Put the rudder to zero degrees (amidships)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Hard starboard / Hard port</td><td style="border:1px solid #ddd;padding:6px;">Apply maximum rudder angle to starboard / port</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Steady / Steady as she goes</td><td style="border:1px solid #ddd;padding:6px;">Steer the heading the ship is on at the moment of the order</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Nothing to starboard / Nothing to port</td><td style="border:1px solid #ddd;padding:6px;">Do not allow the ship to swing in the named direction</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Steer [course]</td><td style="border:1px solid #ddd;padding:6px;">Alter course and steady on the ordered compass course</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Meet her</td><td style="border:1px solid #ddd;padding:6px;">Apply opposite rudder to check the swing of the ship</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ease to [number]</td><td style="border:1px solid #ddd;padding:6px;">Reduce rudder angle to the number of degrees ordered</td></tr>
</table>
<h3>Repeating Orders</h3>
<p>The helmsman MUST repeat every helm order back to the OOW immediately upon receiving it, and confirm when the order is executed. Example:</p>
<ul>
<li>OOW: <em>"Starboard twenty"</em></li>
<li>Helmsman: <em>"Starboard twenty"</em> (repeats order, applies rudder)</li>
<li>Helmsman: <em>"Twenty of starboard rudder on, sir"</em> (confirms execution)</li>
<li>OOW: <em>"Steer zero-nine-zero"</em></li>
<li>Helmsman: <em>"Steer zero-nine-zero"</em> (repeats, steadies on course)</li>
<li>Helmsman: <em>"Steady on zero-nine-zero"</em></li>
</ul>
<h2>Gyrocompass</h2>
<p>The gyrocompass is the primary compass used for steering on modern vessels. Key facts:</p>
<ul>
<li>Points to <strong>True North</strong> (not magnetic north) — no magnetic variation or deviation error</li>
<li>Based on gyroscopic inertia and earth\'s rotation</li>
<li>Takes several hours to settle after being started — not suitable for rapid deployment</li>
<li>Affected by latitude and speed (gyro error increases at high latitudes)</li>
<li>Gyro error must be checked regularly against celestial or other observations</li>
<li>The helmsman reads the gyrocompass repeater on the bridge to maintain course</li>
</ul>
<h2>Magnetic Compass</h2>
<ul>
<li>Points to <strong>Magnetic North</strong> — has variation (difference between True and Magnetic North) and deviation (caused by ship\'s magnetic field)</li>
<li>Total compass error = Variation + Deviation</li>
<li>The standard compass is located away from magnetic interference — usually on the compass platform/monkey island</li>
<li>Used as a backup and for checking the gyrocompass</li>
</ul>
<h2>Steering Precautions</h2>
<ul>
<li>Never leave the helm unattended during hand steering</li>
<li>Report immediately if the ship is not answering the helm</li>
<li>Report any mechanical defect with steering equipment to the OOW immediately</li>
<li>In the event of steering gear failure, the OOW will switch to emergency steering and the after-steering position may be manned</li>
<li>Emergency steering drills are conducted periodically — the Able Seafarer must know the emergency steering procedures</li>
</ul>'),
'text', 3, 150, 1),

(@course_id,
'Mooring, Anchoring & Deck Equipment',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image17.png" alt="Mooring Operations" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image18.png" alt="Mooring Lines" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image19.png" alt="Anchor Operations" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image20.png" alt="Deck Machinery" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image21.png" alt="Bollards and Fairleads" style="max-width:100%;">',
'<h2>Mooring Operations</h2>
<p>Mooring a ship securely to a berth is one of the primary deck skills of the Able Seafarer. The mooring party is directed by the Chief Mate and Bosun. Safe mooring requires teamwork, proper use of equipment, and awareness of hazards.</p>
<h3>Types of Mooring Lines</h3>
<img src="https://pamel.edu.pa/uploads/asd/image22.png" alt="Mooring Line Types" style="max-width:100%;">
<p>A ship is typically secured with six groups of lines, each serving a specific purpose:</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Line</th><th style="border:1px solid #ddd;padding:6px;">Direction</th><th style="border:1px solid #ddd;padding:6px;">Function</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Headline (Head line)</td><td style="border:1px solid #ddd;padding:6px;">Forward from bow</td><td style="border:1px solid #ddd;padding:6px;">Holds ship forward against the berth</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Sternline</td><td style="border:1px solid #ddd;padding:6px;">Aft from stern</td><td style="border:1px solid #ddd;padding:6px;">Holds ship aft against the berth</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Forward breast</td><td style="border:1px solid #ddd;padding:6px;">90° from bow</td><td style="border:1px solid #ddd;padding:6px;">Holds bow in to berth</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Aft breast</td><td style="border:1px solid #ddd;padding:6px;">90° from stern</td><td style="border:1px solid #ddd;padding:6px;">Holds stern in to berth</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Forward spring</td><td style="border:1px solid #ddd;padding:6px;">Aft from forward section</td><td style="border:1px solid #ddd;padding:6px;">Prevents ship moving forward</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Aft spring</td><td style="border:1px solid #ddd;padding:6px;">Forward from aft section</td><td style="border:1px solid #ddd;padding:6px;">Prevents ship moving aft</td></tr>
</table>
<h3>Mooring Line Materials</h3>
<ul>
<li><strong>Steel wire rope:</strong> High strength, minimal stretch — used for headlines and stern lines. Requires proper lubrication and handling with wire-handling gloves</li>
<li><strong>Polypropylene (synthetic fiber):</strong> Lighter than wire, floats on water, good stretch — common on smaller vessels. Beware snap-back</li>
<li><strong>Polyester (Dacron):</strong> Low stretch, resistant to UV — used for permanent moorings</li>
<li><strong>HMPE (Dyneema/Spectra):</strong> High-strength, low-weight, very low stretch — increasingly common on larger vessels</li>
<li><strong>Manila (natural fiber):</strong> Traditional material — relatively weak and deteriorates with moisture</li>
</ul>
<h3>Snap-Back Zone</h3>
<p>If a mooring line parts (breaks) under tension, it will snap back violently in the direction of the stored energy. The <strong>snap-back zone</strong> is the dangerous area in the path of a parting line. Able Seafarers must:</p>
<ul>
<li>Never stand in the snap-back zone when a line is under tension</li>
<li>Stand to the side of winches and bitts, not behind them</li>
<li>Wear personal protective equipment (PPE) — hard hat, gloves, safety boots</li>
</ul>
<h3>Deck Equipment for Mooring</h3>
<ul>
<li><strong>Mooring winch:</strong> Electrically or hydraulically powered; used to haul in and pay out mooring lines</li>
<li><strong>Capstan:</strong> Vertical rotating drum used to haul lines</li>
<li><strong>Bollard:</strong> Cast iron/steel post on the berth for securing lines</li>
<li><strong>Bitt:</strong> Pair of posts on the ship\'s deck for making lines fast</li>
<li><strong>Fairlead:</strong> Guides mooring lines from ship to berth without chafing</li>
<li><strong>Chock:</strong> Opening in bulwark for passing lines — Panama chock, closed chock, roller chock</li>
</ul>
<h3>Heaving Line</h3>
<p>A heaving line is a lightweight line with a weighted end (monkey\'s fist) thrown from ship to shore or pilot boat to pass the heavier mooring line. Technique:</p>
<ul>
<li>Coil properly in non-dominant hand, throwing portion in dominant hand</li>
<li>Aim ahead of the receiving person to allow for drift</li>
<li>Never throw a heaving line at a person</li>
</ul>
<h2>Anchoring Operations</h2>
<img src="https://pamel.edu.pa/uploads/asd/image23.png" alt="Anchor Equipment" style="max-width:100%;">
<h3>Anchor Equipment</h3>
<ul>
<li><strong>Bower anchors:</strong> Main anchors stowed in hawsepipes at the bow (port and starboard)</li>
<li><strong>Stern anchor:</strong> Some vessels carry a small anchor at the stern</li>
<li><strong>Anchor cable (chain):</strong> Made of steel links — measured in shackles (1 shackle = 27.5 m = 15 fathoms)</li>
<li><strong>Windlass:</strong> Deck machinery used to raise and lower the anchor</li>
<li><strong>Cable lifter / Gypsy:</strong> The rotating drum of the windlass that engages the anchor chain</li>
<li><strong>Cable locker:</strong> Compartment in the bow where anchor chain is stowed</li>
<li><strong>Bitter end:</strong> The inboard end of the anchor cable — secured to the cable locker</li>
</ul>
<h3>Rule of Thumb for Scope</h3>
<p>The length of cable veered (let out) affects holding power. General guidance:</p>
<ul>
<li>In normal conditions: 3–5 times the depth of water</li>
<li>In heavy weather or strong current: 5–7 times the depth</li>
<li>More scope = more catenary (curve in chain) = better holding power</li>
</ul>
<h3>Safety During Anchor Operations</h3>
<ul>
<li>Wear hard hat and keep clear of the chain run and anchor path</li>
<li>Never stand in the hawse pipe area or chain path when cable is running</li>
<li>Communication between windlass operator and bridge officer is essential (hand signals or radio)</li>
<li>Ensure windlass brake is firmly applied before leaving the forecastle</li>
</ul>'),
'text', 4, 180, 1),

(@course_id,
'Cargo Handling, Stowage & Safety',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image24.png" alt="Cargo Operations" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image25.png" alt="Cargo Securing" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image26.jpeg" alt="Deck Cargo" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image27.png" alt="Lashing Equipment" style="max-width:100%;">',
'<h2>Role of the Able Seafarer in Cargo Operations</h2>
<p>The Able Seafarer - Deck assists officers with cargo operations under the direction of the Bosun and Chief Mate. Responsibilities include rigging and operating cargo gear, handling lines, monitoring cargo being loaded or discharged, and ensuring cargo is properly secured for sea.</p>
<h2>Types of Cargo and Cargo Ships</h2>
<h3>General Cargo</h3>
<p>Breakbulk cargo — individual items or pallets. Handled with ship\'s cranes or shore gantry cranes. Stowed in cargo holds with careful attention to weight distribution and compatibility.</p>
<h3>Container Ships</h3>
<p>ISO standardized containers (20-foot TEU, 40-foot FEU). Containers stacked on deck and in holds. Secured with twist locks, lashing rods, and turnbuckles.</p>
<h3>Bulk Carriers</h3>
<p>Dry bulk cargo (grain, coal, ore, fertilizer). Loaded through hatches using shore conveyor belts or grabs. The Able Seafarer operates hatch covers and assists with trim and stability monitoring.</p>
<h3>Tankers</h3>
<p>Liquid cargo in tanks (crude oil, petroleum products, chemicals, LNG). Deck crew assist with hose connections, manifold operations, and cargo pump monitoring.</p>
<h3>Ro-Ro (Roll-on/Roll-off)</h3>
<p>Vehicles and wheeled cargo driven on/off via ramps. Able Seafarers operate stern ramp, bow visor, and assist with vehicle lashing.</p>
<h2>Cargo Securing</h2>
<img src="https://pamel.edu.pa/uploads/asd/image28.png" alt="Cargo Lashing" style="max-width:100%;">
<p>Proper cargo securing prevents cargo shift at sea, which can cause vessel instability and loss of life. The Cargo Securing Manual (CSM) is a required document on all SOLAS vessels specifying approved securing methods for different cargo types.</p>
<h3>Lashing Equipment</h3>
<ul>
<li><strong>Lashing rod with turnbuckle:</strong> Adjustable steel rod for securing containers and heavy cargo; turnbuckle allows tensioning</li>
<li><strong>Chain lashings:</strong> Heavy steel chains for securing wheeled cargo and heavy lifts</li>
<li><strong>Wire lashings:</strong> Steel wire with rigging screws — used for securing deck cargo</li>
<li><strong>Webbing straps:</strong> Synthetic straps with ratchet tensioners — used for lighter cargo</li>
<li><strong>Twist locks:</strong> Interlocking devices at container corners — ISO-standard automatic or manual types</li>
<li><strong>Dunnage:</strong> Timber or other material placed between cargo items to prevent movement and protect from damage</li>
</ul>
<h3>Dangerous Goods</h3>
<p>Dangerous goods are classified and handled according to the IMDG Code (International Maritime Dangerous Goods Code). The Able Seafarer must:</p>
<ul>
<li>Follow the instructions of the OOW and Bosun when handling IMDG cargo</li>
<li>Be aware of emergency procedures for the specific class of dangerous goods</li>
<li>Know the location of the IMDG manifest and emergency response information</li>
<li>NEVER stow incompatible dangerous goods together (e.g., oxidizers near flammables)</li>
</ul>
<h2>Hatch Covers</h2>
<p>Hatch covers seal cargo holds from weather. Types include:</p>
<ul>
<li><strong>Folding hatch covers (McGregor type):</strong> Steel panels that fold and roll to the side — operated hydraulically or by wire</li>
<li><strong>Single-pull hatch covers:</strong> One large panel that pulls to one end — common on bulk carriers</li>
<li><strong>Pontoon covers:</strong> Removable steel panels lifted by crane — older type, labor-intensive</li>
</ul>
<p>Hatch cover gaskets must be inspected and maintained. Faulty gaskets allow water ingress, damaging cargo and potentially sinking the ship.</p>
<h2>Stability Awareness</h2>
<p>While stability calculations are the responsibility of the Master and Chief Mate, the Able Seafarer must understand basic principles:</p>
<ul>
<li><strong>G (Centre of Gravity):</strong> The point through which the ship\'s total weight acts downward</li>
<li><strong>B (Centre of Buoyancy):</strong> The centroid of the underwater volume</li>
<li><strong>M (Metacentre):</strong> The point above which G must not rise for the vessel to be stable</li>
<li><strong>GM (Metacentric Height):</strong> Distance between G and M — positive GM = stable vessel</li>
<li>Loading heavy cargo high in the ship raises G and reduces stability</li>
<li>Cargo shift to one side causes the ship to list — an increasing list is a serious danger signal</li>
</ul>'),
'text', 5, 150, 1),

(@course_id,
'Survival Craft, Rescue Boats & Personal Survival Techniques',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image29.jpeg" alt="Lifeboat" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image30.png" alt="Life Raft" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image31.jpeg" alt="Rescue Boat" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image32.jpeg" alt="Immersion Suit" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image33.jpeg" alt="Life Jacket" style="max-width:100%;">',
'<h2>SOLAS Survival Craft Requirements</h2>
<p>SOLAS Chapter III governs life-saving appliances and arrangements. All crew members must be trained in the use of survival craft. The Able Seafarer must be capable of operating lifeboats, rescue boats, and liferafts.</p>
<h2>Lifeboats</h2>
<h3>Types of Lifeboats</h3>
<ul>
<li><strong>Totally enclosed lifeboat (TELB):</strong> Fully enclosed, self-righting, with engine and water spray fire protection system — standard on most cargo ships and tankers</li>
<li><strong>Partially enclosed lifeboat:</strong> Has a hard canopy over part of the boat — used on some passenger ships</li>
<li><strong>Free-fall lifeboat:</strong> Launched by sliding down the stern — used on bulk carriers and tankers where traditional launching is dangerous</li>
<li><strong>Open lifeboat:</strong> Older type, being phased out</li>
</ul>
<h3>Lifeboat Equipment (SOLAS LSA Code)</h3>
<p>Each lifeboat must carry:</p>
<ul>
<li>Food rations, drinking water (3 liters per person), seasickness medicine</li>
<li>First aid kit and medicines</li>
<li>Parachute rocket flares (×4), hand flares (×6), buoyant smoke signals (×2)</li>
<li>Compass, sea anchor, paddle/oars, bailer</li>
<li>Portable radio (SART or two-way VHF)</li>
<li>Thermal protective aids (TPA) for 10% of occupants or 2 (whichever is more)</li>
<li>Searchlight, signal mirror, fishing tackle</li>
</ul>
<h3>Davit System</h3>
<p>Lifeboats are launched using davits — mechanical systems that lower the boat from the ship. Types:</p>
<ul>
<li><strong>Gravity davit:</strong> Most common — boat slides down gravity-operated arms to the embarkation deck, then lowered on falls</li>
<li><strong>Slewing davit:</strong> Single arm that swings the boat outboard — used for rescue boats</li>
</ul>
<h3>On-Load Release Hook</h3>
<p>The release hook allows the lifeboat to be detached from the falls while still in the water. The on-load release prevents accidental release when the boat is not waterborne. The Able Seafarer must understand the release mechanism and be trained in its operation.</p>
<h2>Inflatable Liferafts</h2>
<img src="https://pamel.edu.pa/uploads/asd/image34.png" alt="Liferaft" style="max-width:100%;">
<p>Liferafts are inflatable platforms for survival when lifeboats cannot be launched. Types:</p>
<ul>
<li><strong>Throw-over type:</strong> Stowed in a canister on deck — thrown overboard and inflation painter pulled to inflate</li>
<li><strong>Float-free type (HRU):</strong> Fitted with a Hydrostatic Release Unit — automatically releases and inflates when the ship sinks to 1.5–4 m depth</li>
</ul>
<h3>Liferaft Capacity and Service</h3>
<ul>
<li>Capacity: typically 6, 8, 10, 15, 20, or 25 persons</li>
<li>Service intervals: every 12 months at an approved service station</li>
<li>Minimum equipment: similar to lifeboats but no engine; includes sea anchor, paddles, water, food, flares</li>
</ul>
<h2>Rescue Boats</h2>
<p>A rescue boat is carried for recovering persons from the water or from a disabled survival craft. Requirements:</p>
<ul>
<li>At least 5 persons capacity</li>
<li>Engine capable of 6 knots minimum</li>
<li>The Able Seafarer may be assigned as rescue boat crew — requires training in operation, recovery, and MOB procedures</li>
</ul>
<h2>Personal Life-Saving Appliances</h2>
<h3>Lifejackets</h3>
<p>SOLAS requires lifejackets for every person on board, plus 5% spare. Key rules:</p>
<ul>
<li>Must keep the wearer face-up in the water</li>
<li>Fitted with whistle, retro-reflective tape, and light</li>
<li>Must be donned within 60 seconds — regular drills required</li>
<li>Do not inflate inside the ship — inflate in the water or just before entering water</li>
</ul>
<h3>Immersion Suits (Survival Suits)</h3>
<p>Immersion suits protect against hypothermia in cold water. They provide thermal insulation and buoyancy:</p>
<ul>
<li>Must be donned within 2 minutes</li>
<li>Allow the wearer to jump from 4.5m into water without injury</li>
<li>Thermal protection: maintain body temperature in water at 0°C for 6 hours</li>
<li>Bright orange color for visibility</li>
<li>Must be stored accessible to each person\'s cabin or survival craft embarkation station</li>
</ul>
<h3>Lifebuoys</h3>
<ul>
<li>Minimum 8 per SOLAS cargo ship (16+ for passenger ships)</li>
<li>At least half must be fitted with self-igniting lights</li>
<li>At least 2 must be fitted with self-activating smoke signals</li>
<li>At least 2 must be fitted with buoyant lifelines (not less than 30m)</li>
</ul>'),
'text', 6, 180, 1),

(@course_id,
'Fire Prevention, Firefighting & Emergency Procedures',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image35.png" alt="Fire Prevention" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image36.png" alt="Fire Triangle" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image37.png" alt="Firefighting Equipment" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image38.png" alt="Fire Extinguishers" style="max-width:100%;">',
'<h2>The Fire Triangle</h2>
<p>Fire requires three elements — remove any one and the fire will be extinguished:</p>
<ul>
<li><strong>Fuel (Combustible material):</strong> Any material that can burn — oil, wood, rope, paint, gas</li>
<li><strong>Heat (Ignition source):</strong> Sufficient temperature to ignite the fuel — sparks, hot surfaces, open flame</li>
<li><strong>Oxygen (Air):</strong> Minimum approximately 16% oxygen concentration required for combustion</li>
</ul>
<p>Some sources describe a <strong>Fire Tetrahedron</strong> which adds a fourth element: the chemical chain reaction — interrupting this is how certain agents (Halon, CO₂) extinguish fires.</p>
<h2>Classes of Fire</h2>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Class</th><th style="border:1px solid #ddd;padding:6px;">Fuel Type</th><th style="border:1px solid #ddd;padding:6px;">Examples</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Class A</td><td style="border:1px solid #ddd;padding:6px;">Solid carbonaceous materials</td><td style="border:1px solid #ddd;padding:6px;">Wood, rope, paper, textiles, dunnage</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Class B</td><td style="border:1px solid #ddd;padding:6px;">Flammable liquids and gases</td><td style="border:1px solid #ddd;padding:6px;">Oil, fuel, paint, LPG</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Class C</td><td style="border:1px solid #ddd;padding:6px;">Electrical equipment</td><td style="border:1px solid #ddd;padding:6px;">Panels, motors, generators</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Class D</td><td style="border:1px solid #ddd;padding:6px;">Combustible metals</td><td style="border:1px solid #ddd;padding:6px;">Magnesium, sodium, titanium (rare on deck)</td></tr>
</table>
<h2>Fire Prevention on Deck</h2>
<img src="https://pamel.edu.pa/uploads/asd/image39.png" alt="Fire Prevention" style="max-width:100%;">
<h3>Key Prevention Measures</h3>
<ul>
<li>No smoking except in designated smoking areas — never near fuel tanks, paint stores, or cargo areas</li>
<li>Hot work (welding, cutting, grinding) requires a hot work permit signed by the Master or Chief Mate; fire watch must be maintained during and after</li>
<li>Proper storage of flammable materials — paint and solvent stores must be ventilated and locked</li>
<li>Keep bilges clean and free of oil accumulation</li>
<li>Inspect electrical equipment for fraying cables, overloaded circuits</li>
<li>Ensure galley equipment is clean and exhaust ducts are grease-free</li>
</ul>
<h2>Firefighting Equipment</h2>
<h3>Portable Fire Extinguishers</h3>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Type</th><th style="border:1px solid #ddd;padding:6px;">Suitable For</th><th style="border:1px solid #ddd;padding:6px;">NOT Suitable For</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Water</td><td style="border:1px solid #ddd;padding:6px;">Class A</td><td style="border:1px solid #ddd;padding:6px;">Class B, Class C (electrical)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Foam (AFFF)</td><td style="border:1px solid #ddd;padding:6px;">Class A, Class B</td><td style="border:1px solid #ddd;padding:6px;">Class C (electrical)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">CO₂</td><td style="border:1px solid #ddd;padding:6px;">Class B, Class C</td><td style="border:1px solid #ddd;padding:6px;">Confined spaces (asphyxiation risk)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Dry Powder</td><td style="border:1px solid #ddd;padding:6px;">Class A, B, C</td><td style="border:1px solid #ddd;padding:6px;">Can damage electronic equipment</td></tr>
</table>
<h3>Fire Hoses and Nozzles</h3>
<ul>
<li>International Shore Connection: standard flange for connecting shore fire hoses to ship</li>
<li>Nozzle types: jet (for penetrating fire), spray/fog (for cooling and personnel protection), foam (for Class B fires)</li>
<li>Hose cabinets must be accessible at all times — never blocked</li>
</ul>
<h3>Fixed Firefighting Systems</h3>
<ul>
<li><strong>CO₂ total flooding system:</strong> For engine room and cargo holds — EVACUATE before activation</li>
<li><strong>Water mist / sprinkler:</strong> For accommodation spaces</li>
<li><strong>Foam system:</strong> For pump rooms and tanker decks</li>
<li><strong>Dry powder:</strong> For tanker deck areas</li>
</ul>
<h2>Emergency Procedures</h2>
<h3>Fire Alarm and Muster</h3>
<ol>
<li>Raise the alarm — activate nearest fire alarm call point or shout "FIRE"</li>
<li>Report location and nature of fire to the bridge</li>
<li>Proceed to muster station as directed by the Muster List</li>
<li>Follow instructions of the OOW and fire team leaders</li>
</ol>
<h3>Abandon Ship</h3>
<p>Seven or more short blasts followed by one prolonged blast on the ship\'s whistle/alarm = Abandon Ship signal. On hearing this signal:</p>
<ol>
<li>Don lifejacket and immersion suit</li>
<li>Proceed to muster station with emergency equipment</li>
<li>Await orders from Master/Officer in charge</li>
<li>Board survival craft when ordered</li>
</ol>
<h3>Man Overboard (MOB)</h3>
<ol>
<li>Shout "Man overboard — port/starboard side"</li>
<li>Throw a lifebuoy with light and smoke signal</li>
<li>Press MOB button on GPS/ECDIS</li>
<li>Keep visual contact — do not lose sight of person in water</li>
<li>Alert bridge immediately</li>
</ol>'),
'text', 7, 150, 1),

(@course_id,
'Ship Maintenance, Painting, Rigging & Occupational Health',
CONCAT(
'<img src="https://pamel.edu.pa/uploads/asd/image40.jpeg" alt="Deck Maintenance" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image41.png" alt="Chipping and Painting" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image42.png" alt="Rigging Safety" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image43.jpeg" alt="PPE" style="max-width:100%;">',
'<img src="https://pamel.edu.pa/uploads/asd/image44.png" alt="Permit to Work" style="max-width:100%;">',
'<h2>Deck Maintenance</h2>
<p>Regular maintenance is essential to preserve the ship\'s structural integrity, appearance, and safety. The Able Seafarer carries out deck maintenance under the direction of the Bosun. Key maintenance tasks include:</p>
<h3>Chipping and Scaling</h3>
<ul>
<li>Remove rust, old paint, and scale from steel surfaces using chipping hammers, pneumatic or electric chipping guns, needle guns, and wire brushes</li>
<li>Prepare the surface to "bright metal" or specified standard before painting</li>
<li>Wear PPE: eye protection (goggles/full face shield), hearing protection, dust mask or respirator, gloves, hard hat</li>
<li>Chip away from other persons — never chip toward someone</li>
<li>Contain and clean up debris — steel chips are a slip hazard and can contaminate cargo</li>
</ul>
<h3>Painting</h3>
<img src="https://pamel.edu.pa/uploads/asd/image45.png" alt="Paint Types" style="max-width:100%;">
<p>Painting protects steel from corrosion. The proper painting system involves:</p>
<ol>
<li><strong>Surface preparation:</strong> Clean, dry, free of rust and grease</li>
<li><strong>Primer:</strong> Anti-corrosive primer coat applied to bare metal</li>
<li><strong>Intermediate coat:</strong> Builds up film thickness</li>
<li><strong>Topcoat / Antifouling:</strong> Final coat providing weather protection (topside) or preventing marine growth (underwater hull)</li>
</ol>
<h4>Paint Safety</h4>
<ul>
<li>Many paints contain toxic solvents — use in ventilated areas, wear respirator</li>
<li>Anti-corrosive paints may contain lead or chromate — high toxicity, follow MSDS/SDS instructions</li>
<li>Antifouling paints are toxic by design — follow disposal regulations strictly</li>
<li>No open flames or smoking near paint stores or during spray painting</li>
<li>Wash hands and exposed skin after handling paint</li>
</ul>
<h3>Wire Rope and Rigging Maintenance</h3>
<p>Wire ropes (for cargo gear, mooring lines, running rigging) must be inspected and lubricated regularly:</p>
<ul>
<li><strong>Visual inspection:</strong> Look for broken wires (more than 10% broken in any lay length = discard), kinks, bird-caging, corrosion, flat spots</li>
<li><strong>Lubrication:</strong> Apply wire rope lubricant to prevent internal corrosion and reduce friction</li>
<li><strong>End fittings:</strong> Inspect swaged sockets, shackles, and thimbles for cracks or deformation</li>
<li>A wire rope with internal corrosion may look intact externally but has greatly reduced strength</li>
</ul>
<h3>Fiber Rope Maintenance</h3>
<ul>
<li>Inspect for cuts, abrasion, ultraviolet degradation, and chemical contamination</li>
<li>HMPE ropes: do not expose to sharp edges — the core can be severed while the outer jacket remains intact</li>
<li>Dry and store synthetic ropes away from UV light when not in use</li>
<li>Never use a rope with visible core damage or significant abrasion</li>
</ul>
<h2>Occupational Health and Safety (OH&S)</h2>
<img src="https://pamel.edu.pa/uploads/asd/image46.png" alt="Safety Signs" style="max-width:100%;">
<h3>Permit to Work (PTW) System</h3>
<p>The PTW system controls hazardous activities on board. The Able Seafarer must understand and follow PTW procedures. Common PTW categories:</p>
<ul>
<li><strong>Hot Work Permit:</strong> For welding, cutting, grinding — controls ignition sources near fuel and cargo</li>
<li><strong>Enclosed Space Entry Permit:</strong> For entry into tanks, voids, cofferdams, pump rooms — oxygen deficiency or toxic atmosphere risk</li>
<li><strong>Working Aloft Permit:</strong> For work on masts, funnels, or elevated structures — fall protection required</li>
<li><strong>Overside Work Permit:</strong> For work over the ship\'s side — lifejacket and safety line required</li>
</ul>
<h3>Enclosed Space Entry</h3>
<p>Enclosed spaces are among the most dangerous areas on a ship. Oxygen depletion or toxic gases can incapacitate a person within seconds. Before entering any enclosed space:</p>
<ul>
<li>Obtain a valid enclosed space entry permit</li>
<li>Test the atmosphere: oxygen (19.5–23.5%), flammable gas (&lt;1% LEL), toxic gases (CO, H₂S)</li>
<li>Maintain continuous forced ventilation throughout entry</li>
<li>Have a trained attendant outside the space</li>
<li>Wear appropriate SCBA (Self-Contained Breathing Apparatus) if atmosphere is not certified safe</li>
<li>Establish communication system between entrant and attendant</li>
<li>Have emergency rescue equipment ready at the entrance</li>
</ul>
<h3>Working at Heights</h3>
<ul>
<li>Use safety harness and fall arrest equipment for any work where a fall of more than 2 metres is possible</li>
<li>Inspect all fall protection equipment before use</li>
<li>Use scaffolding or stages properly erected and inspected by a competent person</li>
<li>Never use defective ladders or stages</li>
<li>Use safety nets or outriggers when working over the side</li>
</ul>
<h3>Personal Protective Equipment (PPE)</h3>
<img src="https://pamel.edu.pa/uploads/asd/image47.jpeg" alt="PPE Equipment" style="max-width:100%;">
<p>The Able Seafarer must use appropriate PPE for every task:</p>
<ul>
<li><strong>Hard hat:</strong> For all deck work where falling objects are possible</li>
<li><strong>Safety boots (steel-toed):</strong> At all times on deck and in cargo areas</li>
<li><strong>Gloves:</strong> Wire-handling gloves for wire rope; chemical-resistant gloves for paint and chemicals; thermal gloves in cold climates</li>
<li><strong>Eye protection:</strong> Safety glasses (general), goggles (chipping), full face shield (grinding)</li>
<li><strong>Hearing protection:</strong> Ear plugs or ear defenders in noisy areas (engine room visits, pneumatic tools)</li>
<li><strong>High-visibility vest:</strong> During port operations, cargo operations, and whenever required by local port regulations</li>
<li><strong>Safety harness:</strong> When working at height</li>
<li><strong>Lifejacket:</strong> When working over the side</li>
</ul>'),
'text', 8, 180, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id, 'Able Seafarer - Deck (ASD) Assessment', 'Final assessment covering STCW requirements, lookout duties, helm orders, mooring operations, cargo handling, survival craft, firefighting, and ship maintenance. Minimum 70% required to pass.', 70, 45, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- ============================================================
-- QUESTIONS
-- ============================================================

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'Under STCW Regulation II/5, what is the minimum approved seagoing service required for certification as an Able Seafarer - Deck (without an approved training programme)?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'When keeping lookout on the bridge, the Able Seafarer observes a vessel showing only a green light. What does this indicate?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'The OOW orders "Hard starboard". What action must the helmsman take?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'What is the correct response of a helmsman after executing the order "Steer one-eight-zero"?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'Which compass points to True North and is used as the primary steering compass on modern ships?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'What is the purpose of a mooring spring line?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'What does the term "snap-back zone" refer to in mooring operations?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'In anchoring operations, what is one shackle of anchor cable equal to?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'A ship is carrying Class B dangerous goods as deck cargo. What type of fire hazard do Class B materials represent?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'Which type of fire extinguisher is MOST suitable for fighting an electrical (Class C) fire?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'What is the signal for "Abandon Ship" on a vessel\'s alarm system?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'A Hydrostatic Release Unit (HRU) on a liferaft automatically releases and inflates the raft at what depth?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'What is the minimum time within which a seafarer must be able to don (put on) an immersion suit?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'Before entering an enclosed space, what is the minimum oxygen level that must be confirmed to be safe?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What PPE is required when using a pneumatic chipping gun on deck?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'The helmsman receives the order "Meet her". What action must be taken?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'Which mooring line prevents the ship from moving forward along the berth?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'According to COLREGS, a power-driven vessel underway in restricted visibility must sound which fog signal?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What is the purpose of a Cargo Securing Manual (CSM) on board?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'Which STCW basic safety certificate covers the skills needed to survive in cold water and abandon a sinking ship?', 'multiple_choice', 1, 20, NOW());

-- Variable assignments
SET @q1=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=1);
SET @q2=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=2);
SET @q3=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=3);
SET @q4=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=4);
SET @q5=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=5);
SET @q6=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=6);
SET @q7=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=7);
SET @q8=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=8);
SET @q9=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=9);
SET @q10=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=10);
SET @q11=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=11);
SET @q12=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=12);
SET @q13=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=13);
SET @q14=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=14);
SET @q15=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=15);
SET @q16=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=16);
SET @q17=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=17);
SET @q18=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=18);
SET @q19=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=19);
SET @q20=(SELECT id FROM lms_questions WHERE quiz_id=@qid AND order_num=20);

-- ============================================================
-- OPTIONS (4 per question, option 1 = correct)
-- ============================================================

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
-- Q1: 36 months seagoing service
(@q1, '36 months of approved seagoing service', 1, 1),
(@q1, '12 months of approved seagoing service', 0, 2),
(@q1, '18 months of approved seagoing service', 0, 3),
(@q1, '24 months of approved seagoing service', 0, 4),

-- Q2: Green light = starboard side showing = crossing from right
(@q2, 'A power-driven vessel showing its starboard side — it is crossing from right to left ahead of the observer', 1, 1),
(@q2, 'A vessel at anchor — the anchor light is green on small vessels', 0, 2),
(@q2, 'A vessel showing its port side — it is crossing from left to right', 0, 3),
(@q2, 'A pilot vessel on duty — pilot vessels show a green over white light', 0, 4),

-- Q3: Hard starboard = maximum rudder to starboard
(@q3, 'Apply maximum rudder angle to starboard immediately', 1, 1),
(@q3, 'Apply 20 degrees of rudder to starboard', 0, 2),
(@q3, 'Apply maximum rudder angle to port', 0, 3),
(@q3, 'Put the rudder to amidships (zero degrees)', 0, 4),

-- Q4: "Steady on one-eight-zero"
(@q4, 'Repeat the order, bring the ship to the heading, then report "Steady on one-eight-zero"', 1, 1),
(@q4, 'Remain silent — only report when the OOW asks for confirmation', 0, 2),
(@q4, 'Report "Unable to comply" if the heading requires a large course change', 0, 3),
(@q4, 'Acknowledge only after completing a full circle to ensure the compass is reading correctly', 0, 4),

-- Q5: Gyrocompass
(@q5, 'The gyrocompass', 1, 1),
(@q5, 'The magnetic compass', 0, 2),
(@q5, 'The GPS compass', 0, 3),
(@q5, 'The fluxgate compass', 0, 4),

-- Q6: Spring line prevents longitudinal movement
(@q6, 'A spring line prevents the ship from moving forward or aft along the berth', 1, 1),
(@q6, 'A spring line holds the bow or stern in close to the berth', 0, 2),
(@q6, 'A spring line is used to pull the ship off the berth when departing', 0, 3),
(@q6, 'A spring line connects the mooring buoy to the ship', 0, 4),

-- Q7: Snap-back zone is the dangerous area if a line parts
(@q7, 'The dangerous area where a parting mooring line will recoil violently if it snaps under tension', 1, 1),
(@q7, 'The zone on the berth where the mooring lines must be secured to bollards', 0, 2),
(@q7, 'The area between the ship and the berth where crew must not stand', 0, 3),
(@q7, 'The minimum safe distance between two mooring lines on the same bollard', 0, 4),

-- Q8: 1 shackle = 27.5 m
(@q8, '27.5 metres (approximately 15 fathoms)', 1, 1),
(@q8, '10 metres (approximately 5 fathoms)', 0, 2),
(@q8, '50 metres (approximately 27 fathoms)', 0, 3),
(@q8, '100 metres (approximately 55 fathoms)', 0, 4),

-- Q9: Class B = flammable liquids/gases
(@q9, 'Flammable liquid or gas fire hazard', 1, 1),
(@q9, 'Solid combustible material fire hazard', 0, 2),
(@q9, 'Electrical equipment fire hazard', 0, 3),
(@q9, 'Combustible metal fire hazard', 0, 4),

-- Q10: CO2 for electrical fires
(@q10, 'CO₂ (carbon dioxide) extinguisher', 1, 1),
(@q10, 'Water extinguisher', 0, 2),
(@q10, 'Foam (AFFF) extinguisher', 0, 3),
(@q10, 'Wet chemical extinguisher', 0, 4),

-- Q11: 7 short + 1 prolonged
(@q11, 'Seven or more short blasts followed by one prolonged blast on the ship\'s whistle and alarm bells', 1, 1),
(@q11, 'One continuous blast of the ship\'s whistle lasting 30 seconds', 0, 2),
(@q11, 'Three long blasts on the ship\'s whistle repeated three times', 0, 3),
(@q11, 'Alternating short and long blasts repeated continuously', 0, 4),

-- Q12: HRU releases at 1.5-4 m depth
(@q12, 'Between 1.5 and 4 metres depth', 1, 1),
(@q12, 'At exactly 10 metres depth', 0, 2),
(@q12, 'Only when manually triggered by a crew member', 0, 3),
(@q12, 'At any depth — it activates on contact with water', 0, 4),

-- Q13: 2 minutes to don immersion suit
(@q13, 'Within 2 minutes', 1, 1),
(@q13, 'Within 30 seconds', 0, 2),
(@q13, 'Within 5 minutes', 0, 3),
(@q13, 'Within 1 minute', 0, 4),

-- Q14: Minimum 19.5% oxygen
(@q14, 'At least 19.5% oxygen', 1, 1),
(@q14, 'At least 15% oxygen', 0, 2),
(@q14, 'At least 25% oxygen', 0, 3),
(@q14, 'At least 10% oxygen', 0, 4),

-- Q15: Eye protection, hearing protection, dust mask, gloves
(@q15, 'Eye protection (goggles or face shield), hearing protection, dust mask/respirator, and gloves', 1, 1),
(@q15, 'Hard hat only — chipping is a low-risk activity', 0, 2),
(@q15, 'Lifejacket and safety harness only', 0, 3),
(@q15, 'No PPE required for chipping on the open deck', 0, 4),

-- Q16: Meet her = apply opposite rudder to check swing
(@q16, 'Apply opposite (counter) rudder to check the ship\'s swing', 1, 1),
(@q16, 'Put the rudder to amidships and hold steady', 0, 2),
(@q16, 'Apply maximum rudder in the direction the ship is swinging', 0, 3),
(@q16, 'Engage the autopilot to stabilize the heading', 0, 4),

-- Q17: Forward spring prevents ship moving forward
(@q17, 'The forward spring line', 1, 1),
(@q17, 'The headline (head line)', 0, 2),
(@q17, 'The forward breast line', 0, 3),
(@q17, 'The aft spring line', 0, 4),

-- Q18: One prolonged blast every 2 minutes
(@q18, 'One prolonged blast at intervals of not more than 2 minutes', 1, 1),
(@q18, 'Three short blasts every 1 minute', 0, 2),
(@q18, 'Two prolonged blasts every 5 minutes', 0, 3),
(@q18, 'Continuous sounding of the ship\'s whistle', 0, 4),

-- Q19: CSM specifies approved securing methods for cargo
(@q19, 'It specifies the approved methods and equipment for securing different types of cargo on that particular ship', 1, 1),
(@q19, 'It lists the weight and dimensions of all cargo carried on the current voyage', 0, 2),
(@q19, 'It is a certificate proving the cargo has been inspected by the port authority', 0, 3),
(@q19, 'It provides insurance details for cargo loaded at each port', 0, 4),

-- Q20: Personal Survival Techniques (PST)
(@q20, 'Personal Survival Techniques (PST) — STCW Section VI/1-1', 1, 1),
(@q20, 'Fire Prevention and Firefighting (FPFF) — STCW Section VI/1-2', 0, 2),
(@q20, 'Elementary First Aid (EFA) — STCW Section VI/1-3', 0, 3),
(@q20, 'Personal Safety and Social Responsibilities (PSSR) — STCW Section VI/1-4', 0, 4);

-- ============================================================
-- VERIFICATION
-- ============================================================

SELECT
  c.id,
  c.title,
  c.status,
  c.course_code,
  (SELECT COUNT(*) FROM lms_lessons WHERE course_id=c.id) AS lesson_count,
  (SELECT COUNT(*) FROM lms_quizzes WHERE course_id=c.id) AS quiz_count,
  (SELECT COUNT(*) FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=c.id)) AS question_count,
  (SELECT COUNT(*) FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=c.id))) AS option_count
FROM lms_courses c
WHERE c.id = 196;
