-- AIS - Automatic Identification Systems Course
-- Course ID: 179 (existing draft, UPDATE)
-- STCW / IMO Resolution MSC.74(69) Annex 3
-- ITU-R M.1371, SOLAS Chapter V Regulation 19
-- Total: 18 hours theoretical + practical

SET NAMES utf8mb4;
SET @course_id = 179;

UPDATE lms_courses SET
  course_code     = 'AIS',
  title           = 'Automatic Identification Systems (AIS)',
  slug            = 'automatic-identification-systems-ais',
  description     = 'This course covers the Automatic Identification System (AIS) as required by SOLAS Chapter V Regulation 19 and IMO Resolution MSC.74(69). Students will learn AIS technology, equipment classes (Class A and Class B), SOTDMA/TDMA transmission, data types (static, dynamic, voyage-related, safety messages), AIS message types per ITU-R M.1371, integration with ECDIS and radar/ARPA, VTS applications, SAR operations, AIS limitations, cyber security considerations, and practical transponder operation. The course includes simulator-based practical exercises.',
  image           = 'https://pamel.edu.pa/uploads/ais/image1.jpeg',
  level           = 'intermediate',
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
'Introduction to AIS — Background, Purpose & Regulatory Framework',
'<h2>What is AIS?</h2>
<p>The Automatic Identification System (AIS) is a short-range coastal tracking system used on ships and by Vessel Traffic Services (VTS) for identifying and locating vessels by electronically exchanging data with other nearby ships, AIS base stations, and satellites.</p>

<h3>History and Development</h3>
<p>AIS was developed in the 1990s as a collision avoidance tool following several high-profile maritime accidents. The International Maritime Organization (IMO) adopted AIS as a mandatory carriage requirement through SOLAS Chapter V in 2000, with phased implementation completed by 2004 for most vessel classes.</p>
<ul>
<li><strong>1994:</strong> First AIS prototype tests in Sweden</li>
<li><strong>1997:</strong> ITU begins standardization work (ITU-R M.1371)</li>
<li><strong>2000:</strong> IMO adopts AIS under SOLAS Chapter V, Regulation 19</li>
<li><strong>2002:</strong> IMO Resolution MSC.74(69) Annex 3 — Performance standards for AIS</li>
<li><strong>2004:</strong> Mandatory carriage for all SOLAS vessels</li>
<li><strong>2008:</strong> Class B AIS standard introduced for non-SOLAS vessels</li>
</ul>
<h2>Purpose and Functions of AIS</h2>

<p>AIS serves multiple purposes in the maritime domain:</p>
<ol>
<li><strong>Collision Avoidance:</strong> Provides real-time identification and tracking of nearby vessels to supplement radar and visual watchkeeping</li>
<li><strong>Vessel Traffic Services (VTS):</strong> Enables shore-based authorities to monitor and manage vessel traffic in ports and waterways</li>
<li><strong>Search and Rescue (SAR):</strong> AIS-SART and AIS MOB devices enable rapid location of persons in distress</li>
<li><strong>Maritime Security:</strong> Identification of vessels entering national waters; ISPS Code compliance</li>
<li><strong>Environmental Protection:</strong> Tracking vessels in sensitive areas; monitoring compliance with routeing measures</li>
<li><strong>Port Operations:</strong> Berth planning, pilotage, and traffic management</li>
<li><strong>Aid to Navigation:</strong> Virtual and real AIS buoys broadcast AtoN information</li>
</ol>
<h2>Regulatory Framework</h2>

<h3>SOLAS Chapter V, Regulation 19</h3>
<p>SOLAS Chapter V (Safety of Navigation), Regulation 19.2.4 mandates AIS carriage for the following vessels engaged on international voyages:</p>
<ul>
<li>All ships of 300 gross tonnage (GT) and upwards</li>
<li>All cargo ships of 500 GT and upwards regardless of voyage length</li>
<li>All passenger ships regardless of size</li>
</ul>
<h3>Implementation Schedule (original SOLAS mandate)</h3>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Vessel Type</th><th style="border:1px solid #ddd;padding:6px;">Compliance Date</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Passenger ships on international voyages</td><td style="border:1px solid #ddd;padding:6px;">1 July 2002</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Tankers</td><td style="border:1px solid #ddd;padding:6px;">1 July 2003</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ships other than passenger ships and tankers ≥ 50,000 GT</td><td style="border:1px solid #ddd;padding:6px;">1 July 2004</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ships other than passenger ships and tankers ≥ 10,000 GT</td><td style="border:1px solid #ddd;padding:6px;">1 July 2004</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ships other than passenger ships and tankers ≥ 3,000 GT</td><td style="border:1px solid #ddd;padding:6px;">1 July 2004</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ships other than passenger ships and tankers ≥ 300 GT</td><td style="border:1px solid #ddd;padding:6px;">31 December 2004</td></tr>
</table>
<h3>IMO Performance Standards</h3>
<p>IMO Resolution MSC.74(69) Annex 3 defines the minimum performance standards for AIS. Key requirements:</p>
<ul>
<li>Automatic provision of information (no operator action required during normal operation)</li>
<li>Receive and process information from other AIS transponders and base stations</li>
<li>Integration with shipboard navigation equipment (GPS, gyrocompass, speed log)</li>
<li>Ability to display received AIS information</li>
<li>Autonomous and continuous operation</li>
</ul>
<h3>ITU-R M.1371</h3>
<p>ITU Recommendation ITU-R M.1371 defines the technical characteristics and method of operation of AIS in the VHF maritime mobile band. The current version (M.1371-5) covers the complete protocol specification including all message types, encoding, and modulation parameters.</p>
<h2>AIS vs Radar — Complementary Systems</h2>

<p>AIS and radar are complementary, not competing, systems:</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Feature</th><th style="border:1px solid #ddd;padding:6px;">AIS</th><th style="border:1px solid #ddd;padding:6px;">Radar/ARPA</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Vessel identification</td><td style="border:1px solid #ddd;padding:6px;">Yes (name, MMSI, call sign)</td><td style="border:1px solid #ddd;padding:6px;">No</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Detection in rain/fog</td><td style="border:1px solid #ddd;padding:6px;">Yes (not affected)</td><td style="border:1px solid #ddd;padding:6px;">Reduced performance</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Non-AIS targets</td><td style="border:1px solid #ddd;padding:6px;">Not detected</td><td style="border:1px solid #ddd;padding:6px;">Detected</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Voyage data</td><td style="border:1px solid #ddd;padding:6px;">Destination, cargo, ETA</td><td style="border:1px solid #ddd;padding:6px;">No</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Range</td><td style="border:1px solid #ddd;padding:6px;">~30 nm ship-to-ship; global via satellite</td><td style="border:1px solid #ddd;padding:6px;">Typically 12–24 nm</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Spoofable/Falsifiable</td><td style="border:1px solid #ddd;padding:6px;">Yes (data can be falsified)</td><td style="border:1px solid #ddd;padding:6px;">No (detects physical echo)</td></tr>
</table>',
'text', 1, 120, 1),

