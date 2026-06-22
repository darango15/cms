-- Ship Simulator and Bridge Teamwork (SSBT) Course Content
-- course_id=175, code=SSBT
-- STCW Regulation VIII/2, Section A-VIII/2 and Section B-VIII/2
-- 42 total hours

UPDATE lms_courses SET
  course_code='SSBT',
  title='Ship Simulator and Bridge Teamwork',
  status='published',
  category_id=6,
  image='https://pamel.edu.pa/uploads/ssbt/image1.jpeg',
  level='advanced',
  pass_percentage=70,
  description='Ship Simulator and Bridge Teamwork (SSBT) is an advanced STCW course complying with Regulation VIII/2, Section A-VIII/2 and Section B-VIII/2. This 42-hour program combines theoretical instruction with hands-on bridge simulator exercises, training officers in navigational watchkeeping, standard ship maneuvers, shallow water and bank effects, bridge resource management, workload management, decision-making, crisis management, and planning and conducting ocean crossings in both normal and emergency situations.'
WHERE id=175;

DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=175));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=175);
DELETE FROM lms_quizzes WHERE course_id=175;
DELETE FROM lms_lessons WHERE course_id=175;

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(175, 'Review of Basic Principles and Bridge Familiarization', '<h2>Course Overview</h2>
<p>The Ship Simulator and Bridge Teamwork (SSBT) course provides mandatory minimum standards of competence in bridge teamwork and ship maneuvering, in accordance with STCW 1978 as amended, Regulation VIII/2, Sections A-VIII/2 and B-VIII/2.</p>
<ul>
<li><strong>Course Code:</strong> SSBT</li>
<li><strong>Total Duration:</strong> 42 hours (21 hours theory + 21 hours practical simulator)</li>
<li><strong>STCW Reference:</strong> Regulation VIII/2, Sections A-VIII/2 and B-VIII/2</li>
<li><strong>Admission:</strong> Officers holding STCW II/1 navigational watch certification</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image1.jpeg" alt="Ship Simulator and Bridge Teamwork" style="max-width:100%;"><figcaption>Ship Simulator and Bridge Teamwork — Advanced STCW Training</figcaption></figure>

<h2>1. Review of Basic Principles</h2>
<p>Officers must become thoroughly acquainted with the navigation equipment, bridge controls, communication systems, and watchkeeping procedures before assuming responsibility for a navigational watch.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image2.png" alt="Navigational Watchkeeping" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image3.png" alt="STCW Requirements" style="max-width:100%;"></figure>

<h3>1.1 STCW Watchkeeping Principles</h3>
<p>STCW Regulation VIII/2 and Section A-VIII/2 specify the principles to be observed in organizing the navigational watch:</p>
<ul>
<li>All officers in charge of the navigational watch must be duly qualified in accordance with Chapter II or Chapter VII of STCW</li>
<li>Watch composition must ensure appropriate monitoring can be maintained continuously</li>
<li>The officer in charge of the watch bears responsibility for safe navigation until formally relieved</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image4.png" alt="Watch Organization" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image5.png" alt="Navigation Principles" style="max-width:100%;"></figure>

<h3>1.2 Voyage Planning</h3>
<p>Every voyage must be planned before departure. The planned route shall:</p>
<ol>
<li>Be prepared in advance using proper, corrected charts and nautical publications</li>
<li>Be clearly marked on appropriate charts, always accessible to the OOW</li>
<li>Account for all constraints, hazards, and risks of a permanent or foreseeable nature</li>
<li>Include safety margins for shallow waters, coastal distances, and traffic separation devices</li>
</ol>
<p>Diversion from the planned route requires a modified plan authorized and verified by the Master before any significant deviation.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image6.png" alt="Voyage Planning" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image7.png" alt="Chart Work" style="max-width:100%;"></figure>

<h3>1.3 Lookout</h3>
<p>A proper lookout shall be maintained at all times in accordance with Rule 5 of COLREG 1972, to:</p>
<ul>
<li>Maintain visual and auditory surveillance using all available means</li>
<li>Fully appreciate the situation and risks of approach, grounding, and other navigation hazards</li>
<li>Detect vessels or aircraft in distress, survivors, wrecks, and drifting objects</li>
</ul>
<p>The lookout person shall not be assigned other duties that may impede the watch. The helmsman and lookout functions are separate and distinct.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image8.png" alt="Lookout Duties" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image9.png" alt="Navigation Watch" style="max-width:100%;"></figure>

<h3>1.4 Changing the Watch</h3>
<p>Before taking over the watch, the relieving officer shall personally verify:</p>
<ul>
<li>The estimated or true position of the vessel and planned course</li>
<li>Course, speed, draught, and engine status</li>
<li>State of tides, currents, weather, and visibility and their effects</li>
<li>Navigation situation: operational status of all navigation computers, gyro errors, nearby vessels, and potential risks</li>
<li>Any special instructions from the Master</li>
</ul>
<p>Vision must be fully adjusted to light conditions before taking over. If a maneuver is in progress at the time of watch change, the outgoing officer retains the watch until the maneuver is complete.</p>

<h3>1.5 Conducting the Navigational Watch</h3>
<p>The OOW shall:</p>
<ul>
<li>Remain on the bridge and not leave without being duly relieved</li>
<li>Check course, position, and speed frequently using all available aids</li>
<li>Know the location and operation of all safety and navigation equipment on board</li>
<li>Use the radar in reduced visibility and in high-traffic waters</li>
<li>Immediately notify the Master when: visibility reduces, traffic causes concern, there are difficulties maintaining course, land is not sighted at expected time, any equipment failure occurs, weather deteriorates, or any doubt or emergency arises</li>
</ul>

<h3>1.6 Navigation Under Different Conditions</h3>
<p><strong>Clear Weather:</strong> Frequent and accurate compass bearings of approaching vessels; practice radar use.</p>
<p><strong>Reduced Visibility:</strong> Comply with COLREG fog signal requirements; proceed at a safe speed; stand by engines for immediate maneuver; sound fog signals; operate radar.</p>
<p><strong>Coastal Waters and Heavy Traffic:</strong> Use the largest scale chart; take positions at frequent intervals by more than one method; identify all navigation marks positively.</p>
<p><strong>Pilot on Board:</strong> The presence of a pilot does not relieve the Master or OOW of their duties. The OOW must cooperate closely with the pilot and request clarification if in doubt about pilot intentions.</p>

<h2>2. Familiarization with the Bridge</h2>
<p>Before conducting simulator exercises, participants familiarize themselves with all bridge equipment, controls, and communication systems.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image19.png" alt="Bridge Layout" style="max-width:100%;"></figure>
<p><strong>Bridge Equipment — Simulator Configuration:</strong></p>
<ul>
<li><strong>Screens:</strong> 7-screen system displaying external scenario plus navigation equipment (radar, ECDIS)</li>
<li><strong>Control Panel:</strong> Anchor status display, Doppler log, acoustic signal system, internal communications</li>
<li><strong>Propulsion Control:</strong> Engine order telegraph, thruster controls</li>
<li><strong>Steering:</strong> Manual helm (HELM), autopilot, gyrocompass repeater</li>
<li><strong>VHF Communications:</strong> External communication with traffic and pilots</li>
<li><strong>Radar/ARPA:</strong> With integrated ECDIS electronic chart system</li>
</ul>
<p><strong>High Console Information:</strong></p>
<ul>
<li>Wind speed and direction (true and relative to vessel)</li>
<li>Air temperature (Celsius and Fahrenheit)</li>
<li>Gyrocompass course and speed through water</li>
<li>Rate of Turn (ROT) indicator and Axiometer</li>
<li>GPS and Echo Sounder</li>
<li>Chart table for working with paper charts</li>
</ul>
<p><strong>Nautical Publications Available:</strong> Tide tables, current tables, Notices to Mariners, Lists of Lights, Sailing Directions — all must be reviewed and updated before sailing and incorporated into the voyage plan.</p>', 'text', 1, 420, 1),

(175, 'Standard Maneuvers, Wind and Current Effects, and Position', '<h2>3. Standard Maneuvers</h2>
<p>Ship maneuverability is one of the most technically complex areas in naval architecture. Officers must understand their vessel\'s specific maneuverability characteristics under different loading conditions.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image24.png" alt="Turning Circle Diagram" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image25.png" alt="Standard Maneuver Parameters" style="max-width:100%;"></figure>

<h3>3.1 Turning Circle Maneuver</h3>
<p>Merchant ships rotate in a circle with a diameter approximately 3-4 times the Length Between Perpendiculars (LBP). The turning circle is performed at full speed with 35° rudder.</p>
<ul>
<li><strong>Advance:</strong> Distance traveled in the original direction before completing 90° of turn</li>
<li><strong>Transfer:</strong> Lateral distance from the original track at 90° of turn</li>
<li><strong>Tactical Diameter (TCD):</strong> Transverse distance between track before and after 180° of turn — greater rudder angle = smaller TCD</li>
<li><strong>Drift Angle:</strong> Angle between ship\'s heading and track over ground</li>
<li><strong>Angle of Heel:</strong> Maximum heel angle during the turn; registered and noted for each vessel</li>
</ul>
<p>Ships with a single right-hand fixed-pitch propeller will have slightly different turning diameters to port and starboard due to propeller torque effects.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image26.png" alt="Turning Circle" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image27.png" alt="Turning Forces" style="max-width:100%;"></figure>

<h3>3.2 Zig-Zag Maneuver</h3>
<p>The zig-zag maneuver is used to reduce speed using inertia and rudder movement without reversing engines.</p>
<ol>
<li>Stop engine revolutions with rudder amidships and wait one minute</li>
<li>Turn helm 20° starboard and maintain until course changes 20° from initial heading</li>
<li>Turn helm 20° port until course changes 20° less than initial heading</li>
<li>Repeat until vessel loses steerage way or movement</li>
</ol>
<p><em>This maneuver must be executed in open sea with ample sea room and minimal traffic.</em></p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image28.png" alt="Zig-Zag Maneuver" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image29.png" alt="Maneuver Diagram" style="max-width:100%;"></figure>

<h3>3.3 Crash Stop Maneuver</h3>
<p>Used in emergency situations to avoid collision or reduce impact force when collision is imminent.</p>
<ol>
<li>Reduce engine to zero revolutions; rudder amidships</li>
<li>When revolutions reach zero, order Full Astern</li>
<li><strong>Notify the Engine Room BEFORE proceeding</strong> — emergency astern can cause stress to main and auxiliary machinery</li>
</ol>
<p>Records shall be kept of all orders with time (hours and minutes), positions, courses, speeds, and other relevant information — essential references for accident investigation.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image30.png" alt="Crash Stop" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image31.png" alt="Stopping Distance" style="max-width:100%;"></figure>

<h3>3.4 Maneuvering Data</h3>
<ul>
<li>Every vessel must have a <strong>maneuvering diagram</strong> (turning circle diagram) displayed on the bridge showing turning limits for each speed and rudder angle</li>
<li><strong>Pilot Card:</strong> Concise summary of vessel\'s maneuverability for the pilot — includes loading condition, draught, trim, propeller details, and stopping distances</li>
<li><strong>Maneuvering Booklet:</strong> Detailed maneuvering data in different loading and ballast conditions</li>
<li>Draught and trim (seat) affect the pivot point — positive trim (deeper aft) promotes stern-walking and is essential for effective maneuvering</li>
</ul>

<h2>4. Wind and Current Effects</h2>
<p>External environmental forces — wind and current — affect all maneuvers and must be understood to compensate or exploit them effectively.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image32.png" alt="Ocean Currents" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image33.png" alt="Wind Effects" style="max-width:100%;"></figure>

<h3>4.1 Marine Currents</h3>
<p>Marine currents are directional movements of water caused by Earth\'s rotation, prevailing winds, coastline configuration, tidal forces, and temperature/density differences. Surface currents circulate clockwise in the Northern Hemisphere and counter-clockwise in the Southern Hemisphere.</p>
<p><strong>Major World Ocean Currents:</strong></p>
<ul>
<li><strong>Atlantic:</strong> Gulf Stream (warm), Labrador Current (cold), North Atlantic Current, Canary Current, Benguela Current</li>
<li><strong>Pacific:</strong> Kuroshio (Japan Current), California Current, Humboldt Current, Oyashio Current, Cromwell Current</li>
<li><strong>Indian Ocean:</strong> Agulhas Current, Mozambique Current, monsoon-driven currents</li>
</ul>

<h3>4.2 Leeway and Drift</h3>
<p>When a vessel is underway in the presence of current:</p>
<ul>
<li>The <strong>effective (true) track over ground</strong> is the vector sum of the vessel\'s heading vector and the current vector</li>
<li><strong>Drift (β):</strong> The angle between the vessel\'s true course (heading) and the effective track over the ground — must be applied to maintain the intended track</li>
<li>Standard maneuver diagrams (turning circles, stopping distances) are based on calm sea conditions; actual results will differ with wind and current present</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image34.png" alt="Current Vectors" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image35.png" alt="Drift Calculation" style="max-width:100%;"></figure>
<p><strong>During the SSBT simulator course,</strong> maneuvers will be compared under different weather conditions (with and without wind and current) in the same scenario and same loading conditions, to appreciate the difference in outcomes.</p>

<h2>5. Position</h2>
<p>The Master establishes the safety parameters and navigational standards under which all bridge activities and watch procedures are conducted.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image36.png" alt="Safety Parameters" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image37.png" alt="Voyage Plan Safety Margins" style="max-width:100%;"></figure>
<p><strong>Master\'s Safety Parameters include:</strong></p>
<ul>
<li>Minimum safe water depth (under-keel clearance limits)</li>
<li>Parallel index distances from the coast</li>
<li>Safety contours on ECDIS</li>
<li>Traffic separation schemes to use or avoid</li>
<li>Piracy avoidance areas</li>
<li>Oil drilling and offshore installation exclusion zones</li>
<li>Speed reduction zones near ports and restricted areas</li>
</ul>
<p>Safety parameters shall be posted in the bridge, signed as received by all navigating officers, and strictly adhered to during navigation and maneuvers.</p>
<p><strong>Navigation Position Verification:</strong></p>
<ul>
<li>GPS position cross-checked against radar ranges and bearings to fixed objects</li>
<li>Verify chart datum — GPS uses WGS84; charts may use different datum (ED50, NAD27, etc.); failure to correct can cause position errors of several hundred meters</li>
<li>Parallel indexing technique for monitoring clearance from dangers during radar navigation</li>
<li>Echo sounder as valuable secondary navigation aid</li>
</ul>', 'text', 2, 420, 1),

(175, 'Cultural Awareness, Briefings, Challenge and Response, and Shallow Water Effects', '<h2>6. Cultural Awareness</h2>
<p>Maritime crews are increasingly multicultural and multilingual. Cultural awareness is one of the most important tools for effective communication and teamwork on board.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image38.png" alt="Multicultural Bridge Team" style="max-width:100%;"></figure>
<p>Masters and deck officers must develop awareness of:</p>
<ul>
<li><strong>Cultural differences</strong> in communication styles, hierarchy, and decision-making approaches</li>
<li><strong>Language barriers</strong> — English is the standard working language on international bridges, but nuances and accents can cause misunderstandings</li>
<li><strong>Values and attitudes</strong> of crewmembers from different backgrounds</li>
<li><strong>Non-verbal communication</strong> and how it varies across cultures</li>
</ul>
<p>Understanding cultural attributes improves communication, productivity, and unity. Captains and officers should research cultures of their crew members and actively promote an open, respectful work environment.</p>

<h2>7. Initial and Final Sessions (Briefing and Debriefing)</h2>
<p>Pre- and post-operation briefings are critical management tools for safe and effective bridge operations.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image39.png" alt="Briefing Session" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image40.png" alt="Team Briefing" style="max-width:100%;"></figure>

<h3>7.1 Pre-Departure Briefing</h3>
<p>Before departure, the Master presents the navigation plan including:</p>
<ul>
<li>Safety margins and security parameters for the voyage</li>
<li>Bridge team organization — positions and responsibilities of each member</li>
<li>Special requirements for navigation equipment or procedures</li>
<li>Identification of potential weaknesses or hazards in the navigation plan</li>
<li>Contingency procedures for foreseeable emergencies</li>
</ul>

<h3>7.2 Pilot Briefing</h3>
<p>When a pilot boards, the Master briefs the pilot using the <strong>Pilot Card</strong>, covering:</p>
<ul>
<li>Vessel\'s maneuverability characteristics and loading condition</li>
<li>Limitations in maneuvers and current stability status</li>
<li>Available navigation equipment and bridge layout</li>
<li>Intended voyage plan that the pilot plans to follow</li>
</ul>
<p><em>The presence of the pilot does not relieve the captain or OOW of their responsibilities.</em> Bridge team members actively verify that pilot orders comply with safety parameters and must call the Master if safety is compromised.</p>

<h3>7.3 Debriefing</h3>
<p>After operations, the Master conducts a debriefing to:</p>
<ul>
<li>Analyze maneuver outcomes and detect failures or errors</li>
<li>Assess communication effectiveness</li>
<li>Identify improvements in use of navigation equipment</li>
<li>Review performance in critical situations</li>
<li>Exchange ideas and opinions for continuous improvement</li>
</ul>
<p><strong>Effectiveness of briefings is evaluated through crew member feedback</strong> — two-way communication, not one-way instructions.</p>

<h2>8. Challenge and Response</h2>
<p>The Master is the highest authority on board, responsible for the operation, safety, navigation, and organization of the entire vessel and crew.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image41.png" alt="Bridge Team Response" style="max-width:100%;"></figure>
<p><strong>Challenges that may be encountered at sea include:</strong></p>
<ul>
<li>Abrupt weather changes during maneuvers</li>
<li>Loss of vessel stability</li>
<li>Loss of steering (rudder failure)</li>
<li>Loss of vessel power</li>
<li>Failure of navigation computers</li>
<li>Failure of tugs or towing equipment</li>
<li>Failure of mooring lines or equipment</li>
</ul>
<p>The bridge team must recognize challenges, accept them professionally, execute pre-established action plans from ISM contingency checklists, and acknowledge receipt of orders to the Master.</p>

<h2>9. Shallow Water Effects</h2>
<p>Shallow water is generally defined as depths within 500 meters of the coast where depths vary between 10-30 meters (shown in blue on nautical charts). Navigation in shallow water significantly affects vessel maneuverability.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image42.png" alt="Shallow Water Effect" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image43.png" alt="Squat Effect Diagram" style="max-width:100%;"></figure>

<h3>9.1 Effects of Shallow Water on Maneuverability</h3>
<ul>
<li>Increased directional stability — vessel resists course changes</li>
<li>Increased turning radius — larger turning circle needed</li>
<li>Slower speed response to engine changes</li>
<li>Trim change: vessels with "full" block coefficients tend to squat bow-down; fine-form vessels squat stern-down</li>
</ul>

<h3>9.2 The Squat Effect</h3>
<p>Squat is not a technical increase in draught but a reduction of under-keel clearance. As a vessel moves through shallow water, water accelerates around the hull, reducing pressure and causing the vessel to sink lower in the water.</p>
<ul>
<li>Effect increases with speed — reducing speed by 50% reduces squat by 75%</li>
<li>Effect disappears when vessel is stopped</li>
<li>A stern wave ("whisker") more significant than normal indicates the vessel has entered shallow water</li>
<li>In channels, squat effect is greater than in open shallow water</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image44.png" alt="Squat Calculation" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image45.png" alt="Squat in Channel" style="max-width:100%;"></figure>
<p><strong>Example (Hamburg study, VLCC in narrow channel):</strong></p>
<ul>
<li>400m wide channel: squat = 0.88m</li>
<li>300m wide channel: squat = 1.11m</li>
<li>250m wide channel: squat = 1.29m</li>
<li>250m wide channel with second vessel passing: squat increases to 2.02m</li>
</ul>

<h3>9.3 Safe Maneuvering Recommendations in Shallow Water</h3>
<ul>
<li>Navigate below critical (wave-making) speed</li>
<li>Navigate below maximum possible speed in the channel</li>
<li>Maintain reserve engine power to increase rudder effectiveness as needed</li>
<li>In bends: anticipate the turn and account for increased turning radius</li>
<li>Monitor under-keel clearance continuously using echo sounder and chart depth</li>
<li>Use bow thrusters and tugs to support rudder in tight maneuvers</li>
<li>Control yaw with good helmsmen on permanent watch</li>
<li>Special care when entering a channel from deeper water (response changes abruptly)</li>
<li>When two ships pass in a narrow channel, maintain: (a) distance between ships &gt;2× breadth of larger vessel, (b) distance from channel margin &gt;1.5× breadth of larger vessel</li>
</ul>', 'text', 3, 420, 1),

(175, 'Bank and Channel Effects, Planning, Authority, and Bridge Management', '<h2>10. Bank, Channel and Interaction Effects</h2>
<p>When vessels navigate in shallow channels and near banks, hydrodynamic forces create interaction effects that can cause loss of control if not managed proactively.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image46.png" alt="Bank Effect" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image47.png" alt="Channel Interaction" style="max-width:100%;"></figure>

<h3>10.1 Bank Effect in Channels</h3>
<p>When a vessel sails close to a channel bank:</p>
<ul>
<li>The <strong>bank suction effect</strong> pulls the stern toward the near bank</li>
<li>The bow tends to swing away from the bank</li>
<li>If uncorrected, the vessel will be driven toward the bank</li>
<li>Corrective action: rudder toward the bank + possible speed increase to restore rudder effectiveness</li>
</ul>
<p>At bends in a channel:</p>
<ul>
<li>Current is stronger on the outer curve and can create eddies and counter-currents</li>
<li>If current is from ahead: initiate turn from midchannel toward outer curve; avoid proximity to inner curve</li>
<li>Key technique: <strong>sector mirror technique</strong> — observe equal sectors on both margins to confirm navigation along the channel centerline</li>
</ul>

<h3>10.2 Interaction Between Vessels</h3>
<p>Two types of interaction: <strong>static</strong> (passing a vessel that is not moving) and <strong>dynamic</strong> (two vessels underway).</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image48.png" alt="Ship Interaction Diagram" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image49.png" alt="Passing Interaction Forces" style="max-width:100%;"></figure>
<p><strong>Passing a moored vessel:</strong></p>
<ul>
<li>Position 1: Bow positive pressure pushes moored vessel stern outward</li>
<li>Position 2: Side suction pulls entire moored vessel toward the passing ship — high risk of mooring line breakage</li>
<li>Position 3: Stern positive pressure pushes moored vessel bow back toward berth</li>
<li>Prevention: reduce speed to minimum, maintain maximum safe distance, pre-warn the moored vessel to take up slack</li>
</ul>
<p><strong>Two vessels overtaking in narrow water:</strong></p>
<ul>
<li>Bow pressure areas repel the other vessel\'s bow outward</li>
<li>Side suction causes mutual attraction midship to midship</li>
<li>At maximum overlap: violent outward repulsion of both sterns</li>
<li>Prevention: maintain safe passing distance; match speeds to minimize time of close proximity; avoid situations with vessels of greatly differing sizes</li>
</ul>
<p><strong>Vessels of different sizes:</strong> All interaction effects have greater incidence on the smaller vessel. The smaller vessel must take continuous corrective action throughout the interaction sequence.</p>

<h2>11. Planning</h2>
<p>Thorough planning is fundamental to safe vessel operations. The Master and bridge team must plan all routine and emergency operations.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image50.png" alt="Navigation Planning" style="max-width:100%;"></figure>
<p><strong>Pre-Departure Checklist — Before Getting Underway:</strong></p>
<ul>
<li>Navigation and communications equipment — check and test</li>
<li>Engines, electrical system, fluid levels (oil, fuel, water)</li>
<li>Safety equipment inventory</li>
<li>Weather forecast for the intended route</li>
<li>Completed voyage plan communicated to coast station or maritime authority</li>
<li>Report vessel characteristics (name, call sign, crew number, communication equipment) to departure point and destination</li>
<li>Ensure vessel documentation, charts, and nautical publications are up to date</li>
<li>Maximum persons on board not to exceed authorized capacity</li>
</ul>
<p><strong>Emergency Contingency Plans</strong> must be prepared for the most common emergencies encountered on the voyage. Each plan shall:</p>
<ol>
<li>Identify the specific problem scenario</li>
<li>Detail the solution procedures step by step</li>
<li>Be reviewed with the bridge team in a briefing before departure</li>
<li>Be available as a checklist posted in the bridge AND in the engine room</li>
<li>Be subject to monitoring, follow-up, and modification as conditions change</li>
</ol>

<h2>12. Authority</h2>
<p>The Master is the representative of the shipowner on board, exercising technical, administrative, and representational functions necessary for the safe conduct of the voyage.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image51.png" alt="Command Authority" style="max-width:100%;"></figure>
<ul>
<li>The Master delegates functions to bridge officers without relinquishing responsibility</li>
<li>Officers are selected for experience to maintain a balance between authority and crew confidence</li>
<li>When the pilot is on board: the Master coordinates so that pilot orders are obeyed within safety parameters; officers may and should question any order that compromises vessel safety — the Master must be called immediately</li>
<li>If the Master\'s authority level becomes too authoritative (causing excessive stress) or too permissive (lowering crew vigilance), both situations must be corrected to maintain effective bridge team performance</li>
</ul>

<h2>13. Bridge Management</h2>
<p>Bridge management encompasses the comprehensive activities the Master must perform in conjunction with bridge officers to ensure safe, efficient navigation.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image52.png" alt="Bridge Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image53.png" alt="Navigation Management" style="max-width:100%;"></figure>
<p><strong>Key Bridge Management Activities:</strong></p>
<ul>
<li>Developing and implementing Master\'s Standing Orders and Master\'s Night Orders</li>
<li>Review and management of the navigation plan</li>
<li>Review and management of stability and loading plans</li>
<li>Scheduling and monitoring all bridge activities and operations</li>
<li>Involving bridge officers in decision-making and activity review</li>
<li>Modifying management style and priority order when circumstances change</li>
</ul>
<p>During simulator exercises, each participant takes on the role of the managing Master, applying their judgment and experience to organize procedures for maneuver and navigation plans.</p>
<p><strong>Bridge Resource Management (BRM) resources include:</strong></p>
<ul>
<li>Personnel — captains, officers, ratings, pilot</li>
<li>Navigation and communication equipment</li>
<li>Information flowing in and out of the bridge (weather, traffic, depth data)</li>
<li>Manuals and procedures (ISM, company procedures)</li>
</ul>', 'text', 4, 420, 1),

(175, 'Workload, Stress, Anchoring and Mooring, Human Factor Error, and Decision Making', '<h2>14. Workload and Stress</h2>
<p>Effective workload management and stress control are essential safety functions of the bridge team leader.</p>
<figure><img src="https://pamel.edu.pa/uploads/ssbt/image54.png" alt="Workload Management" style="max-width:100%;"></figure>
<p>The Master and bridge team must establish measures in advance to control and delegate workload levels, distributing responsibilities to avoid fatigue and human error that could affect vessel safety.</p>

<h3>14.1 External and Internal Pressures</h3>
<p><strong>External pressures:</strong> Family conflicts, economic problems, health status</p>
<p><strong>Internal pressures:</strong> Excessive time pressure against tides, poor visibility, extended watch periods without rest, demanding maneuvers</p>

<h3>14.2 Stress Response Types</h3>
<p>Three stress reaction modes are identified in maritime research:</p>
<ul>
<li><strong>Fight Reaction:</strong> Hyperactivity, impatience, impulsivity before emergencies arise; prone to ulcers and cardiac disorders. Rushes to action before adequate assessment.</li>
<li><strong>Flight Reaction:</strong> Avoids problems, gives up, leaves others to resolve emergencies; can lose control under stress. Prone to depression. May appear prudent but fails when it matters.</li>
<li><strong>Passivity Reaction:</strong> Accepts the emergency without seeking to overcome it or avoid it; appears indolent and indecisive; easy victim to accidents and disease.</li>
</ul>
<p>Recognition of these stress patterns in self and crew members allows the Master to reassign duties or provide support before crisis develops.</p>

<h3>14.3 Management Strategies</h3>
<ul>
<li>Pre-assign responsibilities and tasks for each maneuver before it begins</li>
<li>Establish crew schedules and watch rotations to prevent fatigue</li>
<li>Use contingency plans as structured guides — reduces cognitive load during emergencies</li>
<li>Maintain vigilance for overconfidence in team — familiarity breeds complacency</li>
<li>Clinical recommendations: relaxation methods, reduced work hours, healthy lifestyle, regular exercise, no alcohol or tobacco</li>
</ul>

<h2>15. Anchoring and Mooring</h2>
<p>Anchoring is the maneuver by which a vessel achieves relative immobility with respect to the seabed using the anchoring system, without using propulsion or steering.</p>
<h3>15.1 Anchoring Maneuver Phases</h3>
<p><strong>Planning Phase:</strong></p>
<ul>
<li>Select anchorage position from nautical charts; have alternative plan if occupied</li>
<li>Obtain current meteorological and current information</li>
<li>Prepare Master\'s anchoring plan: approach course, alternate bearings, positions, speed reduction points, engine reversal point, anchor release point, proximity reference bearings</li>
<li>Develop contingency plan for mechanical/steering failure during maneuver</li>
<li>All bridge crew briefed on the plan and contingency procedures</li>
</ul>
<p><strong>Approach Phase:</strong></p>
<ul>
<li>Approach at minimum governing speed — vessel should arrive at designated point virtually stopped</li>
<li>Approach against external agents (wind/current at bow) to minimize drift effects and improve control</li>
<li>Observe the heading of already-anchored vessels as an indicator of dominant external forces</li>
</ul>
<p><strong>Preparation Phase (while underway):</strong></p>
<ul>
<li>Crew to forward anchor station: bosun and 1-2 deck crew</li>
<li>Activate hydraulic power to windlass/capstan systems</li>
<li>Open chain lockers and hawse pipe covers</li>
<li>Walk out anchor to verify it is freed from stowage; test windlass operation at increasing speeds</li>
</ul>
<p><strong>Giving Ground (Dropping Anchor):</strong></p>
<ul>
<li><em>Shallow water procedure:</em> Lower chain to 1 shackle below keel; release on brake as vessel speed falls to zero; pay out chain length; allow chain to tension as vessel heads up to wind/current; monitor for drag</li>
<li><em>Deep water procedure:</em> Lower on windlass under controlled speed; never drop free from hawse — risk of exceeding breaking load</li>
<li>Display anchoring daymark (black ball) by day; all-round white lights by night</li>
</ul>
<p><strong>Anchoring Watch:</strong></p>
<ul>
<li>Verify position frequently by cross-bearings and radar ranges to fixed objects</li>
<li>Monitor weather, tide, current changes continuously</li>
<li>If dragging detected: take additional scope, deploy second anchor, or heave up and relocate</li>
<li>Keep engines on standby readiness</li>
</ul>

<h3>15.2 Mooring to a Monobuoy</h3>
<p>Monobuoy (Single Point Mooring, SPM) operations are common at hydrocarbon production facilities for large tankers.</p>
<ul>
<li>Approach at minimum speed — vessel should be stopped at 30m from buoy</li>
<li>Two tugs minimum (one essential at stern, pulling astern continuously to prevent overrunning the buoy)</li>
<li>When within 200m: receive the messenger line from the buoy via workboat</li>
<li>Mooring system must withstand 250 tons working load (minimum 472 tons breaking load)</li>
<li>Operations directed from the bow — communication via VHF or intercommunication system (bridge to bow castle)</li>
<li>Doppler speed indicator essential for quantifying bow/stern speed and lateral movement</li>
</ul>

<h2>16. Human Factor Error</h2>
<p>Maritime accident investigations consistently show that the majority of collisions and groundings result from human actions on the navigating bridge.</p>
<h3>16.1 Types of Human Errors</h3>
<ul>
<li><strong>Skill-based errors:</strong> Actions so familiar they become automatic — a memory lapse (forgetting what was being done) or an action slip (activating wrong control)</li>
<li><strong>Rule-based errors:</strong> Misapplying a rule or failing to apply it correctly — assuming another vessel will give way when own vessel is the give-way vessel</li>
<li><strong>Knowledge-based errors:</strong> Poor decisions in novel circumstances due to insufficient training, experience, or poor communications — interpreting ambiguous information incorrectly</li>
</ul>
<h3>16.2 Reducing Human Error</h3>
<ul>
<li><strong>Bridge Resource Management (BRM):</strong> Proper allocation of tasks among qualified bridge personnel</li>
<li>Familiarization of crew with ship characteristics, equipment, and emergency procedures</li>
<li>Effective communications between bridge, deck crew, engine room, pilot, and shore</li>
<li>Appropriate control authority and leadership — neither too authoritative nor too permissive</li>
<li>Ergonomic design of bridge controls, screens, and layout (IMO recommendations)</li>
<li>Standardized procedures and ISM-compliant checklists</li>
<li>A <strong>just culture</strong> — crew must feel safe reporting errors without fear of unjust punishment, creating an environment where near-misses are reported and lessons learned</li>
</ul>
<p><strong>Common management failures in accident analysis:</strong></p>
<ol>
<li>Failure to recognize developing risk in time</li>
<li>Accumulation of minor errors that trigger a critical situation</li>
<li>Delay in taking a decision</li>
<li>Non-compliance with regulated procedures</li>
<li>Lack of communication — ship to ship, ship to shore, pilot to captain</li>
</ol>

<h2>17. Decision Making</h2>
<p>Decision making is the process of choosing between available options to resolve current or potential problems.</p>
<h3>17.1 Types of Decisions</h3>
<ul>
<li><strong>Programmed (Structured) Decisions:</strong> Repetitive, routine decisions with established procedures — governed by ISM checklists, standing orders, and company procedures. Reduce cognitive load during routine operations.</li>
<li><strong>Non-programmed (Unstructured) Decisions:</strong> Rare or exceptional situations requiring a specific problem-solving process — fire on board, man overboard, cargo shift, collision imminent</li>
</ul>
<h3>17.2 Effective Decision Making Process</h3>
<ol>
<li>Collect all relevant information before the maneuver or voyage plan</li>
<li>Identify the problem or challenge clearly</li>
<li>Generate alternatives and evaluate each against safety parameters</li>
<li>Select the best course of action</li>
<li>Implement the decision and monitor results</li>
<li>Modify if conditions change</li>
</ol>
<h3>17.3 Situational Awareness</h3>
<p>Situational awareness (SA) is the perception of the elements of the environment within a volume of time and space. It operates on three levels:</p>
<ol>
<li><strong>Perception:</strong> Noticing what is happening (speed, course, traffic, weather)</li>
<li><strong>Comprehension:</strong> Understanding what the perceived elements mean in relation to goals and safety</li>
<li><strong>Projection:</strong> Predicting what will happen next based on current trends</li>
</ol>
<p><strong>Barriers to situational awareness:</strong></p>
<ul>
<li>Faulty information processing</li>
<li>Complacency — "it\'s never happened before"</li>
<li>Poor communications within the bridge team</li>
</ul>
<p><strong>Consequences of lost situational awareness:</strong> Increased potential for human error, mishaps, and accidents.</p>
<p><strong>Effective team SA:</strong> Depends on all team members developing accurate expectations for team performance by drawing on a common knowledge base established through regular briefings and clear role definition.</p>', 'text', 5, 420, 1),

(175, 'Crisis Management and Planning and Conducting Crossings', '<h2>18. Crisis Management</h2>
<p>A crisis is any situation created by a threat that can result in serious damage, loss of lives, property damage, or reputational harm. Any breach of routine vessel activity can trigger a crisis, regardless of the initial severity.</p>
<h3>18.1 Crisis Characteristics at Sea</h3>
<p><strong>Common maritime crisis situations:</strong></p>
<ul>
<li>Fire on board</li>
<li>Grounding or stranding</li>
<li>Flooding or sinking</li>
<li>Collision</li>
<li>Structural failure</li>
<li>Security threats (piracy)</li>
<li>Loss of propulsion or steering in confined waters</li>
<li>Medical emergency requiring abandoning voyage</li>
</ul>
<h3>18.2 Crisis Prevention</h3>
<ul>
<li>Monitor stress levels of all bridge personnel — identify members approaching crisis point</li>
<li>Support colleagues under excessive workload; redistribute responsibilities proactively</li>
<li>The Master must identify when a bridge team member is entering crisis and reassign or replace them before performance is compromised</li>
<li>Regular ISM drill program keeps crisis response skills sharp and reduces panic during actual events</li>
</ul>
<h3>18.3 Crisis Response</h3>
<ul>
<li>Implement pre-established ISM contingency plans immediately — do not improvise</li>
<li>All bridge personnel must demonstrate the ability to activate emergency plans — tested during simulator exercises in this course</li>
<li>Simulator scenarios intentionally create high-stress situations where insufficient decision-making leads to collision, grounding, or flooding — used as learning experiences</li>
<li>Crisis decisions must be made with the same rigor as routine decisions: identify, analyze, plan, execute, monitor</li>
</ul>

<h2>19. Planning and Conducting Crossings in Normal and Emergency Situations</h2>
<p>This is the capstone practical section of the SSBT course. Participants plan and execute complete voyage passages using the bridge simulator, applying all skills from the course.</p>
<h3>19.1 Voyage Passage Plan</h3>
<p>A complete safety voyage plan includes:</p>
<ul>
<li>Charts and nautical publications current and corrected</li>
<li>Draught, squat allowance, and under-keel clearance calculations at critical points</li>
<li>Current and tidal data for route timing</li>
<li>Weather forecast and contingency routes</li>
<li>Available navigation aids at each stage</li>
<li>Methods for monitoring position at critical waypoints</li>
<li>Marine traffic routing: traffic separation schemes, restricted areas</li>
<li>Contingency plans for emergencies at each critical section</li>
<li>Departure and arrival checklists</li>
<li>Loading conditions, stability, and maneuvering data for the vessel used</li>
</ul>
<h3>19.2 COLREG Special Emphasis</h3>
<p>During crossing exercises, special attention is given to:</p>
<ul>
<li><strong>Rule 9 — Narrow Channels:</strong> Vessels shall keep to the starboard side of narrow channels; vessels under 20m and sailing vessels shall not impede power vessels in narrow channels</li>
<li><strong>Rule 10 — Traffic Separation Schemes:</strong> Vessels shall use the appropriate traffic lane; join and leave at terminal ends where practicable; cross at right angles</li>
</ul>
<h3>19.3 Simulator Navigation Exercises</h3>
<p>During the practical simulator navigation exercises, participants shall:</p>
<ul>
<li>Execute the planned voyage in the bridge simulator at full bridge manning</li>
<li>Navigate to and through pre-planned practical stations following security parameters</li>
<li>Maintain effective monitoring and communication with other vessels in the simulated environment</li>
<li>Perform complete berthing and unberthing maneuvers to spring (spring line technique)</li>
<li>Handle simulated emergencies inserted by the instructor at critical points</li>
<li>Record all details in the navigating bridge logbook: course changes, maneuvers, speeds, positions, times</li>
</ul>
<h3>19.4 Bridge Teamwork During Exercises</h3>
<p><strong>Team roles during crossing exercises:</strong></p>
<ul>
<li><strong>Master:</strong> Overall command, safety decisions, communication with pilot and VTS</li>
<li><strong>OOW (Officer of the Watch):</strong> Navigation, position monitoring, chart work, radar plotting</li>
<li><strong>Watch Rating (Helmsman):</strong> Executing helm orders under OOW direction</li>
<li><strong>Look-Out:</strong> Visual surveillance, reporting all sightings immediately</li>
</ul>
<p><strong>Communications during exercises:</strong></p>
<ul>
<li>Use Standard Marine Communication Phrases (SMCP) throughout</li>
<li>VHF radio communications with other vessels and traffic control</li>
<li>Engine order telegraph communications with engine room</li>
<li>Regular position reporting and navigation updates</li>
<li>Echo back all orders received to confirm understanding</li>
</ul>
<h3>19.5 Post-Exercise Debrief</h3>
<p>Each simulator session is followed by a structured debrief reviewing:</p>
<ul>
<li>Accuracy of navigation and position fixing</li>
<li>Quality of watchkeeping and lookout</li>
<li>Effectiveness of team communications and briefings</li>
<li>Adequacy of contingency responses to inserted emergencies</li>
<li>Adherence to COLREG requirements</li>
<li>Use of bridge resources (personnel, equipment, information)</li>
<li>Quality of logbook entries</li>
</ul>
<p>The objective is continuous improvement: each crew member learns from both successes and failures in the safe environment of the simulator, before applying skills in real operations at sea.</p>', 'text', 6, 420, 1);

-- Insert quiz
INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (175, 'Ship Simulator and Bridge Teamwork — Final Assessment', 'This assessment evaluates your understanding of the SSBT course, covering bridge watchkeeping, standard maneuvers, shallow water effects, bridge resource management, situational awareness, decision-making, and crisis management as required by STCW Regulation VIII/2.', 70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'What is the main and first process to understand the bridge equipment and teamwork on board a vessel?', 1, 1, 1, NOW()),
(@qid, 'What international standard organization has developed the interface protocol between various pieces of marine electronic navigation equipment on the bridge?', 1, 1, 2, NOW()),
(@qid, 'The best emergency maneuver to avoid or reduce an imminent collision is:', 1, 1, 3, NOW()),
(@qid, 'Which external factors significantly affect ship maneuverability and must be taken into account during all maneuvers?', 1, 1, 4, NOW()),
(@qid, 'Bridge Resource Management (BRM) considers which of the following to be primary resources?', 1, 1, 5, NOW()),
(@qid, 'The main human factor that involves human error during ship maneuvering is:', 1, 1, 6, NOW()),
(@qid, 'The primary purpose of an accident or incident report following a ship maneuver is:', 1, 1, 7, NOW()),
(@qid, 'The best communication procedure used to inform all bridge teamwork members BEFORE berthing or any shipboard operation is called:', 1, 1, 8, NOW()),
(@qid, 'The best communication procedure used to inform bridge team members AFTER a maneuver or operation — analyzing performance and identifying improvements — is called:', 1, 1, 9, NOW()),
(@qid, 'How is a Master\'s safety parameter for shallow water shown on nautical charts or ECDIS?', 1, 1, 10, NOW()),
(@qid, 'What methods best improve communication within a bridge team?', 1, 1, 11, NOW()),
(@qid, 'Situational awareness is best defined as:', 1, 1, 12, NOW()),
(@qid, 'Situational awareness depends on three levels of mental activity. Which are they?', 1, 1, 13, NOW()),
(@qid, 'What are the main consequences of losing situational awareness on the bridge?', 1, 1, 14, NOW()),
(@qid, 'Effective team situational awareness depends on:', 1, 1, 15, NOW()),
(@qid, 'Which of the following is a recognized barrier to situational awareness?', 1, 1, 16, NOW()),
(@qid, 'The squat effect in shallow water is best described as:', 1, 1, 17, NOW()),
(@qid, 'During the Crash Stop maneuver, what must be done BEFORE ordering Full Astern?', 1, 1, 18, NOW()),
(@qid, 'When a pilot is on board the bridge, which statement is correct?', 1, 1, 19, NOW()),
(@qid, 'Teambuilding requires that all bridge team members understand:', 1, 1, 20, NOW());

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

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'Reviewing the SOLAS safety manual', 0, 1),
(@q1, 'Completing the navigational watch log', 0, 2),
(@q1, 'Familiarization with bridge equipment and procedures', 1, 3),
(@q1, 'Completing a normal routine navigation plan', 0, 4),

(@q2, 'JRC (Japan Radio Company)', 0, 1),
(@q2, 'UIT (International Telecommunication Union)', 0, 2),
(@q2, 'NMEA (National Marine Electronics Association)', 1, 3),
(@q2, 'IMO (International Maritime Organization)', 0, 4),

(@q3, 'Zig-Zag Maneuver', 0, 1),
(@q3, 'Williamson Turn', 0, 2),
(@q3, 'Crash Stop', 1, 3),
(@q3, 'Parallel Index Maneuver', 0, 4),

(@q4, 'Icebergs and sea wildlife', 0, 1),
(@q4, 'Winds and Current', 1, 2),
(@q4, 'Vessel displacement and cargo', 0, 3),
(@q4, 'Chart datum and GPS errors', 0, 4),

(@q5, 'Manuals, procedures, and flag regulations only', 0, 1),
(@q5, 'Personnel, navigation equipment, and information in and out of the bridge', 1, 2),
(@q5, 'Navigation equipment and IMO international codes only', 0, 3),
(@q5, 'Engine room machinery and cargo systems', 0, 4),

(@q6, 'Working overtime and fatigue', 0, 1),
(@q6, 'Not paying attention to ISM manuals', 0, 2),
(@q6, 'Inadequate leadership and failure to communicate intentions and plans', 1, 3),
(@q6, 'Poor maintenance of navigation equipment', 0, 4),

(@q7, 'To blame the person in charge of the accident', 0, 1),
(@q7, 'For insurance claim purposes only', 0, 2),
(@q7, 'To prevent future accidents and improve bridge teamwork performance', 1, 3),
(@q7, 'To keep a record in the company file only', 0, 4),

(@q8, 'Safety meeting', 0, 1),
(@q8, 'Briefing', 1, 2),
(@q8, 'Observation and eye contact session', 0, 3),
(@q8, 'Handover of duties', 0, 4),

(@q9, 'Safety meeting', 0, 1),
(@q9, 'Briefing', 0, 2),
(@q9, 'Debriefing', 1, 3),
(@q9, 'After office meeting', 0, 4),

(@q10, 'Shown in red on nautical charts', 0, 1),
(@q10, 'Shown in green on ECDIS', 0, 2),
(@q10, 'Shown in blue on nautical charts and ECDIS', 1, 3),
(@q10, 'Shown in white on ECDIS only', 0, 4),

(@q11, 'Speaking English at all times regardless of context', 0, 1),
(@q11, 'Using standard language and standard terminology', 1, 2),
(@q11, 'Convincing crew members of the correct approach', 0, 3),
(@q11, 'Increasing the volume and clarity of voice commands', 0, 4),

(@q12, 'Knowing your position on the ship and your responsibilities', 0, 1),
(@q12, 'Taking a better decision in all situations', 0, 2),
(@q12, 'Perception of the elements of the environment within a volume of time and space', 1, 3),
(@q12, 'Monitoring all navigation equipment simultaneously', 0, 4),

(@q13, 'Perception, intuition, and projection', 0, 1),
(@q13, 'Perception, comprehension, and projection', 1, 2),
(@q13, 'Knowledge, comprehension, and projection', 0, 3),
(@q13, 'Observation, analysis, and decision', 0, 4),

(@q14, 'Increased fatigue among crew members', 0, 1),
(@q14, 'Improved safe practical procedures', 0, 2),
(@q14, 'Increased potential for human error and mishaps', 1, 3),
(@q14, 'No significant impact on safety', 0, 4),

(@q15, 'The captain alone maintaining overall awareness', 0, 1),
(@q15, 'Ratings and officers each monitoring their own station independently', 0, 2),
(@q15, 'Team members developing accurate expectations by drawing on a common knowledge base', 1, 3),
(@q15, 'All members independently assessing the situation without sharing information', 0, 4),

(@q16, 'Using multiple navigation aids simultaneously', 0, 1),
(@q16, 'Conducting regular briefings before maneuvers', 0, 2),
(@q16, 'Complacency, poor communications, and faulty information processing', 1, 3),
(@q16, 'Frequent watch rotation every 2 hours', 0, 4),

(@q17, 'An actual increase in the vessel\'s draught due to water absorption', 0, 1),
(@q17, 'A reduction of under-keel clearance as the vessel sinks lower due to reduced water pressure beneath the hull', 1, 2),
(@q17, 'An increase in vessel speed caused by shallow water resistance', 0, 3),
(@q17, 'The increase in turning radius in shallow water', 0, 4),

(@q18, 'Sound five short blasts on the whistle to warn other vessels', 0, 1),
(@q18, 'Notify the Engine Room first to prepare for possible machinery stress', 1, 2),
(@q18, 'Switch from autopilot to manual steering immediately', 0, 3),
(@q18, 'Deploy both anchors to assist stopping', 0, 4),

(@q19, 'The pilot assumes full command and relieves the Master of all responsibility', 0, 1),
(@q19, 'The Master and OOW retain full responsibility; they cooperate with the pilot and question unsafe orders', 1, 2),
(@q19, 'The OOW takes over from the pilot after arrival in port', 0, 3),
(@q19, 'The pilot\'s authority supersedes all other STCW requirements while on board', 0, 4),

(@q20, 'Their duty hours and maintenance obligations', 0, 1),
(@q20, 'Their roles and responsibilities within the bridge team', 1, 2),
(@q20, 'The company\'s commercial requirements for voyage speed', 0, 3),
(@q20, 'How to use all navigation equipment independently', 0, 4);