(@course_id,
'AIS Technology — VHF Channels, SOTDMA & Equipment Classes',
'<h2>AIS Technology Overview</h2>
<p>AIS is a VHF radio broadcasting system that operates using a Self-Organizing Time Division Multiple Access (SOTDMA) scheme to allow many transponders to share the same channels without coordination by a central controller.</p>

<h2>VHF Channels</h2>
<h3>Dedicated AIS Frequencies</h3>
<p>AIS operates on two dedicated VHF channels in the maritime VHF band:</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Channel</th><th style="border:1px solid #ddd;padding:6px;">ITU Designation</th><th style="border:1px solid #ddd;padding:6px;">Frequency</th><th style="border:1px solid #ddd;padding:6px;">Use</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">AIS 1</td><td style="border:1px solid #ddd;padding:6px;">87B</td><td style="border:1px solid #ddd;padding:6px;">161.975 MHz</td><td style="border:1px solid #ddd;padding:6px;">AIS primary channel</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">AIS 2</td><td style="border:1px solid #ddd;padding:6px;">88B</td><td style="border:1px solid #ddd;padding:6px;">162.025 MHz</td><td style="border:1px solid #ddd;padding:6px;">AIS secondary channel</td></tr>
</table>
<p>Both channels are used simultaneously by AIS transceivers — the transponder alternates transmissions between the two channels. This dual-channel operation provides redundancy and increases capacity. Each channel has a 25 kHz bandwidth.</p>
<h3>Channel Management</h3>
<p>AIS transponders can switch to alternative channels using Channel Management messages from base stations or regional authorities. Some regions use different channel pairs (e.g., channels 2087 and 2088 as alternatives).</p>
<h2>TDMA — Time Division Multiple Access</h2>

<h3>Frame Structure</h3>
<p>Each AIS channel is divided into a one-minute frame containing 2,250 time slots:</p>
<ul>
<li>Each slot is 26.67 milliseconds long</li>
<li>Each slot can carry one AIS message</li>
<li>2,250 slots × 2 channels = 4,500 transmissions per minute possible</li>
</ul>
<h3>SOTDMA — Self-Organizing TDMA</h3>
<p>Class A AIS transponders use SOTDMA, which allows transponders to organize themselves without a central controller:</p>
<ol>
<li>Transponder listens to the channel to map which time slots are currently occupied</li>
<li>Transponder selects a free (or lightly used) slot for its own transmission</li>
<li>Transponder announces its chosen slot in advance (frame offset and repeat interval)</li>
<li>Other transponders receive this announcement and avoid the reserved slot</li>
<li>Transponder periodically re-selects slots to adapt to changing traffic density</li>
</ol>
<h3>ITDMA — Incremental TDMA</h3>
<p>Used for Class A when the transponder is transmitting at high rates (underway, high speed) and also by base stations. Slots are reserved incrementally based on a fixed offset from the last transmission.</p>
<h3>RATDMA — Random Access TDMA</h3>
<p>Used by Class B transponders and for non-periodic messages. The transponder randomly selects a free slot.</p>
<h3>FATDMA — Fixed Access TDMA</h3>
<p>Used by shore-based base stations and AtoN AIS transmitters. Slots are fixed (pre-assigned) and reserved long-term by the maritime authority.</p>
<h2>Modulation and Data Rate</h2>

<ul>
<li><strong>Modulation:</strong> GMSK (Gaussian Minimum Shift Keying) — a type of frequency shift keying with smooth frequency transitions</li>
<li><strong>Data rate:</strong> 9,600 bits per second (9.6 kbps)</li>
<li><strong>Encoding:</strong> HDLC (High-level Data Link Control) with NRZ-I encoding</li>
<li><strong>Error detection:</strong> CRC-16 (cyclic redundancy check)</li>
<li><strong>Bit stuffing:</strong> Used to prevent false flag detection in data payload</li>
</ul>
<h2>AIS Equipment Classes</h2>

<h3>Class A Transponder (SOLAS Mandatory)</h3>
<p>Class A is the full-featured AIS transponder required on all SOLAS vessels. Characteristics:</p>
<ul>
<li><strong>Transmit power:</strong> 12.5 watts (nominal); can be switched to 1 watt in congested areas</li>
<li><strong>TDMA scheme:</strong> SOTDMA (primary) and ITDMA</li>
<li><strong>Messages:</strong> Types 1, 2, 3 (position reports); Type 5 (static and voyage data)</li>
<li><strong>Display:</strong> Integrated minimum keyboard and display (MKD) required</li>
<li><strong>Integration:</strong> Mandatory connections to GPS (primary), gyrocompass, speed log, and GNSS receiver</li>
<li><strong>Pilot plug:</strong> Standardized pilot plug (IEC 61162-1) for connecting pilot\'s portable unit (PPU)</li>
<li><strong>Long Range capability:</strong> Can respond to polling by coast stations at longer range</li>
<li><strong>Internal GPS:</strong> Required as backup when external GPS fails</li>
</ul>
<h3>Class B Transponder (Non-mandatory)</h3>
<p>Class B is a simplified, lower-cost AIS transponder for non-SOLAS vessels (leisure craft, fishing vessels, inland waterway craft). Characteristics:</p>
<ul>
<li><strong>Transmit power:</strong> 2 watts</li>
<li><strong>TDMA scheme:</strong> CSTDMA (Carrier Sense TDMA) — listens before transmitting</li>
<li><strong>Messages:</strong> Types 18 (position report) and 24 (static data)</li>
<li><strong>Lower update rate:</strong> Every 30 seconds when underway (vs. every 2–10 seconds for Class A)</li>
<li><strong>No mandatory display:</strong> May use connected chart plotter</li>
<li><strong>No voyage data:</strong> Does not transmit destination or ETA</li>
<li><strong>Lower priority:</strong> Class A transmissions take priority over Class B</li>
</ul>
<h3>Class B+ (SO)</h3>
<p>An enhanced Class B using SOTDMA (same as Class A). Transmit power 5 watts. Higher update rate than standard Class B. Used in some regions as an intermediate option.</p>
<h3>AIS Receiver (Receive-only)</h3>
<p>A passive device that receives AIS transmissions but does not transmit. Used for vessel monitoring applications, port operations, and as a display device. Not a transponder — does not contribute to the AIS network.</p>
<h3>AIS Base Station</h3>
<p>Shore-based AIS station operated by port authorities or maritime administrations. Uses FATDMA. Can transmit channel management messages, safety messages, and UTC time synchronization. Range typically 50+ nautical miles.</p>
<h3>AIS-SART (Search and Rescue Transmitter)</h3>
<ul>
<li>Transmitter-only device (Type 18 messages)</li>
<li>Activated manually or automatically on immersion (float-free)</li>
<li>Transmits position every 1 minute when activated; every 30 seconds when searching vessels are detected</li>
<li>Approved as alternative to 9 GHz radar SART for SOLAS vessels</li>
<li>Range: approximately 10 nm from searching vessel\'s AIS receiver</li>
</ul>
<h3>MOB AIS (Man Overboard)</h3>
<p>Personal AIS beacon worn by crew. On activation, transmits Type 14 (safety broadcast) and Type 21 messages with victim\'s position. Integrated with Class A transponder on the vessel for automatic MOB alert.</p>',
'text', 2, 150, 1),

(@course_id,
'AIS Data Types & Message Structure',
'<h2>AIS Information Categories</h2>
<p>AIS transmits three primary categories of information, plus safety-related text messages. Understanding what data is sent, when, and how often is fundamental to operating AIS correctly.</p>

<h2>1. Static Information</h2>
<p>Static information is entered once (during installation or commissioning) and does not change during a voyage. It is transmitted every 6 minutes and on request.</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Data Element</th><th style="border:1px solid #ddd;padding:6px;">Source</th><th style="border:1px solid #ddd;padding:6px;">Notes</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">MMSI number</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">9-digit unique identifier</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">IMO number</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">7-digit IMO ship number</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Call sign</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">ITU radio call sign (up to 7 chars)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Vessel name</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">Up to 20 characters</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Ship type / cargo type</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">ITU-R M.1371 ship type codes</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Dimensions (length, beam)</td><td style="border:1px solid #ddd;padding:6px;">Programmed at installation</td><td style="border:1px solid #ddd;padding:6px;">In meters; includes GPS antenna position reference</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">EPIRB MMSI</td><td style="border:1px solid #ddd;padding:6px;">Optional, programmed</td><td style="border:1px solid #ddd;padding:6px;">Links AIS to EPIRB for SAR</td></tr>
</table>
<h2>2. Dynamic Information</h2>
<p>Dynamic information is updated automatically from connected navigation sensors and changes continuously. Update frequency depends on vessel speed and manoeuvring status.</p>

<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Data Element</th><th style="border:1px solid #ddd;padding:6px;">Source</th><th style="border:1px solid #ddd;padding:6px;">Notes</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Position (Lat/Lon)</td><td style="border:1px solid #ddd;padding:6px;">GPS / GNSS receiver</td><td style="border:1px solid #ddd;padding:6px;">WGS-84 datum; resolution 1/10,000 minute</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Position accuracy</td><td style="border:1px solid #ddd;padding:6px;">GPS quality flag</td><td style="border:1px solid #ddd;padding:6px;">High (≤10m DGPS) or Low (&gt;10m)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">UTC date and time</td><td style="border:1px solid #ddd;padding:6px;">GPS</td><td style="border:1px solid #ddd;padding:6px;">Time of position fix (UTC second)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Course over ground (COG)</td><td style="border:1px solid #ddd;padding:6px;">GPS</td><td style="border:1px solid #ddd;padding:6px;">0.1° resolution, 0–359.9°</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Speed over ground (SOG)</td><td style="border:1px solid #ddd;padding:6px;">GPS</td><td style="border:1px solid #ddd;padding:6px;">0.1 knot resolution, 0–102.2 kts</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">True heading</td><td style="border:1px solid #ddd;padding:6px;">Gyrocompass</td><td style="border:1px solid #ddd;padding:6px;">1° resolution; from heading sensor</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Rate of turn (ROT)</td><td style="border:1px solid #ddd;padding:6px;">Rate of turn indicator</td><td style="border:1px solid #ddd;padding:6px;">°/minute, from ROT sensor or derived from COG</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Navigational status</td><td style="border:1px solid #ddd;padding:6px;">Manually entered by officer</td><td style="border:1px solid #ddd;padding:6px;">Underway/anchor/moored/NUC/RAM etc.</td></tr>
</table>
<h3>Navigational Status Codes</h3>
<p>The navigational status must be set manually by the officer of the watch. Standard codes (ITU-R M.1371):</p>
<ul>
<li><strong>0:</strong> Under way using engine</li>
<li><strong>1:</strong> At anchor</li>
<li><strong>2:</strong> Not under command (NUC)</li>
<li><strong>3:</strong> Restricted in ability to manoeuvre (RAM)</li>
<li><strong>4:</strong> Constrained by her draught</li>
<li><strong>5:</strong> Moored</li>
<li><strong>6:</strong> Aground</li>
<li><strong>7:</strong> Engaged in fishing</li>
<li><strong>8:</strong> Under way sailing</li>
<li><strong>14:</strong> AIS-SART active</li>
<li><strong>15:</strong> Not defined (default / undefined)</li>
</ul>
<h2>3. Voyage-Related Information</h2>
<p>Voyage data is entered by the officer of the watch at the start of each voyage and updated as required. Transmitted every 6 minutes and on request.</p>

<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Data Element</th><th style="border:1px solid #ddd;padding:6px;">Who Enters It</th><th style="border:1px solid #ddd;padding:6px;">Notes</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Draught</td><td style="border:1px solid #ddd;padding:6px;">Officer of the watch</td><td style="border:1px solid #ddd;padding:6px;">Current maximum draught in 0.1 m increments (0.1–25.5 m)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Cargo type / hazardous cargo</td><td style="border:1px solid #ddd;padding:6px;">Master / officer</td><td style="border:1px solid #ddd;padding:6px;">IMDG code category for dangerous goods</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Destination</td><td style="border:1px solid #ddd;padding:6px;">Officer of the watch</td><td style="border:1px solid #ddd;padding:6px;">UN/LOCODE preferred (e.g., PAMIT for Manzanillo); up to 20 chars</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Estimated time of arrival (ETA)</td><td style="border:1px solid #ddd;padding:6px;">Master / officer</td><td style="border:1px solid #ddd;padding:6px;">UTC date and time (month, day, hour, minute)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Persons on board</td><td style="border:1px solid #ddd;padding:6px;">Master</td><td style="border:1px solid #ddd;padding:6px;">Total persons including crew and passengers</td></tr>
</table>
<h2>4. Safety-Related Messages</h2>
<p>Short text messages (up to 161 characters) broadcast to all stations or addressed to a specific MMSI. Used for:</p>
<ul>
<li>Broadcasting navigation warnings</li>
<li>Communicating navigational hazards between ships</li>
<li>VTS authority broadcasts to vessel traffic</li>
</ul>
<h2>AIS Message Types (ITU-R M.1371)</h2>

<p>The AIS protocol defines 27 message types. The most important for shipboard operation:</p>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Type</th><th style="border:1px solid #ddd;padding:6px;">Name</th><th style="border:1px solid #ddd;padding:6px;">Who Sends It</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">1</td><td style="border:1px solid #ddd;padding:6px;">Position report (SOTDMA scheduled)</td><td style="border:1px solid #ddd;padding:6px;">Class A — underway</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">2</td><td style="border:1px solid #ddd;padding:6px;">Position report (SOTDMA assigned)</td><td style="border:1px solid #ddd;padding:6px;">Class A — assigned mode</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">3</td><td style="border:1px solid #ddd;padding:6px;">Position report (ITDMA)</td><td style="border:1px solid #ddd;padding:6px;">Class A — response to interrogation</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">4</td><td style="border:1px solid #ddd;padding:6px;">Base station report</td><td style="border:1px solid #ddd;padding:6px;">Shore base stations</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">5</td><td style="border:1px solid #ddd;padding:6px;">Static and voyage related data</td><td style="border:1px solid #ddd;padding:6px;">Class A — every 6 min or on request</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">9</td><td style="border:1px solid #ddd;padding:6px;">SAR aircraft position report</td><td style="border:1px solid #ddd;padding:6px;">Aircraft with AIS</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">12</td><td style="border:1px solid #ddd;padding:6px;">Addressed safety message</td><td style="border:1px solid #ddd;padding:6px;">Any AIS station to specific MMSI</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">14</td><td style="border:1px solid #ddd;padding:6px;">Safety broadcast message</td><td style="border:1px solid #ddd;padding:6px;">Any AIS station — broadcast to all</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">17</td><td style="border:1px solid #ddd;padding:6px;">DGNSS correction broadcast</td><td style="border:1px solid #ddd;padding:6px;">Base stations</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">18</td><td style="border:1px solid #ddd;padding:6px;">Class B position report</td><td style="border:1px solid #ddd;padding:6px;">Class B transponders</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">21</td><td style="border:1px solid #ddd;padding:6px;">Aid-to-navigation report</td><td style="border:1px solid #ddd;padding:6px;">AtoN AIS stations (buoys, lighthouses)</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">24</td><td style="border:1px solid #ddd;padding:6px;">Class B static data report</td><td style="border:1px solid #ddd;padding:6px;">Class B — name, call sign, type</td></tr>
</table>',
'text', 3, 120, 1),

(@course_id,
'AIS Transmission Rates, Range & Antenna Systems',
'<h2>Class A Transmission Rates</h2>
<p>Class A transponders automatically adjust their transmission rate based on speed and manoeuvring status. This ensures that faster or manoeuvring vessels are tracked more frequently, while slow or stationary vessels do not waste channel capacity.</p>

<h3>Position Report (Dynamic Data) Update Intervals</h3>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Vessel Status</th><th style="border:1px solid #ddd;padding:6px;">Update Interval</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">At anchor or moored (0–3 knots, not changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 3 minutes</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, 0–14 knots (not changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 10 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, 0–14 knots (changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 3.33 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, 14–23 knots (not changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 6 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, 14–23 knots (changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 2 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, &gt;23 knots (not changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 2 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Underway, &gt;23 knots (changing course)</td><td style="border:1px solid #ddd;padding:6px;">Every 2 seconds</td></tr>
</table>
<h3>Static and Voyage Data (Type 5) Update Intervals</h3>
<ul>
<li>Every 6 minutes — regardless of speed or status</li>
<li>Immediately on request (when interrogated by another station)</li>
<li>Immediately when manually updated by the officer of the watch</li>
</ul>
<h3>Class B Update Intervals</h3>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Speed</th><th style="border:1px solid #ddd;padding:6px;">Update Interval</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Speed &lt; 2 knots</td><td style="border:1px solid #ddd;padding:6px;">Every 3 minutes</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Speed 2–14 knots</td><td style="border:1px solid #ddd;padding:6px;">Every 30 seconds</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">Speed &gt; 14 knots</td><td style="border:1px solid #ddd;padding:6px;">Every 15 seconds</td></tr>
</table>
<h2>AIS Range</h2>

<h3>Typical Ship-to-Ship Range</h3>
<p>AIS uses VHF frequencies and is therefore subject to line-of-sight propagation limitations:</p>
<ul>
<li><strong>Ship-to-ship:</strong> Approximately 20–30 nautical miles (depending on antenna height)</li>
<li><strong>Ship-to-shore (VTS):</strong> Approximately 40–60 nautical miles (tall VTS tower antennas)</li>
<li><strong>Satellite AIS (S-AIS):</strong> Global coverage — no range limitation; used for ocean tracking</li>
</ul>
<h3>Range Formula</h3>
<p>The line-of-sight distance (in nautical miles) can be estimated as:</p>
<p><strong>d = 2.2 × (√h₁ + √h₂)</strong></p>
<p>Where h₁ and h₂ are the antenna heights in meters. For example, if the transmitting ship has an antenna at 20 m and the receiving ship at 15 m: d = 2.2 × (√20 + √15) = 2.2 × (4.47 + 3.87) ≈ 18.3 nm.</p>
<h3>Factors Affecting AIS Range</h3>
<ul>
<li>Antenna height above sea level</li>
<li>Obstacles (other vessels, terrain, structures)</li>
<li>Atmospheric conditions (ducting can extend range significantly)</li>
<li>VHF interference from other services</li>
<li>Channel congestion (in dense traffic areas)</li>
</ul>
<h2>Satellite AIS (S-AIS)</h2>

<p>Satellite-based AIS receivers (S-AIS) in low Earth orbit (LEO) can detect AIS transmissions from any ship on the ocean. Challenges:</p>
<ul>
<li><strong>Slot collisions:</strong> Many ships simultaneously occupy the same time slots when viewed from space (since SOTDMA only prevents local collisions)</li>
<li><strong>Signal processing:</strong> Advanced receivers use multiple antennas and signal processing to separate overlapping messages</li>
<li><strong>Latency:</strong> S-AIS data is not real-time — typically 10-minute to several-hour delay depending on satellite pass</li>
<li><strong>Coverage:</strong> Multiple satellite operators (Spire, exactEarth, Orbcomm) provide near-global coverage</li>
</ul>
<p>S-AIS is used for long-range vessel tracking, port planning, and maritime domain awareness by port authorities and coast guards worldwide.</p>
<h2>AIS Antenna Installation</h2>

<h3>Requirements</h3>
<ul>
<li>Omnidirectional VHF antenna, vertically polarized</li>
<li>Frequency range: 156.025–162.025 MHz</li>
<li>Impedance: 50 ohms</li>
<li>VSWR: not more than 1.5:1</li>
<li>Installed as high as practicable to maximize range</li>
<li>Separate from GMDSS VHF antenna — AIS and VHF DSC must not share an antenna simultaneously</li>
<li>Antenna cable losses must be accounted for (maximum loss typically 3 dB)</li>
</ul>
<h3>GPS Antenna</h3>
<ul>
<li>Separate GPS antenna required for the AIS internal GPS receiver</li>
<li>Must have clear sky view (not shaded by masts or superstructure)</li>
<li>Position reference for AIS: distance from ship reference point (bow and port side)</li>
<li>Position accuracy affects the RAIM (Receiver Autonomous Integrity Monitoring) flag in AIS messages</li>
</ul>',
'text', 4, 120, 1),

(@course_id,
'AIS Operation — Equipment, Setup & Watchkeeping Duties',
'<h2>Class A Transponder Components</h2>

<p>A Class A AIS transponder installation consists of:</p>
<ul>
<li><strong>Transponder unit:</strong> Main processing unit with VHF transceiver</li>
<li><strong>Minimum Keyboard and Display (MKD):</strong> For data entry and monitoring (may be built in or external)</li>
<li><strong>VHF antenna:</strong> For AIS transmissions/receptions</li>
<li><strong>GPS/GNSS antenna:</strong> For internal position source</li>
<li><strong>Pilot plug (BIIT):</strong> IEC 62388 standardized connector for pilot\'s portable unit (PPU)</li>
<li><strong>Sensor inputs:</strong> NMEA 0183 or NMEA 2000 connections to GPS, gyrocompass, speed log</li>
<li><strong>Long-range function:</strong> Via Inmarsat-C or other satellite link (external module)</li>
</ul>
<h2>Voyage Data Entry — Officer of Watch Duties</h2>

<p>The officer of the watch is responsible for keeping AIS voyage data accurate and current. Required actions:</p>
<h3>At Departure</h3>
<ol>
<li>Verify static data is correct (vessel name, MMSI, call sign, dimensions)</li>
<li>Update <strong>navigational status</strong> to "Under way using engine" (0) or "Under way sailing" (8)</li>
<li>Enter current <strong>draught</strong> (to nearest 0.1 m)</li>
<li>Enter <strong>destination</strong> (UN/LOCODE preferred, e.g., "PAMIT" for Manzanillo, Panama)</li>
<li>Enter estimated time of arrival (<strong>ETA</strong>) in UTC</li>
<li>Enter <strong>persons on board</strong> (crew + passengers)</li>
<li>Enter hazardous cargo category if applicable</li>
</ol>
<h3>During Voyage</h3>
<ul>
<li>Update navigational status when anchoring, mooring, or if vessel becomes NUC/RAM</li>
<li>Update destination and ETA when itinerary changes</li>
<li>Update draught when ballasting/deballasting changes it significantly</li>
<li>Monitor AIS display — verify own ship data is being transmitted correctly</li>
<li>Check that received targets are displayed on the MKD or ECDIS/radar</li>
</ul>
<h3>At Anchor</h3>
<ul>
<li>Set navigational status to "At anchor" (1)</li>
<li>Verify position is being updated from GPS</li>
</ul>
<h2>AIS Silent Mode</h2>

<p>AIS can be switched to receive-only (silent) mode in specific circumstances:</p>
<ul>
<li>IMO Resolution A.917(22) states AIS should not normally be switched off</li>
<li>The master may switch off AIS if a security threat is considered to outweigh safety benefits (SOLAS Regulation V/19.2.4.4)</li>
<li>Under no circumstances should AIS be switched off routinely — only in exceptional security situations</li>
<li>When AIS is switched off, this must be logged in the vessel\'s radio log with the reason and time</li>
<li>VTS authorities may require AIS to remain active in their jurisdiction regardless of master\'s discretion</li>
</ul>
<p><strong>Important:</strong> Switching off AIS does NOT mean the vessel is invisible — it remains detectable by radar, and the absence of AIS signal from a known vessel may itself attract attention from authorities.</p>
<h2>AIS Display and Interpretation</h2>

<h3>Minimum Keyboard and Display (MKD)</h3>
<p>The MKD allows the officer of the watch to:</p>
<ul>
<li>View a list of received AIS targets (vessels in range)</li>
<li>Select a target and view its full data (name, MMSI, position, COG, SOG, heading, status, destination)</li>
<li>Send safety messages to specific vessels or broadcast to all</li>
<li>Enter and update voyage-related data</li>
<li>View own ship transmitted data to verify correctness</li>
</ul>
<h3>AIS on ECDIS and Radar/ARPA</h3>
<p>AIS data is typically displayed on the ship\'s ECDIS and/or radar with ARPA. When both AIS and radar track the same vessel (association/fusion), the officer can:</p>
<ul>
<li>See the vessel\'s name and type overlaid on the radar/ECDIS display</li>
<li>View predicted CPA (closest point of approach) and TCPA</li>
<li>Determine whether a vessel is manoeuvring (from ROT data)</li>
<li>Identify the vessel by name for VHF communication</li>
</ul>
<h3>Target Association (Fusion)</h3>
<p>Modern integrated bridge systems fuse radar tracks with AIS targets when both data sources show the same vessel. Rules for association:</p>
<ul>
<li>Position difference less than a specified threshold (typically 0.2–1.0 nm)</li>
<li>Heading/COG within a specified tolerance</li>
<li>When associated, the AIS identity (name) is applied to the radar track symbol</li>
<li>Unmatched AIS targets (no radar echo) and unmatched radar tracks should be investigated</li>
</ul>
<h2>Long Range AIS (LR-AIS)</h2>
<p>Class A transponders can respond to Long-Range interrogation from coast stations via satellite communications. The transponder sends a position report on request — used by maritime authorities for vessel monitoring beyond VHF range. The LR function uses the Inmarsat-C terminal on board as the communication path.</p>
<h2>Record-Keeping</h2>
<p>IMO Resolution A.917(22) and SOLAS require the following AIS-related entries in the ship\'s radio log:</p>
<ul>
<li>Time AIS was switched on at departure</li>
<li>Any period AIS was switched to silent mode — with time, reason, and authority of the master</li>
<li>Any failure of AIS equipment — action taken</li>
<li>Any change to static data (e.g., vessel renamed or re-flagged)</li>
</ul>',
'text', 5, 120, 1),

(@course_id,
'AIS Integration with ECDIS, Radar & VTS Applications',
'<h2>AIS Integration with ECDIS</h2>

<p>The Electronic Chart Display and Information System (ECDIS) is the primary chart display system on modern vessels. AIS integration with ECDIS provides significant situational awareness benefits.</p>
<h3>AIS Target Symbols on ECDIS</h3>
<p>ECDIS uses standardized symbols (IEC 62288) to represent AIS targets:</p>
<ul>
<li><strong>Activated AIS target (triangle):</strong> A vessel with full data, including heading vector — triangle points in direction of heading</li>
<li><strong>Sleeping AIS target (smaller triangle):</strong> Received but not activated for detailed display — reduces clutter in busy areas</li>
<li><strong>Lost AIS target (dashed triangle):</strong> No update received within 6 times the expected reporting interval</li>
<li><strong>Dangerous AIS target (target with highlight):</strong> CPA/TCPA within alarm limits</li>
<li><strong>Selected AIS target (data box):</strong> Target selected by operator — full data displayed</li>
</ul>
<h3>CPA and TCPA from AIS</h3>
<p>ECDIS calculates Closest Point of Approach (CPA) and Time to CPA (TCPA) for each AIS target using:</p>
<ul>
<li>Own ship position (from GNSS)</li>
<li>Target position, COG, and SOG (from AIS)</li>
<li>CPA and TCPA alarm thresholds set by the operator</li>
</ul>
<p><strong>Important limitation:</strong> AIS-derived CPA/TCPA calculations assume both vessels maintain their current COG and SOG. If the target is manoeuvring, the AIS position update lag (up to 10 seconds) means the ECDIS calculation may lag behind reality. Radar ARPA gives a more reactive CPA calculation based on actual observed positions.</p>
<h2>AIS Integration with Radar/ARPA</h2>

<h3>Advantages of AIS Over Radar for Collision Avoidance</h3>
<ul>
<li>Identification by name, call sign, and vessel type</li>
<li>Heading information (true heading from gyrocompass) — not just COG</li>
<li>Rate of turn — allows prediction of manoeuvres</li>
<li>Voyage data — destination, cargo, persons on board</li>
<li>Contact before radar detection range (20–30 nm vs. 12–16 nm for radar)</li>
<li>Not affected by sea clutter, rain, or other radar interference</li>
</ul>
<h3>Limitations of AIS Compared to Radar</h3>
<ul>
<li>Only equipped vessels are visible — small craft, debris, and unequipped vessels not shown</li>
<li>Data may be inaccurate or falsified — operator must cross-check with radar</li>
<li>Transmission failure or switched-off transponder means vessel disappears</li>
<li>High traffic density can cause slot collisions and missed messages</li>
<li>GPS antenna position offset may cause apparent position inaccuracy</li>
</ul>
<h2>AIS in Vessel Traffic Services (VTS)</h2>

<p>VTS centers use AIS as a primary tool for vessel monitoring and traffic management:</p>
<h3>VTS Applications</h3>
<ul>
<li><strong>Traffic separation:</strong> Monitoring compliance with Traffic Separation Schemes (TSS)</li>
<li><strong>Port approach management:</strong> Berth planning, pilot coordination, tug dispatch</li>
<li><strong>Speed monitoring:</strong> Detecting vessels exceeding speed limits in restricted areas</li>
<li><strong>Routing compliance:</strong> Ensuring vessels follow designated routeing measures</li>
<li><strong>Dangerous goods tracking:</strong> Monitoring vessels carrying hazardous cargo</li>
<li><strong>Environmental monitoring:</strong> Detecting unauthorized anchoring or drifting in sensitive areas</li>
<li><strong>Incident detection:</strong> Vessels deviating from declared route or not answering VHF calls</li>
</ul>
<h3>AIS Base Station Network</h3>
<p>VTS centers operate a network of AIS base stations to cover their area of jurisdiction. Each base station:</p>
<ul>
<li>Covers approximately 50–80 nm radius</li>
<li>Provides UTC time synchronization to ships in range</li>
<li>Can broadcast safety messages to all vessels in range</li>
<li>Can manage channel assignments for the local area</li>
<li>Forwards all received AIS data to the VTS center for display</li>
</ul>
<h2>AIS in Search and Rescue (SAR)</h2>

<h3>AIS-SART in SAR Operations</h3>
<p>When activated, an AIS-SART broadcasts its GPS position via standard AIS messages (Type 1). Searching vessels see the SART as a moving AIS target with the special MMSI format 97MIDXXXX (where MID = country code).</p>
<ul>
<li>Position updated every 1 minute initially; every 30 seconds when interrogated</li>
<li>Navigational status set to "AIS-SART active" (14)</li>
<li>Visible on any AIS-equipped vessel within ~10 nm VHF range</li>
<li>Allows direct navigation to survivor position from ECDIS/chart plotter</li>
<li>SAR aircraft with AIS receiver can locate SART from >50 nm</li>
</ul>
<h3>MOB AIS Alert</h3>
<p>When a MOB AIS device is activated, it triggers an alarm on the ship\'s AIS transponder and ECDIS:</p>
<ul>
<li>Ship\'s display shows MOB alarm with GPS coordinates of the person in water</li>
<li>The MOB device transmits a safety broadcast message (Type 14) and position report</li>
<li>Enables immediate return to MOB position even in fog or darkness</li>
</ul>
<h2>AIS for Aid to Navigation (AtoN)</h2>
<p>AIS AtoN stations are installed on buoys, lighthouses, and other navigation marks to broadcast their identity and condition:</p>
<ul>
<li><strong>Real AtoN:</strong> Physical AIS transmitter on the navigation mark (buoy, lighthouse)</li>
<li><strong>Virtual AtoN:</strong> A shore-based station transmits an AIS message representing a non-existent mark (used to show wrecks, new hazards, temporary marks)</li>
<li>AtoN messages use Type 21 — includes AtoN type, name, position, accuracy, and status (off position, broken, etc.)</li>
<li>Visible on ECDIS alongside chart objects — must be reconciled with chart data</li>
</ul>',
'text', 6, 120, 1),

(@course_id,
'AIS Limitations, Integrity & Cyber Security',
'<h2>AIS Limitations and Vulnerabilities</h2>
<p>While AIS is a powerful tool, mariners and shore-based operators must understand its inherent limitations to avoid over-reliance and safety risks.</p>

<h2>Technical Limitations</h2>
<h3>1. Channel Congestion and Slot Collisions</h3>
<p>In areas with very high vessel density (major ports, straits), AIS channels can become saturated:</p>
<ul>
<li>The two AIS channels can handle approximately 4,500 time slots per minute in total</li>
<li>When many vessels compete for slots, some transmissions are lost</li>
<li>High-priority vessels (fast, manoeuvring) tend to dominate available slots</li>
<li>Some vessels may drop to lower update rates or miss updates entirely</li>
<li>Solution: AIS receivers filter old targets; base stations can increase slot efficiency</li>
</ul>
<h3>2. Propagation Effects</h3>
<ul>
<li><strong>VHF range limitation:</strong> AIS range is limited to approximately line-of-sight. Vessels beyond the radio horizon are not visible</li>
<li><strong>Atmospheric ducting:</strong> Can extend range beyond the radio horizon, but also cause false contacts or interference from very distant stations</li>
<li><strong>Obstruction:</strong> Tall ship structures, cliffs, and terrain can create shadow sectors where AIS signals are blocked</li>
</ul>
<h3>3. Position Accuracy Issues</h3>
<ul>
<li>AIS position is only as accurate as the GPS/GNSS source</li>
<li>GPS antenna position offset from the ship\'s reference point must be correctly programmed</li>
<li>GPS multipath errors near port structures can degrade accuracy</li>
<li>A vessel with poor GPS may appear to be in a different position than its actual location</li>
</ul>
<h3>4. Data Lag</h3>
<ul>
<li>Class A position updates every 2–10 seconds; Class B every 15–30 seconds</li>
<li>During fast manoeuvres, displayed position and heading may lag behind actual vessel state</li>
<li>CPA/TCPA calculations based on AIS data may be less accurate during manoeuvring than radar ARPA</li>
</ul>
<h2>Data Integrity Issues</h2>

<h3>Incorrect Data Entry</h3>
<p>Most AIS data integrity problems stem from incorrect data entry rather than technical failure:</p>
<ul>
<li>Wrong navigational status (vessel shows "at anchor" while underway, or vice versa)</li>
<li>Outdated destination and ETA — officer failed to update at departure</li>
<li>Incorrect draught — not updated after loading/ballasting</li>
<li>Wrong vessel name or call sign — programming error during installation</li>
<li>MMSI not properly registered with national authority</li>
</ul>
<p><strong>Rule:</strong> Officers of the watch have a duty to maintain accurate AIS data. Incorrect data may mislead other vessels and VTS authorities.</p>
<h3>Spoofing and Ghost Vessels</h3>
<p>AIS spoofing is the deliberate transmission of false AIS data to deceive ship tracking systems:</p>
<ul>
<li>An attacker transmits a fake AIS signal with a different vessel\'s MMSI or a fabricated identity</li>
<li>Creates false targets on ECDIS/radar that do not correspond to real vessels</li>
<li>Can mask the true position of a vessel (e.g., appearing to be in a different location)</li>
<li>Has been used to obscure illegal activities (sanctions evasion, illegal fishing, dark fleet operations)</li>
</ul>
<h3>AIS Jamming</h3>
<p>Intentional or unintentional interference on AIS frequencies (161.975 or 162.025 MHz) can prevent reception of AIS signals. Effects:</p>
<ul>
<li>AIS targets disappear from display</li>
<li>Own vessel\'s AIS transmissions may not be received by others</li>
<li>Should be reported to maritime authority and flagged in radio log</li>
</ul>
<h2>Cyber Security Considerations</h2>

<h3>IMO Maritime Cyber Risk Management</h3>
<p>IMO Resolution MSC-FAL.1/Circ.3 (2017) provides guidelines on maritime cyber risk management. AIS is identified as a system vulnerable to cyber attack:</p>
<ul>
<li><strong>NMEA sentence injection:</strong> Malware on ship\'s network could inject false NMEA data into the AIS transponder via the sensor interface</li>
<li><strong>GPS spoofing:</strong> False GPS signals cause incorrect position to appear in AIS broadcasts</li>
<li><strong>Network access:</strong> AIS transponders connected to ship\'s LAN may be accessible to cyber attackers via crew internet connections</li>
</ul>
<h3>Best Practices for AIS Cyber Security</h3>
<ul>
<li>Segregate navigation networks from crew internet access networks</li>
<li>Apply firmware updates for AIS equipment when provided by manufacturer</li>
<li>Monitor for anomalies — unexpected changes in own ship AIS data</li>
<li>Physically restrict access to AIS transponder units</li>
<li>Use independent position verification (radar bearings, visual fixes) to cross-check GPS-derived position</li>
</ul>
<h2>Best Practices for AIS Operation</h2>

<ol>
<li><strong>Never rely solely on AIS</strong> — always use radar, visual watchkeeping, and sound signals as required by COLREGS</li>
<li><strong>Verify received data</strong> — if an AIS target\'s data appears inconsistent, cross-check with radar and visual observation</li>
<li><strong>Keep own ship data accurate</strong> — navigational status, destination, draught, and ETA must be kept current</li>
<li><strong>Do not switch off AIS</strong> — only in genuine security emergencies, and always log it</li>
<li><strong>Be aware of non-AIS targets</strong> — fishing vessels, small craft, and vessels with AIS failure will not appear</li>
<li><strong>Use AIS for identification, not just collision avoidance</strong> — call vessels by name on VHF Ch. 16 or working channel</li>
<li><strong>Report false or suspicious AIS transmissions</strong> to the relevant authority</li>
<li><strong>Treat ghost targets with caution</strong> — an AIS target with no corresponding radar echo should be investigated (the vessel may be very small, or the AIS data may be false)</li>
</ol>
<h2>Regulations Regarding AIS Misuse</h2>
<p>Deliberately transmitting false AIS information is a violation of ITU Radio Regulations and national maritime law. Consequences can include:</p>
<ul>
<li>Port State Control detention</li>
<li>IMO/flag state investigation</li>
<li>Criminal prosecution under national law</li>
<li>Insurance claims denial if false AIS contributed to an incident</li>
</ul>',
'text', 7, 120, 1),

(@course_id,
'LRIT, Port State Control & Practical Assessment',
'<h2>Long-Range Identification and Tracking (LRIT)</h2>

<p>LRIT complements AIS by providing global ship tracking at ranges beyond VHF coverage. While AIS operates on VHF (line-of-sight), LRIT uses satellite communications for worldwide position reporting.</p>
<h3>LRIT Requirements (SOLAS Regulation V/19-1)</h3>
<ul>
<li>All SOLAS vessels (passenger ships, cargo ships 300 GT+) must be fitted with LRIT</li>
<li>Transmits position, identity, and UTC time automatically every 6 hours</li>
<li>Vessel cannot disable LRIT — it transmits continuously whether at sea or in port</li>
<li>Polling on demand: coast states can request more frequent reports (up to every 15 minutes) for vessels within 1,000 nm</li>
</ul>
<h3>LRIT System Architecture</h3>
<ul>
<li><strong>Shipborne LRIT equipment:</strong> Typically uses Inmarsat-C, Iridium, or other approved satellite communication systems</li>
<li><strong>Communication Service Provider (CSP):</strong> Manages the data link between ship and shore</li>
<li><strong>Application Service Provider (ASP):</strong> Processes and distributes LRIT data</li>
<li><strong>National LRIT Data Centre:</strong> Operated by each contracting government for its flagged vessels</li>
<li><strong>International LRIT Data Exchange (IDE):</strong> Routes requests between national data centres</li>
</ul>
<h3>Who Can Access LRIT Data</h3>
<p>Unlike AIS, LRIT data is NOT public. Access is controlled:</p>
<ul>
<li><strong>Flag State:</strong> Can access position data for all vessels flying its flag — at all times</li>
<li><strong>Port State:</strong> Can access position data for vessels intending to enter its port — within 96 hours of expected arrival</li>
<li><strong>Coastal State:</strong> Can access position data for vessels within 1,000 nm of its coast</li>
<li><strong>SAR services:</strong> Can access LRIT data when coordinating a SAR operation</li>
</ul>
<h2>AIS and Port State Control (PSC)</h2>

<p>Port State Control (PSC) officers routinely check AIS compliance during vessel inspections. Common deficiencies found:</p>
<ul>
<li>AIS switched off or in silent mode without justification</li>
<li>Incorrect or outdated voyage data (destination, ETA)</li>
<li>Wrong navigational status (shows "at anchor" when moored, or vice versa)</li>
<li>MMSI number not matching the vessel\'s registration</li>
<li>AIS transponder not connected to or showing discrepancy with GPS</li>
<li>Static data (vessel name, dimensions) incorrect</li>
<li>AIS not integrated with ECDIS or displaying incorrect own-ship data</li>
</ul>
<p><strong>PSC detainable deficiency:</strong> AIS not fitted when required, or AIS not operational, can result in vessel detention until repaired.</p>
<h2>AIS Maintenance and Testing</h2>

<h3>Self-Test Function</h3>
<p>Class A transponders have a built-in test function that checks:</p>
<ul>
<li>Internal hardware (processor, memory, transceiver)</li>
<li>GPS receiver status and position fix</li>
<li>Sensor input status (gyrocompass, speed log)</li>
<li>Transmission power output</li>
<li>Received signals on both AIS channels</li>
</ul>
<h3>Regular Maintenance Checks (by OOW)</h3>
<ul>
<li>Verify own ship data is being transmitted — use a separate AIS receiver or check online AIS tracking service</li>
<li>Check GPS position accuracy flag (high/low)</li>
<li>Verify sensor inputs are providing data (heading, SOG)</li>
<li>Check number of targets received — sudden drop may indicate equipment fault or channel jamming</li>
<li>Verify pilot plug connection is operational before pilotage</li>
</ul>
<h2>Practical Exercises — AIS Operations</h2>

<h3>Exercise 1: Voyage Data Entry</h3>
<p>Students practice entering and verifying the following data on a simulated Class A MKD:</p>
<ol>
<li>Set navigational status to "Under way using engine"</li>
<li>Enter vessel draught: 9.5 m</li>
<li>Enter destination: PAMIT (Manzanillo International Terminal, Panama)</li>
<li>Enter ETA: following day at 0800 UTC</li>
<li>Enter persons on board: 22</li>
<li>Verify own-ship data is correct on display</li>
</ol>
<h3>Exercise 2: Target Identification and CPA Assessment</h3>
<p>Using the ECDIS simulator:</p>
<ol>
<li>Identify three AIS targets within 10 nm range</li>
<li>For each target, note: name, MMSI, vessel type, COG, SOG, navigational status</li>
<li>Identify which target presents the closest CPA and at what time (TCPA)</li>
<li>Determine if the displayed AIS data is consistent with radar data for each target</li>
</ol>
<h3>Exercise 3: Anomaly Detection</h3>
<p>Students are presented with scenarios containing AIS data inconsistencies:</p>
<ul>
<li>Vessel showing "at anchor" status but SOG of 14 knots</li>
<li>AIS target with no corresponding radar echo at close range</li>
<li>Vessel with impossible position jump (teleportation error)</li>
<li>MMSI duplicate — two different vessels showing same MMSI</li>
</ul>
<p>For each scenario, students must identify the anomaly, assess the risk, and determine the appropriate action (radar verification, VHF contact, VTS notification).</p>
<h2>Final Assessment Preparation</h2>
<p>The AIS course assessment covers:</p>
<ul>
<li><strong>Written examination (1 hour):</strong> Regulatory requirements, AIS technology, data types, message types, and limitations</li>
<li><strong>Practical examination:</strong> ECDIS/simulator-based — data entry, target identification, anomaly detection</li>
<li>Minimum passing grade: 70%</li>
</ul>
<h3>Key Points to Remember</h3>
<ul>
<li>AIS operates on VHF channels 87B (161.975 MHz) and 88B (162.025 MHz)</li>
<li>Class A uses 12.5W; Class B uses 2W</li>
<li>Class A update rate: 2–10 seconds underway; 3 minutes at anchor</li>
<li>AIS does NOT replace radar — it complements it</li>
<li>Officer of the watch must keep voyage data (status, destination, draught, ETA) current</li>
<li>AIS should NOT be switched off except under genuine security threat — and must be logged</li>
<li>Cross-check AIS data with radar to verify accuracy</li>
<li>LRIT transmits every 6 hours globally via satellite — different from AIS</li>
</ul>',
'text', 8, 120, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id, 'Automatic Identification Systems (AIS) Assessment', 'Final assessment covering AIS technology, equipment classes, data types, message types, update rates, integration with ECDIS/radar, VTS applications, limitations, and regulatory requirements. Minimum 70% required to pass.', 70, 45, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- ============================================================
-- QUESTIONS
-- ============================================================

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'On which two VHF channels does AIS transmit and receive?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'What is the transmit power of a Class A AIS transponder under normal operating conditions?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'Which TDMA scheme is used by Class A AIS transponders for scheduled position reports?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'What is the position report update interval for a Class A transponder underway at 18 knots and not changing course?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'Which AIS message type carries static and voyage-related data for a Class A transponder?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'What is the AIS navigational status code for a vessel "Not Under Command" (NUC)?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'How often is static and voyage-related data (Type 5 message) transmitted by a Class A AIS transponder?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'Under SOLAS Chapter V Regulation 19, which of the following vessels is required to carry AIS?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'What is the data transmission rate used by AIS?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'What is the modulation scheme used by AIS for VHF transmissions?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'Which of the following is a correct statement about AIS Silent Mode?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'What is the typical ship-to-ship range of AIS under normal conditions?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'Which element of AIS data must be manually updated by the officer of the watch before departure?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'An AIS-SART, when activated, transmits using which AIS message type, and how often?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What is the key difference between AIS and LRIT regarding data access?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'Which of the following is NOT a dynamic data element transmitted by a Class A AIS transponder?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'What does it mean when an ECDIS displays a "lost AIS target"?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'An AIS target appears on ECDIS but has no corresponding radar echo at close range. What is the most likely explanation?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What is the position report update interval for a Class A AIS transponder while at anchor (0 knots)?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'Which AIS message type is used by shore-based AtoN (Aid to Navigation) stations such as buoys?', 'multiple_choice', 1, 20, NOW());

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
-- Q1: Channels 87B and 88B
(@q1, 'Channel 87B (161.975 MHz) and Channel 88B (162.025 MHz)', 1, 1),
(@q1, 'Channel 16 (156.800 MHz) and Channel 70 (156.525 MHz)', 0, 2),
(@q1, 'Channel 13 (156.650 MHz) and Channel 6 (156.300 MHz)', 0, 3),
(@q1, 'Channel 86 (161.925 MHz) and Channel 87 (161.975 MHz)', 0, 4),

-- Q2: 12.5 watts
(@q2, '12.5 watts', 1, 1),
(@q2, '25 watts', 0, 2),
(@q2, '2 watts', 0, 3),
(@q2, '5 watts', 0, 4),

-- Q3: SOTDMA
(@q3, 'SOTDMA (Self-Organizing Time Division Multiple Access)', 1, 1),
(@q3, 'RATDMA (Random Access TDMA)', 0, 2),
(@q3, 'FATDMA (Fixed Access TDMA)', 0, 3),
(@q3, 'CSTDMA (Carrier Sense TDMA)', 0, 4),

-- Q4: Every 6 seconds (14-23 knots, not changing course)
(@q4, 'Every 6 seconds', 1, 1),
(@q4, 'Every 10 seconds', 0, 2),
(@q4, 'Every 2 seconds', 0, 3),
(@q4, 'Every 30 seconds', 0, 4),

-- Q5: Type 5
(@q5, 'Message Type 5', 1, 1),
(@q5, 'Message Type 1', 0, 2),
(@q5, 'Message Type 3', 0, 3),
(@q5, 'Message Type 24', 0, 4),

-- Q6: Status code 2
(@q6, 'Status 2 — Not under command', 1, 1),
(@q6, 'Status 0 — Under way using engine', 0, 2),
(@q6, 'Status 15 — Not defined', 0, 3),
(@q6, 'Status 3 — Restricted in ability to manoeuvre', 0, 4),

-- Q7: Every 6 minutes
(@q7, 'Every 6 minutes, or immediately on request or when data is updated', 1, 1),
(@q7, 'Every 10 seconds', 0, 2),
(@q7, 'Every 2 minutes', 0, 3),
(@q7, 'Once per voyage, at departure only', 0, 4),

-- Q8: Cargo ship 300 GT+ on international voyage
(@q8, 'A cargo ship of 300 GT and above on an international voyage', 1, 1),
(@q8, 'A fishing vessel of any size operating within 12 nm of the coast', 0, 2),
(@q8, 'A leisure vessel of any size crossing international waters', 0, 3),
(@q8, 'A cargo ship of 500 GT and above operating domestically', 0, 4),

-- Q9: 9,600 bps
(@q9, '9,600 bits per second (9.6 kbps)', 1, 1),
(@q9, '1,200 bits per second', 0, 2),
(@q9, '19,200 bits per second', 0, 3),
(@q9, '4,800 bits per second', 0, 4),

-- Q10: GMSK
(@q10, 'GMSK (Gaussian Minimum Shift Keying)', 1, 1),
(@q10, 'FM (Frequency Modulation, F3E)', 0, 2),
(@q10, 'SSB (Single Sideband, J3E)', 0, 3),
(@q10, 'BPSK (Binary Phase Shift Keying)', 0, 4),

-- Q11: Only under genuine security threat, must be logged
(@q11, 'The master may switch AIS to silent mode only under a genuine security threat, and the action must be recorded in the radio log', 1, 1),
(@q11, 'AIS may be switched off whenever the master decides it is necessary for any reason', 0, 2),
(@q11, 'AIS should be switched to silent mode when in port to reduce channel congestion', 0, 3),
(@q11, 'AIS silent mode is routinely used in congested waters to prevent overloading VHF channels', 0, 4),

-- Q12: 20-30 nm ship-to-ship
(@q12, 'Approximately 20–30 nautical miles ship-to-ship under normal conditions', 1, 1),
(@q12, 'Approximately 5–10 nautical miles maximum', 0, 2),
(@q12, 'Approximately 100 nautical miles due to satellite relay', 0, 3),
(@q12, 'Unlimited range — AIS uses HF propagation', 0, 4),

-- Q13: Destination, ETA, draught, navigational status
(@q13, 'Destination, ETA, draught, navigational status, and persons on board', 1, 1),
(@q13, 'MMSI number and vessel name only', 0, 2),
(@q13, 'Position (latitude/longitude) and speed over ground', 0, 3),
(@q13, 'True heading and rate of turn from sensors', 0, 4),

-- Q14: Type 1 (or Type 14/21), every 1 min then 30 sec
(@q14, 'Broadcasts a Type 1 position report every 1 minute initially, increasing to every 30 seconds when a searching vessel is detected', 1, 1),
(@q14, 'Broadcasts a Type 5 static data message continuously on Channel 16', 0, 2),
(@q14, 'Transmits only when polled by a shore-based MRCC', 0, 3),
(@q14, 'Broadcasts a MAYDAY DSC alert on 2187.5 kHz and Ch. 70 simultaneously', 0, 4),

-- Q15: AIS is public, LRIT is controlled-access
(@q15, 'AIS data is publicly available to any receiver; LRIT data is restricted and accessible only to flag state, port state, and coastal state authorities', 1, 1),
(@q15, 'Both AIS and LRIT data are publicly available on the internet', 0, 2),
(@q15, 'LRIT data is public but AIS data is encrypted and restricted', 0, 3),
(@q15, 'AIS and LRIT both require a subscription to access data', 0, 4),

-- Q16: Vessel name is static, not dynamic
(@q16, 'Vessel name (this is static data, not dynamic)', 1, 1),
(@q16, 'Speed over ground (SOG)', 0, 2),
(@q16, 'Rate of turn (ROT)', 0, 3),
(@q16, 'Course over ground (COG)', 0, 4),

-- Q17: No update received within 6 times expected interval
(@q17, 'No update has been received from that vessel within 6 times the expected reporting interval', 1, 1),
(@q17, 'The vessel has sunk and is no longer transmitting', 0, 2),
(@q17, 'The vessel is too far away to display on the ECDIS range scale', 0, 3),
(@q17, 'The vessel has deliberately switched off its AIS transponder', 0, 4),

-- Q18: Ghost vessel / false AIS / vessel too small for radar echo
(@q18, 'The AIS data may be false (ghost target / spoofed signal), or the vessel may be very small and producing no radar echo', 1, 1),
(@q18, 'The radar has a technical failure — it is not detecting any targets', 0, 2),
(@q18, 'The vessel is traveling at high speed and has moved out of radar range since the AIS message was received', 0, 3),
(@q18, 'The ECDIS is correctly showing the vessel — radar cannot detect vessels with AIS', 0, 4),

-- Q19: Every 3 minutes at anchor
(@q19, 'Every 3 minutes', 1, 1),
(@q19, 'Every 10 seconds', 0, 2),
(@q19, 'Every 30 seconds', 0, 3),
(@q19, 'Every 6 minutes', 0, 4),

-- Q20: Type 21
(@q20, 'Message Type 21 — Aid-to-navigation report', 1, 1),
(@q20, 'Message Type 4 — Base station report', 0, 2),
(@q20, 'Message Type 14 — Safety broadcast message', 0, 3),
(@q20, 'Message Type 9 — SAR aircraft position report', 0, 4);

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
WHERE c.id = 179;

