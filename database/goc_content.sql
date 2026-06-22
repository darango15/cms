-- GOC - General Operator GMDSS Course
-- Course ID: 177 (existing draft, UPDATE)
-- STCW Regulation IV/2, Section A-IV/2, Table A-IV/2
-- Also ITU Radio Regulations Chapters VII and IX
-- Total: 108 hours (55 theoretical + 53 practical)

SET NAMES utf8mb4;
SET @course_id = 177;

UPDATE lms_courses SET
  course_code = 'GOC',
  title       = 'General Operator Certificate - GMDSS (GOC)',
  slug        = 'general-operator-certificate-gmdss',
  description = 'The General Operator\'s Certificate (GOC) is issued pursuant to the International Telecommunication Union (ITU) Radio Regulations and endorsed in accordance with STCW Regulation IV/2 and Section A-IV/2. This comprehensive 108-hour course covers all aspects of the Global Maritime Distress and Safety System (GMDSS), including regulatory framework, radio technology, VHF/MF/HF DSC, NBDP/Telex, Inmarsat satellite communications, EPIRB, SART, COSPAS-SARSAT, maritime safety information, AIS, SAR operations, and ship notification systems. Both theoretical and practical simulator training are included.',
  image       = 'https://pamel.edu.pa/uploads/goc/image1.jpeg',
  level       = 'advanced',
  status      = 'published',
  category_id = 6,
  pass_percentage = 70,
  is_free     = 0,
  price       = 0.00
WHERE id = 177;

-- Cleanup existing content
DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id);
DELETE FROM lms_quizzes WHERE course_id=@course_id;
DELETE FROM lms_lessons WHERE course_id=@course_id;

-- ============================================================
-- LESSONS (8 lessons = 108 hours total)
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(@course_id,
'Introduction, Regulatory Framework & Radio Station Identification',
'<h2>Introduction to GMDSS</h2>
<p>The Global Maritime Distress and Safety System (GMDSS) is an internationally agreed-upon set of safety procedures, types of equipment, and communication protocols used to increase safety and facilitate rescue operations in case of distress at sea. GMDSS was implemented through the International Maritime Organization (IMO) and became fully operational on February 1, 1999.</p>
<img src="https://pamel.edu.pa/uploads/goc/image1.jpeg" alt="GMDSS Overview" style="max-width:100%;">
<h3>The Nine GMDSS Functions</h3>
<ol>
<li>Transmission of ship-to-shore distress alerts by at least two separate and independent means</li>
<li>Reception of shore-to-ship distress alerts</li>
<li>Transmission and reception of ship-to-ship distress alerts</li>
<li>Transmission and reception of search and rescue coordinating communications</li>
<li>Transmission and reception of on-scene communications</li>
<li>Transmission and reception of SART (Search and Rescue Radar Transponder) signals</li>
<li>Transmission and reception of Maritime Safety Information (MSI)</li>
<li>Transmission and reception of general radiocommunications to and from shore-based systems</li>
<li>Transmission and reception of bridge-to-bridge communications</li>
</ol>
<h3>GMDSS Sea Areas</h3>
<img src="https://pamel.edu.pa/uploads/goc/image2.png" alt="GMDSS Sea Areas" style="max-width:100%;">
<ul>
<li><strong>Area A1:</strong> Within range of at least one VHF coast radio station (DSC coverage) — typically 20–50 nautical miles from shore.</li>
<li><strong>Area A2:</strong> Within range of at least one MF coast radio station (DSC coverage), excluding A1 — typically up to 400 nautical miles from shore.</li>
<li><strong>Area A3:</strong> Within coverage of an Inmarsat geostationary satellite (approximately 70°N to 70°S), excluding A1 and A2.</li>
<li><strong>Area A4:</strong> Any area outside A1, A2 and A3 — essentially the polar regions above 70° latitude.</li>
</ul>
<h3>GMDSS Equipment Requirements by Sea Area</h3>
<img src="https://pamel.edu.pa/uploads/goc/image3.jpeg" alt="GMDSS Equipment Table" style="max-width:100%;">
<p>All SOLAS vessels must carry equipment appropriate to the sea area(s) in which they operate. Each sea area requires progressively more communication capability, with Area A4 requiring the most comprehensive equipment suite including satellite EPIRBs, HF DSC, and NAVTEX receivers.</p>
<h2>Section 2: Statutory Framework</h2>
<img src="https://pamel.edu.pa/uploads/goc/image4.png" alt="Statutory Framework" style="max-width:100%;">
<h3>SOLAS (Safety of Life at Sea)</h3>
<p>SOLAS Chapter IV governs radiocommunication requirements for ships. The 1988 amendments introduced GMDSS. SOLAS applies to vessels of 300 GT and upward on international voyages, and all passenger ships. Key requirements include:</p>
<ul>
<li>Carriage of appropriate radio equipment for the sea area</li>
<li>Maintenance of a continuous radio watch</li>
<li>Qualified radio operators holding GOC or ROC certificates</li>
<li>Radio equipment maintained in working order through duplication, shore-based maintenance, or at-sea maintenance</li>
</ul>
<h3>ITU Radio Regulations</h3>
<p>The International Telecommunication Union (ITU) Radio Regulations govern the use of radio frequencies worldwide. Chapters VII and IX are particularly relevant to maritime communications, covering distress and safety frequencies, operational procedures, and the GMDSS framework. The ITU allocates frequency bands and establishes technical standards for maritime radio equipment.</p>
<img src="https://pamel.edu.pa/uploads/goc/image5.jpeg" alt="ITU Radio Regulations" style="max-width:100%;">
<h2>Section 3: Radio Station Identification</h2>
<h3>Maritime Mobile Service Identity (MMSI)</h3>
<p>MMSI is a nine-digit number used to uniquely identify a ship station, group of ships, or a coast station. The MMSI is used in DSC communications to identify calling and called stations. The format is:</p>
<ul>
<li><strong>Ship stations:</strong> MMMXXXXX (where MMM = MID — Maritime Identification Digit, country code)</li>
<li><strong>Coast stations:</strong> 00MMMXXXX</li>
<li><strong>Group calls:</strong> 0MMMXXXX</li>
<li><strong>Rescue Coordination Centers (RCC):</strong> Have assigned MMSIs</li>
<li><strong>VTS (Vessel Traffic Services):</strong> Shore-based MMSIs</li>
<li><strong>Navigation aids:</strong> Such as AIS-equipped lighthouses and buoys</li>
<li><strong>Aircraft:</strong> Emergency communications on 121.5 MHz</li>
<li><strong>Port stations:</strong> Assigned by national administrations</li>
<li><strong>Earth stations:</strong> Coast earth stations (CES) in the Inmarsat system have unique IDs</li>
</ul>
<h3>Call Signs</h3>
<p>Every maritime radio station is assigned a call sign by its national administration. Call signs typically consist of two letters (country prefix) followed by alphanumeric characters. They are used for voice communications and NBDP (telex) identification.</p>
<h2>Section 4: Publications</h2>
<p>GMDSS operators must be familiar with the following ITU publications:</p>
<ul>
<li><strong>ITU List IV:</strong> List of Coast Stations — provides frequencies, call signs, and services of all coast radio stations worldwide</li>
<li><strong>ITU List V:</strong> List of Ship Stations and Maritime Mobile Service Identity Assignments — identifies ship stations</li>
<li><strong>ITU Maritime Handbook:</strong> Contains operational procedures for maritime mobile and satellite services</li>
<li><strong>Admiralty List of Radio Signals (ALRS):</strong> Published by the UK Hydrographic Office; provides detailed operational information on coast radio stations, MSI broadcasts, NAVTEX schedules, Inmarsat, GMDSS, and more</li>
</ul>',
'text', 1, 840, 1),

(@course_id,
'Radio Technology Fundamentals',
'<h2>Section 5: Technical Aspects of GMDSS</h2>
<h3>5.1 Radio Wave Propagation</h3>
<img src="https://pamel.edu.pa/uploads/goc/image6.jpeg" alt="Radio Wave Propagation" style="max-width:100%;">
<p>Understanding how radio waves propagate is essential for GMDSS operators. The main propagation modes are:</p>
<ul>
<li><strong>Line-of-sight (direct wave):</strong> Used by VHF (156–174 MHz). Range limited to visual horizon, typically 20–40 nautical miles for ship-to-ship, more for ship-to-shore depending on antenna height.</li>
<li><strong>Ground wave:</strong> MF waves follow the curvature of the earth, providing reliable coverage up to 300–500 km. Used for 2182 kHz and DSC on 2187.5 kHz.</li>
<li><strong>Sky wave (HF):</strong> HF signals (3–30 MHz) are refracted by the ionosphere back to earth, allowing long-range communications (hundreds to thousands of miles). Range depends on frequency, time of day, solar activity, and ionospheric conditions.</li>
</ul>
<h3>Ionospheric Layers</h3>
<p>The ionosphere consists of ionized layers at different altitudes that refract HF radio waves:</p>
<ul>
<li><strong>D layer:</strong> 60–90 km altitude. Present during daylight only. Absorbs lower HF frequencies (below ~7 MHz). Disappears at night, allowing lower HF to travel farther.</li>
<li><strong>E layer:</strong> 90–120 km altitude. Present during daylight. Refracts lower HF frequencies. Can cause unexpected long-range propagation (E-sporadic).</li>
<li><strong>F1 layer:</strong> 120–200 km. Daytime only. Merges with F2 at night.</li>
<li><strong>F2 layer:</strong> 200–500 km. Present day and night. The primary layer for long-range HF communications. Height and density vary with solar activity and season.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/goc/image7.jpeg" alt="Ionospheric Layers" style="max-width:100%;">
<h3>Skip Zone</h3>
<p>A skip zone (dead zone) occurs when ground wave signal is too weak and sky wave signal overshoots. In the skip zone, no signal is received. This is an important practical consideration for MF/HF communications.</p>
<h3>5.2 Modulation Types</h3>
<img src="https://pamel.edu.pa/uploads/goc/image8.png" alt="Modulation Types" style="max-width:100%;">
<h4>Amplitude Modulation (AM)</h4>
<p>The amplitude of the carrier wave varies according to the information signal. AM is inefficient because it transmits the carrier and both sidebands. Double Sideband (DSB, A3E) transmits both sidebands plus carrier.</p>
<h4>Single Sideband (SSB)</h4>
<p>SSB suppresses the carrier and one sideband, transmitting only the information-bearing sideband. This is much more efficient and is the standard for maritime MF/HF voice communications:</p>
<ul>
<li><strong>J3E emission:</strong> Single sideband suppressed carrier — the ITU designation for SSB voice. Used on all MF/HF maritime radio voice channels.</li>
<li><strong>USB (Upper Sideband):</strong> Standard for HF maritime voice above 10 MHz</li>
<li><strong>LSB (Lower Sideband):</strong> Some older equipment uses LSB on MF</li>
</ul>
<h4>Frequency Modulation (FM)</h4>
<p>F3E emission — used for VHF maritime voice communications (156–174 MHz). FM provides better noise rejection than AM for local communications.</p>
<h4>NBDP/Telex Modulations</h4>
<ul>
<li><strong>J2B:</strong> SSB with digital information (NBDP/telex on HF)</li>
<li><strong>F1B:</strong> Frequency-shift keying for MF telex (2174.5 kHz)</li>
</ul>
<h3>5.3 Transmitter and Receiver Basics</h3>
<img src="https://pamel.edu.pa/uploads/goc/image9.jpeg" alt="Transmitter and Receiver" style="max-width:100%;">
<p>A maritime radio transceiver combines a transmitter and receiver:</p>
<ul>
<li><strong>Transmitter:</strong> Generates the carrier frequency, applies modulation, amplifies the signal to required power level</li>
<li><strong>ATU (Antenna Tuning Unit):</strong> Matches the antenna impedance to the transmitter for efficient power transfer — essential for MF/HF antennas that are not cut to resonant length</li>
<li><strong>Receiver:</strong> Converts incoming RF signals to audio. Uses superheterodyne design with IF amplification</li>
<li><strong>AGC (Automatic Gain Control):</strong> Maintains constant output level despite varying signal strength</li>
<li><strong>Squelch:</strong> Suppresses output when no signal is present, reducing background noise on VHF</li>
</ul>
<h3>5.4 Battery Systems</h3>
<img src="https://pamel.edu.pa/uploads/goc/image10.jpeg" alt="Battery Systems" style="max-width:100%;">
<p>SOLAS requires ships to maintain reserve power for radio equipment. Battery types used in GMDSS:</p>
<h4>Lead-Acid Batteries</h4>
<ul>
<li>Most common type for ship reserve power</li>
<li>Electrolyte: sulfuric acid solution (H₂SO₄)</li>
<li>Nominal cell voltage: 2.0V; typical battery: 12V or 24V</li>
<li>Specific gravity (SG) of fully charged cell: approximately 1.270–1.280</li>
<li>Maintenance: Check electrolyte level, top up with distilled water only; check terminals for corrosion</li>
<li><strong>Safety:</strong> Produces hydrogen gas during charging — ventilate area, no sparks or flames</li>
</ul>
<h4>Nickel-Cadmium (NiCd) Batteries</h4>
<ul>
<li>More robust than lead-acid; tolerates deep discharge and overcharging</li>
<li>Nominal cell voltage: 1.2V</li>
<li>Used in satellites (Inmarsat), EPIRBs, and SARTs</li>
<li>Memory effect: Capacity reduces if repeatedly partially discharged. Combat by full discharge cycles</li>
<li><strong>Safety:</strong> Contains cadmium — toxic, requires special disposal</li>
</ul>
<h4>Lithium Batteries</h4>
<ul>
<li>Primary (non-rechargeable) batteries used in EPIRBs (406 MHz)</li>
<li>Long shelf life (up to 5–10 years)</li>
<li>High energy density; lightweight</li>
<li><strong>Safety:</strong> Do not short circuit, do not incinerate — risk of fire and explosion</li>
</ul>
<h4>Primary Batteries (Zinc-Carbon / Alkaline)</h4>
<p>Used in portable equipment like hand-held VHF radios and SARTs. Not rechargeable. Must be replaced before expiration date.</p>
<h3>5.5 Antennas</h3>
<img src="https://pamel.edu.pa/uploads/goc/image11.jpeg" alt="Maritime Antennas" style="max-width:100%;">
<h4>VHF Antennas</h4>
<ul>
<li><strong>¼ wavelength whip:</strong> At 156 MHz, λ/4 ≈ 48 cm. Omnidirectional, vertical polarization. Requires a ground plane.</li>
<li><strong>½ wavelength dipole:</strong> Similar to ¼-wave but uses a balun; no ground plane needed. Common on smaller vessels.</li>
<li>VHF antennas should be mounted as high as possible to maximize line-of-sight range</li>
</ul>
<h4>MF/HF Antennas</h4>
<ul>
<li>Wire antennas are common — insulated from the ship\'s structure and connected via an ATU</li>
<li>The ATU tunes out reactance to present a resistive load to the transmitter</li>
<li>Insulator maintenance: inspect regularly for cracks or contamination that could cause leakage</li>
</ul>
<h4>Antenna Maintenance</h4>
<p>All antennas should be inspected regularly for physical damage, corrosion at connections, and proper insulation. Connections must be clean and tight. Coaxial cable must be properly weatherproofed.</p>
<h3>5.6 Digital Selective Calling (DSC) Basics</h3>
<img src="https://pamel.edu.pa/uploads/goc/image12.png" alt="DSC Controller" style="max-width:100%;">
<p>DSC is the digital format used in GMDSS for initiating distress, urgency, safety, and routine calls. A DSC controller is connected to the radio and transmits bursts of digital data on designated calling channels:</p>
<ul>
<li><strong>VHF Channel 70 (156.525 MHz):</strong> VHF DSC calling channel</li>
<li><strong>2187.5 kHz:</strong> MF DSC distress and safety</li>
<li><strong>4207.5, 6312.0, 8414.5, 12577.0, 16804.5 kHz:</strong> HF DSC distress and safety</li>
</ul>
<h4>Distress Alert Sequence</h4>
<ol>
<li>Operator activates distress button (hold for 5 seconds on most controllers)</li>
<li>DSC controller transmits distress alert including MMSI, nature of distress, position (from GPS), and time</li>
<li>Coast station or another ship acknowledges within 1–5 minutes (VHF), or up to 3.5 minutes (MF)</li>
<li>After acknowledgment, voice distress message transmitted on working channel (VHF Ch. 16 or 2182 kHz)</li>
</ol>
<h4>DSC Acknowledgment</h4>
<ul>
<li><strong>Ship receiving distress DSC alert:</strong> Set to Ch. 16/2182 kHz and listen. Only acknowledge if coast station has not acknowledged after appropriate wait time (A1/A2 areas — wait for coast station)</li>
<li>In HF, DSC distress may be received at many locations — assume coast stations have received; acknowledge only if no other response</li>
</ul>
<h3>5.7 Radio Telex (NBDP) Basics</h3>
<img src="https://pamel.edu.pa/uploads/goc/image13.png" alt="NBDP Telex" style="max-width:100%;">
<p>NBDP (Narrow Band Direct Printing) provides text communications via telex. The system uses radio telex terminals that route messages through a network, similar to email. Three modes of operation:</p>
<ul>
<li><strong>ARQ mode:</strong> Automatic Repeat reQuest — error-correcting communication between two specific stations. The receiver requests retransmission of incorrect characters.</li>
<li><strong>FEC mode (B-FEC):</strong> Forward Error Correction — broadcast mode for all stations. Characters transmitted twice; used for NAVTEX and distress traffic.</li>
<li><strong>SELFEC:</strong> Selective FEC — similar to B-FEC but directed to a specific station. Used when the ship\'s transmitter is unavailable.</li>
</ul>
<h3>5.8 Fault Location and GMDSS Service</h3>
<img src="https://pamel.edu.pa/uploads/goc/image15.png" alt="GMDSS Fault Location" style="max-width:100%;">
<p>GMDSS inefficiencies are frequently manifested as false alerts. Common causes include:</p>
<ul>
<li>Equipment malfunction or improper operation</li>
<li>Accidental activation of EPIRBs</li>
<li>Operator unfamiliarity with equipment</li>
<li>Poor equipment-operator interface design</li>
</ul>
<p>GMDSS maintenance can be achieved through: (1) duplication of equipment, (2) shore-based maintenance, or (3) at-sea electronic maintenance by a qualified GMDSS technician.</p>',
'text', 2, 600, 1),

(@course_id,
'VHF DSC, MF/HF Systems & Voice Distress Procedures',
'<h2>Section 6: GMDSS Components</h2>
<h3>6.1 General Safety Precautions</h3>
<img src="https://pamel.edu.pa/uploads/goc/image16.png" alt="GMDSS Safety" style="max-width:100%;">
<p>GMDSS was developed following IMO\'s 1988 SOLAS amendments based on modern maritime communications including satellites and digital technology. It applies to all passenger ships and cargo vessels of 300 GT and above on international voyages. Goal: guarantee vessels can communicate with an onshore station at any time, from any location, in distress or for safety.</p>
<h3>6.2 VHF DSC Radio</h3>
<img src="https://pamel.edu.pa/uploads/goc/image17.jpeg" alt="VHF DSC Radio" style="max-width:100%;">
<p>Marine VHF operates between 156.0 and 162.025 MHz. Key specifications:</p>
<ul>
<li>Transmission power: 1–25 watts, giving range up to 60 nm between tall structures, 5 nm between small boats at sea level</li>
<li>Modulation: F3E (FM), vertically polarized</li>
<li><strong>Channel 16 (156.800 MHz):</strong> International distress, safety, and calling channel — must be monitored at all times</li>
<li><strong>Channel 70 (156.525 MHz):</strong> DSC calling channel — all SOLAS vessels must keep continuous watch</li>
<li><strong>Channel 13 (156.650 MHz):</strong> Bridge-to-bridge navigation safety channel</li>
<li>Most transmission uses simplex (one direction at a time); some channels use duplex (simultaneous two-way)</li>
</ul>
<h4>VHF DSC Distress Procedure</h4>
<ol>
<li>Press and hold the RED distress button on the DSC controller for 5 seconds</li>
<li>The controller transmits on Ch. 70 with MMSI, nature of distress, position, and UTC time</li>
<li>After acknowledgment, switch to Ch. 16 and transmit MAYDAY voice call</li>
</ol>
<h3>6.3 MF/HF DSC Radio</h3>
<img src="https://pamel.edu.pa/uploads/goc/image18.png" alt="MF/HF DSC Radio" style="max-width:100%;">
<p>MF/HF radio (SSB) uses J3E (single sideband suppressed carrier) for voice. The MF/HF DSC controller sends digital calls on dedicated DSC frequencies to address specific radios by MMSI number.</p>
<h4>MF Frequency Bands (1605–3800 kHz, "t" band)</h4>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Band</th><th style="border:1px solid #ddd;padding:6px;">DSC Frequency</th><th style="border:1px solid #ddd;padding:6px;">RT Frequency</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 2 MHz</td><td style="border:1px solid #ddd;padding:6px;">2187.5 kHz</td><td style="border:1px solid #ddd;padding:6px;">2182.0 kHz</td></tr>
</table>
<h4>HF Frequency Bands (4000–27500 kHz, "u" band)</h4>
<table style="border-collapse:collapse; width:100%;">
<tr style="background:#f0f0f0;"><th style="border:1px solid #ddd;padding:6px;">Band</th><th style="border:1px solid #ddd;padding:6px;">DSC Frequency</th><th style="border:1px solid #ddd;padding:6px;">RT Frequency</th></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 4 MHz</td><td style="border:1px solid #ddd;padding:6px;">4207.5 kHz</td><td style="border:1px solid #ddd;padding:6px;">4125.0 kHz</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 6 MHz</td><td style="border:1px solid #ddd;padding:6px;">6312.0 kHz</td><td style="border:1px solid #ddd;padding:6px;">6215.0 kHz</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 8 MHz</td><td style="border:1px solid #ddd;padding:6px;">8414.5 kHz</td><td style="border:1px solid #ddd;padding:6px;">8291.0 kHz</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 12 MHz</td><td style="border:1px solid #ddd;padding:6px;">12577.0 kHz</td><td style="border:1px solid #ddd;padding:6px;">12290.0 kHz</td></tr>
<tr><td style="border:1px solid #ddd;padding:6px;">HF 16 MHz</td><td style="border:1px solid #ddd;padding:6px;">16804.5 kHz</td><td style="border:1px solid #ddd;padding:6px;">16420.0 kHz</td></tr>
</table>
<h3>6.4 VHF/MF/HF Voice Procedures</h3>
<img src="https://pamel.edu.pa/uploads/goc/image19.png" alt="Voice Procedures" style="max-width:100%;">
<h4>MAYDAY — Distress Signal</h4>
<p>A MAYDAY call indicates a vessel is in grave and imminent danger requiring immediate assistance. The complete MAYDAY sequence:</p>
<ol>
<li><strong>Alarm signal (Two-Tone):</strong> On 2182 kHz — alternating tones of 1300 Hz and 2200 Hz, each 250 ms, for 30–60 seconds. Purpose: activate automatic alarms and unmute muted receivers.</li>
<li><strong>Distress Call:</strong><br>
MAYDAY MAYDAY MAYDAY<br>
THIS IS [call sign × 3] [ship name × 3]</li>
<li><strong>Distress Message:</strong><br>
MAYDAY<br>
[Ship name/call sign]<br>
POSITION [latitude/longitude or relative to known point]<br>
NATURE OF DISTRESS<br>
ASSISTANCE REQUIRED<br>
[Number of persons on board, abandon ship intentions, etc.]<br>
OVER</li>
</ol>
<h4>MAYDAY RELAY</h4>
<p>A ship not in distress can relay a MAYDAY when: (1) the distress station cannot transmit, (2) the master believes more assistance is needed, or (3) the station cannot provide assistance. Format: MAYDAY RELAY × 3, THIS IS [own call sign × 3].</p>
<h4>PAN PAN — Urgency Signal</h4>
<p>Indicates important message concerning safety of ship or person. Format:</p>
<ul>
<li>PAN PAN × 3, ALL STATIONS × 3 or named station × 3</li>
<li>THIS IS [call sign × 3]</li>
<li>Message content (nature of urgency, position, assistance required)</li>
</ul>
<p>Medical advice requests use PAN PAN. The medical message must include: ship name/call sign/nationality, position, nearest port with ETA, patient details (name, age, sex, history), symptoms, medication on board. Prefix + for medical priority in NBDP.</p>
<h4>SECURITE — Safety Signal</h4>
<p>Indicates an important navigational or meteorological warning. Format: SECURITE × 3, ALL STATIONS × 3, THIS IS [call sign × 3], followed by the navigation warning on a working frequency. VHF Ch. 13 and Ch. 16 are used for SECURITE.</p>
<img src="https://pamel.edu.pa/uploads/goc/image20.jpeg" alt="Distress Communications" style="max-width:100%;">
<h4>Periods of Silence</h4>
<p>Transmission is prohibited for three minutes every hour (at H+00) and every half hour (at H+30) in the band 2173.5–2190.5 kHz. All operators must listen on 2182 kHz during these periods. DSC frequencies 2174.5 kHz and 2187.5 kHz are included in this prohibition.</p>
<h4>NBDP Distress Frequencies</h4>
<p>NBDP (telex) distress and safety traffic frequencies: 2174.5, 4177.5, 6268, 8376.5, 12520, 16695 kHz. Must use FEC mode for distress so all stations can receive. ARQ mode may be used between specific stations for subsequent communications.</p>',
'text', 3, 960, 1),

(@course_id,
'NBDP/Telex Operations & Inmarsat Satellite Systems',
'<h2>6.5 Radiotelex Operations (NBDP)</h2>
<img src="https://pamel.edu.pa/uploads/goc/image21.jpeg" alt="Radiotelex Terminal" style="max-width:100%;">
<p>NBDP (Narrow Band Direct Printing) uses telex procedures for MF and HF text communications. Messages are composed, stored, and transmitted using ITU International Telex 5-unit code (ITA2).</p>
<h3>Call Procedure to Coast Station</h3>
<ol>
<li>Select the appropriate HF channel using ITU List of Coast Stations</li>
<li>Enter the SELCALL number of the coast station (e.g., 3220 for UK)</li>
<li>Start call in NBDP ARQ mode</li>
<li>Receive station answerback (e.g., "Radio Portishead 3220 Auto G")</li>
<li>Send ship\'s answerback automatically (e.g., GBLWX 45656)</li>
<li>Receive GA+ (Go Ahead) invitation to proceed</li>
<li>Enter command code for required service</li>
</ol>
<h3>Key Command Codes</h3>
<ul>
<li><strong>DIRTLX [country code] [telex number]:</strong> Direct connection to telex subscriber</li>
<li><strong>MED:</strong> Urgent medical message follows (priority +)</li>
<li><strong>AMV:</strong> Message to be sent to AMVER</li>
<li><strong>BRK:</strong> Break — immediate disconnection required</li>
<li><strong>KKKK:</strong> Release network connection</li>
<li><strong>WX:</strong> Request immediate weather information</li>
<li><strong>HELP:</strong> List available facilities</li>
<li><strong>NAV:</strong> Navigation warning update required</li>
<li><strong>OBS:</strong> Meteorological observation message</li>
</ul>
<h3>Service Codes</h3>
<p>Key NBDP service response codes include: GA (Go Ahead), OCC (line busy), NC (no circuit), DER (damaged equipment — wait 5 min), ABS (absent/off), NA (no correspondence permitted).</p>
<img src="https://pamel.edu.pa/uploads/goc/image22.jpeg" alt="Telex Codes" style="max-width:100%;">
<h2>6.6 Inmarsat Satellite Communications</h2>
<img src="https://pamel.edu.pa/uploads/goc/image23.jpeg" alt="Inmarsat System" style="max-width:100%;">
<p>Inmarsat operates a network of geostationary satellites providing global mobile communications services for maritime, aviation, and land mobile users.</p>
<h3>Inmarsat Satellites</h3>
<p>Four satellites cover the world\'s ocean regions (approximately 70°N to 70°S):</p>
<ul>
<li><strong>Atlantic Ocean Region West (AOR-W):</strong> 54.0°W — covers the Americas and western Atlantic</li>
<li><strong>Atlantic Ocean Region East (AOR-E):</strong> 15.5°W — covers Europe, Africa, and eastern Atlantic</li>
<li><strong>Indian Ocean Region (IOR):</strong> 64.5°E — covers Indian Ocean, Middle East, East Africa</li>
<li><strong>Pacific Ocean Region (POR):</strong> 178.0°E — covers Pacific Ocean and Australasia</li>
</ul>
<p>Satellites are located 35,800 km (approximately 23,300 miles) above the equator. Radio waves take about 530 ms round-trip (two earth stations via satellite), causing a noticeable echo in telephone communications. Echo suppressors/cancellers are used to address this.</p>
<h3>Network Components</h3>
<ul>
<li><strong>Ship Earth Station (SES):</strong> The maritime satellite terminal on board ship</li>
<li><strong>Coast Earth Station (CES):</strong> Shore-based gateway connecting satellite network to terrestrial telecommunications</li>
<li><strong>Network Coordination Station (NCS):</strong> One CES per ocean region that coordinates channel assignments and signaling</li>
<li><strong>Operational Control Center (OCC):</strong> Inmarsat headquarters — coordinates all daily operations around the clock</li>
</ul>
<h3>Inmarsat Services</h3>
<img src="https://pamel.edu.pa/uploads/goc/image24.png" alt="Inmarsat Services" style="max-width:100%;">
<ul>
<li><strong>Inmarsat-A:</strong> Analog system providing voice, fax, telex, data, and slow-scan TV. Has distress alerting but NO EGC capability (separate EGC receiver required).</li>
<li><strong>Inmarsat-B:</strong> Digital version of A — more efficient. Will replace Inmarsat-A.</li>
<li><strong>Inmarsat-C:</strong> Lightweight digital store-and-forward telex and data. No voice. Has built-in EGC receiver. Low-power omni-directional antenna. Most practical for GMDSS.</li>
<li><strong>Inmarsat-M:</strong> Mobile digital — does NOT meet full GMDSS requirements (low-speed data only, no telex, low-quality voice).</li>
</ul>
<h3>Inmarsat-A SES Specifications</h3>
<ul>
<li>Directional dish antenna in radome — gyro-stabilized, automatically tracks satellite</li>
<li>Azimuth controlled by ship\'s gyrocompass</li>
<li>360° shadow-free view required (greater than 6° shadow in any azimuth is unacceptable)</li>
<li>Powered by three sources: main generator, emergency generator, and independent UPS</li>
</ul>
<h3>Inmarsat-C SES Specifications</h3>
<ul>
<li>Omni-directional antenna — no stabilization required, no gyrocompass input needed</li>
<li>Shadow sectors: objects within 3 feet causing >2° shadow will degrade performance</li>
<li>Compact and affordable — easier installation than Inmarsat-A</li>
<li>Has built-in EGC capability for receiving MSI broadcasts</li>
</ul>
<h3>Communications Priority</h3>
<p>Inmarsat system has four priority levels:</p>
<ol start="0">
<li><strong>Routine (0):</strong> Normal commercial communications</li>
<li><strong>Safety (1):</strong> Safety-related messages</li>
<li><strong>Urgency (2):</strong> PAN PAN messages</li>
<li><strong>Distress (3):</strong> MAYDAY — highest priority, will pre-empt routine calls</li>
</ol>
<h3>Distress Alert via Inmarsat-A</h3>
<p>Procedure for voice distress using Goonhilly CES:</p>
<ol>
<li>Select Call Type: Voice</li>
<li>Select CES ID (e.g., Goonhilly CES = 02)</li>
<li>Select Distress Priority (3)</li>
<li>Initiate channel assignment request</li>
<li>Ship connects automatically to associated MRCC (Falmouth, UK)</li>
<li>Transmit MAYDAY message: MAY DAY × 3, Name/Call Sign, Position, Nature of Distress, Assistance Required</li>
</ol>
<h3>Distress Alert via Inmarsat-C</h3>
<p>Simplest method — activate distress in two steps (two buttons). Automatic distress message contains: SES identity, nature of distress (selectable), and last GPS position, course and speed (updated every 4 hours or automatically if connected to ship\'s nav system). No CES designation required — system automatically routes to appropriate CES and MRCC.</p>
<img src="https://pamel.edu.pa/uploads/goc/image25.jpeg" alt="Inmarsat Distress" style="max-width:100%;">
<h3>Enhanced Group Calling (EGC) / SafetyNET</h3>
<p>EGC provides automated broadcast of Maritime Safety Information (MSI) to predetermined groups or geographic areas:</p>
<ul>
<li>Can address individual ships, fleets, flag states, or all ships in a geographic area</li>
<li>SafetyNET extends NAVTEX MSI coverage beyond coastal areas (globally via Inmarsat)</li>
<li>Authorized users: SAR authorities, NAVAREA coordinators, meteorological bureaus</li>
<li>All ships in Inmarsat coverage must carry EGC receivers (SOLAS requirement)</li>
<li>Inmarsat-C has built-in EGC; Inmarsat-A requires separate EGC receiver</li>
<li>EGC receiver can be programmed to filter MSI relevant to vessel\'s area; distress function unaffected</li>
<li>Each EGC message has unique ID — receiver suppresses duplicates</li>
</ul>',
'text', 4, 960, 1),

(@course_id,
'EPIRB, SART, COSPAS-SARSAT & Maritime Safety Information',
'<h2>6.7 COSPAS-SARSAT System</h2>
<img src="https://pamel.edu.pa/uploads/goc/image26.jpeg" alt="COSPAS-SARSAT" style="max-width:100%;">
<p>COSPAS-SARSAT is a satellite-aided search and rescue system that detects Emergency Position Indicating Radio Beacons (EPIRBs). The system uses four satellites in low polar orbit and the Doppler effect (frequency shift due to relative motion) to locate beacons.</p>
<h3>System Components</h3>
<ul>
<li><strong>Satellites (4 × LEO polar orbit):</strong> Detect EPIRB transmissions; relay signals to ground stations</li>
<li><strong>Local User Terminal (LUT):</strong> Ground station that processes satellite signals to determine beacon location. There are 20 LUTs worldwide.</li>
<li><strong>Mission Control Center (MCC):</strong> Receives location data from LUT; relays to appropriate RCC</li>
<li><strong>Rescue Coordination Center (RCC):</strong> Coordinates SAR response</li>
</ul>
<h3>Frequency Considerations</h3>
<ul>
<li><strong>121.5 MHz EPIRBs:</strong> NOT accepted as GMDSS EPIRBs — coverage limited (satellite must be in line-of-sight of both EPIRB and LUT), high false alarm rate (>99%). Used as homing signal only.</li>
<li><strong>406 MHz EPIRBs:</strong> Accepted for GMDSS. Stores data in satellite memory and broadcasts continuously (global coverage). Each EPIRB has unique ID allowing vessel identification. More accurate location (to within 2 km).</li>
<li><strong>VHF 156.525 MHz (Ch. 70) EPIRBs:</strong> Approved for Sea Area A1 only.</li>
</ul>
<h3>Potential 3-Hour Delay</h3>
<p>COSPAS-SARSAT satellites are in low polar orbit — a satellite must pass over the EPIRB location before detection occurs. This can take up to 3 hours (vs. near-instant for Inmarsat L-band EPIRBs using geostationary satellites).</p>
<h2>6.8 EPIRB — Emergency Position Indicating Radio Beacons</h2>
<img src="https://pamel.edu.pa/uploads/goc/image27.jpeg" alt="EPIRB Types" style="max-width:100%;">
<h3>EPIRB Types and Classes</h3>
<h4>Class A (121.5/243 MHz — Auto-activated)</h4>
<p>Float-free, automatically activates when immersed. Can be tested on-air for 3 audio sweeps (1 second) during the first 5 minutes of each hour. Signal detectable on FM 99.5 MHz.</p>
<h4>Class B (121.5/243 MHz — Manual activation)</h4>
<p>Manually activated. Same testing rules as Class A.</p>
<h4>Class C (VHF Ch. 15/16)</h4>
<p>For vessels not venturing far offshore. Transmits burst on Ch. 16 and homing signal on Ch. 15. NOT recognized outside the US. Cannot be manufactured after February 1995; to be phased out by 1999.</p>
<h4>Category I (406/121.5 MHz — Auto float-free)</h4>
<p>SOLAS required for cargo ships 300+ GT since 1 August 1993. Float-free, auto-activated when immersed. The only type that provides global coverage, vessel identification, and accurate location. Testing by self-test only — it is ILLEGAL to test a 406 MHz EPIRB on the air.</p>
<h4>Category II (406/121.5 MHz — Manual float-free)</h4>
<p>Manually activated version of Category I. Same capabilities. SOLAS compliant for certain vessel classes.</p>
<h4>L-Band (Inmarsat) EPIRB</h4>
<ul>
<li>Operates at 1.6 GHz using geostationary Inmarsat satellites</li>
<li>Alert received within approximately 2 minutes (vs. up to 3 hours for COSPAS-SARSAT LEO)</li>
<li>Transmits vessel identification and position</li>
<li>GMDSS approved</li>
</ul>
<h3>EPIRB Maintenance</h3>
<ul>
<li>Check water tightness periodically</li>
<li>Check battery expiration date — replace before expiry</li>
<li>Verify signal presence during test window</li>
<li>Replace batteries if unit activated in emergency or accidentally left on</li>
</ul>
<h2>6.9 SART — Search and Rescue Radar Transponder</h2>
<img src="https://pamel.edu.pa/uploads/goc/image28.png" alt="SART" style="max-width:100%;">
<h3>SART Operation</h3>
<p>The SART operates in the 9 GHz band (3 cm, X-band) and responds to standard ship or aircraft X-band radar interrogation by generating a series of blips on the radar screen along the line of bearing.</p>
<ul>
<li><strong>Range:</strong> Typically 5 nautical miles when interrogated by ship radar; up to 30 nm from aircraft</li>
<li><strong>Carriage requirement:</strong> Passenger ships: at least 1 SART on each side, accessible to survival craft. Cargo ships 500 GRT+: 2 SARTs (one each side). Cargo ships 300–500 GRT: 1 SART.</li>
<li><strong>Mounting height:</strong> At least 3 feet (1 meter) above water surface using mounting pole — do NOT confuse mounting pole with SART antenna</li>
<li><strong>Antenna:</strong> Omni-directional, horizontally polarized for performance under heavy swell</li>
<li><strong>Battery capacity:</strong> Minimum 96 hours (4 days) operation in standby + 8 hours active transmitting</li>
<li><strong>Indication:</strong> Visual and/or audible indication when being interrogated by radar</li>
<li><strong>Radar setting:</strong> Searching vessel should set radar to lowest range scale (e.g., 3 nm)</li>
</ul>
<h3>SART Radar Display Pattern</h3>
<p>When interrogated, SART creates 12 blips in a line extending approximately 20° on the radar display. The nearest blip indicates the SART position. As the searching vessel gets closer, the blips change from 12 dots to arcs (within ~1 nm) to concentric rings on contact.</p>
<h2>6.10 Maritime Safety Information (MSI)</h2>
<img src="https://pamel.edu.pa/uploads/goc/image29.png" alt="NAVTEX MSI" style="max-width:100%;">
<p>MSI provides crucial information about navigational hazards, meteorological warnings, and SAR coordination. GMDSS ships must receive MSI using NAVTEX and EGC (SafetyNET).</p>
<h3>NAVTEX</h3>
<p>NAVTEX is an automatic telex system transmitting MSI on:</p>
<ul>
<li><strong>518 kHz:</strong> International NAVTEX — primary frequency for most of the world</li>
<li><strong>490 kHz:</strong> National NAVTEX (available after full GMDSS implementation, February 1999)</li>
<li><strong>4209.5 kHz:</strong> Tropical NAVTEX — extended range for areas beyond 518 kHz coverage</li>
</ul>
<p>NAVTEX receivers automatically receive and print MSI broadcasts. Each message has a station ID letter and message type code, allowing selective reception of relevant categories (navigational warnings, weather forecasts, ice reports, SAR information, etc.).</p>
<h3>MSI HF Broadcast Frequencies</h3>
<p>HF NBDP MSI broadcasts use FEC mode on: 4120.0, 6314.0, 8416.5, 12579.0, 16806.5, 19680.5, 22376.0, 26100.5 kHz.</p>
<h3>GMDSS Distress Alerting Summary</h3>
<img src="https://pamel.edu.pa/uploads/goc/image30.png" alt="Distress Alerting Methods" style="max-width:100%;">
<p>Distress alerts can be transmitted via:</p>
<ul>
<li>406 MHz EPIRB (COSPAS-SARSAT)</li>
<li>L-Band EPIRB (Inmarsat)</li>
<li>Inmarsat-A (voice or telex)</li>
<li>Inmarsat-C (digital message)</li>
<li>VHF DSC on Ch. 70</li>
<li>MF DSC on 2187.5 kHz</li>
<li>HF DSC on appropriate HF distress frequency</li>
</ul>
<h3>DSC Alert Content</h3>
<p>The DSC distress alert signal must provide:</p>
<ul>
<li>Ship identification (9-digit MMSI number)</li>
<li>Ship position (latitude/longitude from GPS)</li>
<li>Mode for subsequent communication (normally J3E — SSB radiotelephone; or NBDP in FEC mode)</li>
<li>May include nature of distress (fire, flooding, explosion, sinking, collision, etc.)</li>
</ul>
<p>The distress alert shall only be sent on the authority of the Master. All stations receiving a DSC distress alert must immediately cease transmissions that could interfere with distress traffic and maintain a listening watch until the call is acknowledged.</p>',
'text', 5, 900, 1),

(@course_id,
'Portable VHF, AIS, SSAS & Other GMDSS Systems',
'<h2>6.11 Portable VHF Radios</h2>
<img src="https://pamel.edu.pa/uploads/goc/image31.png" alt="Portable VHF Radio" style="max-width:100%;">
<p>GMDSS requires waterproof portable VHF radios for survival craft communications. SOLAS carriage requirements:</p>
<ul>
<li><strong>Passenger ships and cargo ships 500 GRT+:</strong> Minimum 3 hand-held VHF radios per vessel</li>
<li><strong>Cargo ships 300–500 GRT:</strong> Minimum 2 hand-held VHF radios</li>
</ul>
<h3>Required Specifications (IMO Requirements)</h3>
<ul>
<li>Minimum power: 1 watt (if higher power available, 1-watt switch required)</li>
<li>Watertight to 1 meter depth for at least 5 minutes</li>
<li>Battery life: minimum 8 hours operation; 2-year shelf life</li>
<li>Must operate on VHF 156.8 MHz (Ch. 16 — distress and safety) and at least one other frequency</li>
<li>Must operate on at least 13 international maritime channels</li>
<li>Direct/independent access button to Channel 16</li>
<li>Compact and lightweight: not more than 600 g (including battery)</li>
<li>Controls designed for use with gloves</li>
<li>Battery indicator lamp</li>
<li>Frequency synthesizer for stability</li>
</ul>
<p>These radios provide two-way communications between survival craft and the ship, and between survival craft and rescue craft. They operate on 150 MHz/1 Watt with up to 13 international marine channels for mobile service.</p>
<h2>6.12 Aeronautical Portable VHF Radio (121.5 & 123.1 MHz)</h2>
<img src="https://pamel.edu.pa/uploads/goc/image32.png" alt="Aeronautical VHF" style="max-width:100%;">
<p>GMDSS operators must understand aeronautical emergency frequencies for coordination with aircraft during SAR operations:</p>
<ul>
<li><strong>121.5 MHz — International Air Distress (IAD) / Civil Guard:</strong> Monitored by most air traffic control, commercial aircraft, coast guards, and SAR aircraft. Used for distress communications between ships and searching aircraft.</li>
<li><strong>123.1 MHz:</strong> Secondary aeronautical communications frequency used in SAR coordination with helicopters and SAR aircraft</li>
<li><strong>243.0 MHz — Military Air Distress (MAD):</strong> Military guard frequency</li>
</ul>
<p>121.5 MHz is used in the UK by the Royal Air Force D&D cells for triangulation of distress positions. Both guard frequencies can be used by any aircraft in emergency and by maritime stations communicating with aircraft during SAR.</p>
<h2>7. Other Systems Used on Board</h2>
<h3>7.1 Ultra High Frequency (UHF) Devices</h3>
<img src="https://pamel.edu.pa/uploads/goc/image33.png" alt="UHF Devices" style="max-width:100%;">
<p>UHF (300 MHz – 3 GHz) devices are used for:</p>
<ul>
<li>Internal ship communications (portable UHF walkie-talkies)</li>
<li>Port communications</li>
<li>Satellite communications (Inmarsat uses L-band, 1.5–1.6 GHz)</li>
<li>GPS operates in the UHF range (L1: 1575.42 MHz, L2: 1227.60 MHz)</li>
</ul>
<p>UHF propagates primarily by line-of-sight; blocked by hills and large buildings. Transmission through building walls is high enough for indoor reception. Not subject to ionospheric propagation (unlike HF).</p>
<h3>7.2 Automatic Identification System (AIS)</h3>
<img src="https://pamel.edu.pa/uploads/goc/image34.gif" alt="AIS System" style="max-width:100%;">
<p>AIS is an automatic tracking system used by ships and VTS for identification and collision avoidance. Key features:</p>
<ul>
<li>Electronically exchanges data with nearby ships, AIS base stations, and satellites (S-AIS)</li>
<li>Operates on VHF Ch. 87B (161.975 MHz) and Ch. 88B (162.025 MHz) using TDMA technology</li>
<li>Information transmitted: MMSI, vessel name, position, course over ground, speed, heading, navigational status</li>
<li>Integrates VHF transceiver with GPS, gyrocompass, and other navigation sensors</li>
<li>Displayed on chart plotter or ECDIS in radar-like format</li>
</ul>
<h4>SOLAS Requirements</h4>
<p>AIS is mandatory on all ships of 300 GT and above on international voyages, all cargo ships of 500 GT and above, and all passenger ships regardless of size.</p>
<h4>AIS Update Rates</h4>
<ul>
<li>At anchor/mooring (0–3 knots): every 3 minutes</li>
<li>Underway (0–14 knots): every 10 seconds</li>
<li>Underway (14–23 knots): every 6 seconds</li>
<li>Underway (23+ knots): every 2 seconds</li>
</ul>
<h3>7.3 Ship Security Alert System (SSAS)</h3>
<img src="https://pamel.edu.pa/uploads/goc/image35.jpeg" alt="Ship Security Alert" style="max-width:100%;">
<p>SSAS is an IMO-mandated security system that transmits a covert alert when the ship is under threat of piracy or terrorism:</p>
<ul>
<li>Introduced by IMO in December 2002 under ISPS Code (SOLAS Regulation VI/6)</li>
<li>Activated by security personnel without alerting the attacker — COVERT operation</li>
<li>Alert sent at ROUTINE priority (to avoid alerting attackers)</li>
<li>Directed to the ship\'s flag state Administration, not just rescue services</li>
<li>Uses Inmarsat-C, mini-C, or D+ satellite systems for transmission</li>
<li>Can be routed to: flag state MRCC, national security organization, ship owner, or other designated third party</li>
<li>Can be delivered via fax, email, telex, GSM phone, or other Inmarsat terminals</li>
</ul>
<p>An SSAS beacon operates similarly to aircraft transponder emergency code 7700. When triggered, appropriate law-enforcement or military forces can be dispatched while the crew appears to operate normally.</p>',
'text', 6, 900, 1),

(@course_id,
'SAR Operations & Ship Notification Systems',
'<h2>8. Search and Rescue Operations</h2>
<h3>8.1 Role of the Maritime Rescue Coordination Center (MRCC)</h3>
<img src="https://pamel.edu.pa/uploads/goc/image36.png" alt="MRCC Operations" style="max-width:100%;">
<p>An RCC (Rescue Coordination Centre) is the primary SAR facility in each country, responsible for coordinating SAR operations within its designated Search and Rescue Region (SRR). SRRs are designated by IMO and ICAO.</p>
<h3>Types of SAR Coordination Centers</h3>
<ul>
<li><strong>RCC:</strong> Primary SAR facility — staffed by supervisory personnel, equipped for coordination and control</li>
<li><strong>JRCC (Joint RCC):</strong> Operated by multiple military/civilian services — combines maritime and aeronautical SAR</li>
<li><strong>MRSC (Maritime Rescue Sub-Centre):</strong> Subservient to RCC; dedicated to maritime SAR in a specific geographic area</li>
<li><strong>MRCC:</strong> Maritime Rescue Coordination Centre — manages maritime SAR operations</li>
</ul>
<p>Distress alerts through Inmarsat network are routed via Land Earth Stations (LES) or Shore Access Stations (SAS) to MRCCs worldwide. Each CES in the Inmarsat system has direct phone and telex connections to the associated MRCC.</p>
<h3>Selected MRCCs</h3>
<img src="https://pamel.edu.pa/uploads/goc/image37.png" alt="MRCC Locations" style="max-width:100%;">
<ul>
<li>MRCC Falmouth (UK) — AOR-E, AOR-W, IOR</li>
<li>MRCC Stavanger/JRCC (Norway) — AOR-E, AOR-W, IOR</li>
<li>RCC Australia/AMSA (Canberra) — POR, IOR</li>
<li>MRCC China (Beijing) — IOR, POR</li>
<li>JRCC Piracus (Greece) — AOR-E, IOR</li>
<li>MRCC Algeria — AOR-E</li>
<li>US Coast Guard Atlantic Area (Portsmouth, VA) — AOR-E, AOR-W</li>
<li>US Coast Guard Pacific Area (Alameda, CA) — POR</li>
</ul>
<h3>8.2 IAMSAR Manual</h3>
<img src="https://pamel.edu.pa/uploads/goc/image38.png" alt="IAMSAR Manual" style="max-width:100%;">
<p>The International Aeronautical and Maritime Search and Rescue (IAMSAR) Manual is published jointly by ICAO and IMO. It comprises three volumes:</p>
<ul>
<li><strong>Volume I — Organization and Management:</strong> Global SAR system concept; establishing national/regional SAR systems; cooperation between states. For national administrations.</li>
<li><strong>Volume II — Mission Co-ordination:</strong> Assists personnel who plan and coordinate SAR operations and exercises. For RCC/MRCC staff.</li>
<li><strong>Volume III — Mobile Facilities:</strong> Carried on board rescue units, aircraft, and vessels. Helps with search, rescue, on-scene coordinator function, and own emergency procedures. For ships and aircraft.</li>
</ul>
<p>Ships are required to carry Volume III of the IAMSAR Manual. The 2016 edition incorporates 2015 amendments, entering into force 1 July 2016.</p>
<h2>9. Ship Notification Systems</h2>
<h3>9.1 AMVER (Automated Mutual-Assistance Vessel Rescue)</h3>
<p>AMVER is operated by the US Coast Guard as an international maritime mutual assistance program. Merchant ships on offshore passages voluntarily report their movements to the AMVER Center in New York, which maintains dead-reckoning positions.</p>
<h4>Five Types of AMVER Reports</h4>
<ol>
<li><strong>Sailing Plan (SP):</strong> Sent at departure — basic voyage information</li>
<li><strong>Position Report (PR):</strong> Periodic updates (at least every 24 hours)</li>
<li><strong>Deviation Report (DR):</strong> When course changes significantly</li>
<li><strong>Arrival Report:</strong> Upon arrival at destination</li>
<li><strong>Departure Report:</strong> Can be combined with Sailing Plan</li>
</ol>
<h4>SURPIC (Surface Picture)</h4>
<p>AMVER can provide RCCs with a Surface Picture showing ships within a specified area. Types:</p>
<ul>
<li><strong>Radius SURPIC:</strong> All ships within a specified nautical mile radius of a position</li>
<li><strong>Area SURPIC:</strong> Ships within a rectangular geographic area</li>
<li><strong>Trackline SURPIC:</strong> Ships within a specified distance of a trackline (used for aircraft emergency planning)</li>
</ul>
<p>AMVER messages are free of charge when sent through designated stations. Benefits: improved emergency response, reduced unnecessary diversions of vessels.</p>
<h3>9.2 JASREP (Japan Ship Reporting System)</h3>
<p>JASREP is operated by the Japan Coast Guard (JCG). The system tracks participating vessels and enables prompt SAR response when a vessel fails to report. Four report types:</p>
<ul>
<li><strong>[SP] Sailing Plan:</strong> Initial report when participating; sent at departure or area entry</li>
<li><strong>[PR] Position Report:</strong> First report within 24 hours of departure; subsequently every 24 hours</li>
<li><strong>[DR] Deviation Report:</strong> When position deviates 25+ miles from original track, or port of destination changes</li>
<li><strong>[FR] Final Report:</strong> Prior to or on arrival at port, or when departing the service area</li>
</ul>
<h3>9.3 MASTREP (Modernised Australian Ship Tracking and Reporting System)</h3>
<p>MASTREP is operated by AMSA (Australian Maritime Safety Authority) through the Australian SAR Centre in Canberra. Key features:</p>
<ul>
<li>Covers the Australian Search and Rescue Region (Australian SRR)</li>
<li>Mandatory for foreign vessels arriving at Australian ports and regulated Australian vessels</li>
<li>Uses AIS technology (per SOLAS Chapter V, Regulation 19.2.4) — position data updated every 5 minutes to 5 hours</li>
<li>Passive system — no shore-to-vessel communications required</li>
<li>Enables selection of closest vessels for SAR incident response</li>
</ul>
<h3>9.4 LRIT (Long-Range Identification and Tracking)</h3>
<p>LRIT provides global identification and tracking of ships. Established under SOLAS Regulation V/19-1:</p>
<ul>
<li>All SOLAS vessels must transmit LRIT information every 6 hours</li>
<li>System components: shipborne LRIT transmitting equipment, Communication Service Provider, Application Service Provider, LRIT Data Centres, LRIT Data Distribution Plan, International LRIT Data Exchange</li>
<li>Information available to Contracting Governments and SAR services through National, Regional, and Cooperative LRIT Data Centres</li>
<li>Each Administration provides the selected LRIT Data Centre with a list of ships entitled to fly its flag</li>
<li>LRIT Coordinator (acting for all SOLAS Contracting Governments) reviews/audits system performance</li>
</ul>',
'text', 7, 840, 1),

(@course_id,
'Operating Procedures, Practical Skills & Final Assessment',
'<h2>10. Various Skills and Operating Procedures</h2>
<h3>10.1 English for Maritime Communications</h3>
<p>All GMDSS GOC holders must have advanced English language communication skills. The IMO Standard Marine Communication Phrases (SMCP), adopted by IMO Assembly Resolution A.918(22) in November 2001, provides the standardized safety language for maritime radio communications.</p>
<h4>IMO SMCP Key Points</h4>
<ul>
<li>Replaces the Standard Marine Navigational Vocabulary (SMNV) from 1977/1985</li>
<li>Covers ship-to-shore, shore-to-ship, ship-to-ship, and on-board communications</li>
<li>Includes routine communication (berthing, port operations) AND emergency communications</li>
<li>Built on simplified maritime English for barrier-free communication</li>
<li>Required under STCW for certification of navigation watch officers on ships 500 GT+</li>
</ul>
<h4>Key Distress Phrases</h4>
<ul>
<li>MAYDAY — used for life-threatening emergencies only</li>
<li>PAN PAN — urgent safety messages (person overboard, medical emergency)</li>
<li>SECURITE — navigational or meteorological warnings</li>
<li>All communications should use phonetic alphabet where clarity requires it (Alpha, Bravo, Charlie, etc.)</li>
</ul>
<h3>10.2 Traffic Loading Procedures</h3>
<p>Every SOLAS ship at sea must maintain continuous radio watch:</p>
<ul>
<li><strong>VHF DSC Channel 70:</strong> Always monitored</li>
<li><strong>MF DSC 2187.5 kHz:</strong> If fitted with MF installation</li>
<li><strong>MF/HF DSC:</strong> 2187.5 kHz and 8414.5 kHz, plus at least one of 4207.5, 6312.0, 12577.0, or 16804.5 kHz (for ships with MF/HF) — may use scanning receiver</li>
<li><strong>Inmarsat:</strong> Shore-to-ship distress alerts via ship earth station (if fitted)</li>
<li><strong>MSI broadcasts:</strong> On appropriate frequencies for the sea area</li>
</ul>
<h3>Radio Equipment Maintenance Requirements</h3>
<p>SOLAS requires radio equipment to meet functional requirements through one or more of:</p>
<ul>
<li><strong>Duplication of equipment:</strong> Carrying a second independent set</li>
<li><strong>Shore-based maintenance:</strong> Regular servicing by qualified technicians at port</li>
<li><strong>At-sea electronic maintenance:</strong> On-board maintenance by a qualified GMDSS radio maintainer</li>
</ul>
<p>For Sea Areas A1 and A2: any one of the above methods. For Sea Areas A3 and A4: a combination of at least two methods. Equipment must be designed for easy main unit replacement without major recalibration.</p>
<h3>10.3 Practical Simulator Training</h3>
<p>The GOC course requires extensive practical simulator training totaling 53 hours. Simulator sessions cover:</p>
<ul>
<li>VHF DSC distress alert transmission and acknowledgment</li>
<li>MF/HF DSC distress, urgency, and safety calls</li>
<li>Inmarsat-A and Inmarsat-C distress alert procedures</li>
<li>NBDP/Telex calls to coast stations — full procedure practice</li>
<li>MAYDAY, PAN PAN, and SECURITE voice procedures on VHF and MF/HF</li>
<li>EPIRB activation and registration</li>
<li>SART deployment and radar identification</li>
<li>MSI reception via NAVTEX and EGC</li>
<li>AIS operation and monitoring</li>
<li>AMVER reporting procedures</li>
<li>Log keeping and record maintenance</li>
<li>Fault identification and reporting procedures</li>
</ul>
<h3>Final Assessment</h3>
<p>The GOC assessment consists of:</p>
<ul>
<li><strong>Written examination (2 hours):</strong> Covers regulatory framework, technical knowledge, operational procedures, and GMDSS system components</li>
<li><strong>Practical examination (3 hours):</strong> Simulator-based assessment of distress procedures, equipment operation, and emergency communications</li>
<li>Minimum passing grade: 70%</li>
<li>Successful candidates receive the General Operator\'s Certificate endorsed as per STCW Regulation IV/2</li>
</ul>
<h3>Certificate Requirements</h3>
<p>The General Operator\'s Certificate (GOC) is:</p>
<ul>
<li>Required for radio operators on all SOLAS ships in Sea Areas A1, A2, A3, and A4</li>
<li>Issued by the national maritime or telecommunications administration</li>
<li>Valid for 5 years; renewal requires revalidation examination</li>
<li>Recognized internationally under the ITU Radio Regulations and STCW Convention</li>
<li>The highest level GMDSS radio operator certificate (above ROC — Restricted Operator\'s Certificate)</li>
</ul>',
'text', 8, 480, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id, 'General Operator GMDSS (GOC) Assessment', 'Final assessment covering GMDSS regulatory framework, radio technology, VHF/MF/HF DSC, Inmarsat, EPIRB, SART, COSPAS-SARSAT, SAR operations, and operating procedures. Minimum 70% required to pass.', 70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- ============================================================
-- QUESTIONS
-- ============================================================

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'How many functional requirements must the Global Maritime Distress and Safety System (GMDSS) fulfill?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'Which GMDSS sea area is defined as within range of at least one MF coast radio station providing continuous DSC alerting, excluding Sea Area A1?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'What is the ITU emission designator for Single Sideband Suppressed Carrier voice, which is the standard for MF/HF maritime radio communications?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'What is the VHF channel designated exclusively for Digital Selective Calling (DSC) distress and safety calling under GMDSS?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What is the MF DSC frequency designated for distress and safety calling under GMDSS?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'Which ionospheric layer is primarily responsible for long-distance HF communications and is present both day and night?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'What does MAYDAY RELAY indicate in radiotelephone communications?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'What is the Inmarsat service that provides store-and-forward telex and data communications with a built-in EGC receiver, but no voice capability?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'How far above the equator are geostationary Inmarsat satellites located?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'What type of EPIRB is required on SOLAS cargo ships of 300 GT and above since 1 August 1993?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'In the COSPAS-SARSAT system, what is the ground station that processes satellite signals to determine the beacon\'s location called?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'What is the minimum height above water at which a SART must be mounted to achieve the specified performance?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'What is the ITU primary international NAVTEX frequency used for MSI broadcasts?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'Which NBDP mode is used for distress traffic so that ALL stations can receive the message?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What is the minimum number of portable waterproof VHF radios required on a passenger ship under GMDSS?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'What signal precedes a GMDSS voice distress call on 2182 kHz whenever possible?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'What ship notification system, operated by the US Coast Guard, provides voluntary mutual-assistance vessel rescue information to RCCs worldwide?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'Which AIS channels are used for automatic identification system transmissions?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What is the communication priority level for Inmarsat distress calls, and what happens when all channels are busy?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'What is the required battery capacity for a Search and Rescue Radar Transponder (SART)?', 'multiple_choice', 1, 20, NOW());

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
-- Q1: 9 GMDSS functions
(@q1, '9 functions', 1, 1),
(@q1, '5 functions', 0, 2),
(@q1, '7 functions', 0, 3),
(@q1, '12 functions', 0, 4),

-- Q2: Sea Area A2
(@q2, 'Sea Area A2', 1, 1),
(@q2, 'Sea Area A1', 0, 2),
(@q2, 'Sea Area A3', 0, 3),
(@q2, 'Sea Area A4', 0, 4),

-- Q3: J3E
(@q3, 'J3E', 1, 1),
(@q3, 'A3E', 0, 2),
(@q3, 'F3E', 0, 3),
(@q3, 'H3E', 0, 4),

-- Q4: Channel 70
(@q4, 'Channel 70 (156.525 MHz)', 1, 1),
(@q4, 'Channel 16 (156.800 MHz)', 0, 2),
(@q4, 'Channel 13 (156.650 MHz)', 0, 3),
(@q4, 'Channel 6 (156.300 MHz)', 0, 4),

-- Q5: 2187.5 kHz
(@q5, '2187.5 kHz', 1, 1),
(@q5, '2182.0 kHz', 0, 2),
(@q5, '2174.5 kHz', 0, 3),
(@q5, '2177.0 kHz', 0, 4),

-- Q6: F2 layer
(@q6, 'F2 layer (200–500 km altitude, present day and night)', 1, 1),
(@q6, 'D layer (60–90 km altitude, present during daylight only)', 0, 2),
(@q6, 'E layer (90–120 km altitude, daytime only)', 0, 3),
(@q6, 'F1 layer (120–200 km altitude, daytime only)', 0, 4),

-- Q7: MAYDAY RELAY
(@q7, 'A station not in distress relaying a distress alert on behalf of another station', 1, 1),
(@q7, 'The station in distress repeating its MAYDAY call', 0, 2),
(@q7, 'A coast station acknowledging a MAYDAY call', 0, 3),
(@q7, 'A MAYDAY call sent on a relay frequency instead of the distress frequency', 0, 4),

-- Q8: Inmarsat-C
(@q8, 'Inmarsat-C', 1, 1),
(@q8, 'Inmarsat-A', 0, 2),
(@q8, 'Inmarsat-B', 0, 3),
(@q8, 'Inmarsat-M', 0, 4),

-- Q9: 35,800 km
(@q9, '35,800 km (approximately 23,300 miles)', 1, 1),
(@q9, '800 km above the equator', 0, 2),
(@q9, '22,000 km above the equator', 0, 3),
(@q9, '42,000 km above the equator', 0, 4),

-- Q10: Category I 406/121.5 MHz float-free
(@q10, 'Category I (406/121.5 MHz) float-free, automatically activated', 1, 1),
(@q10, 'Class A (121.5/243 MHz) auto-activated', 0, 2),
(@q10, 'Class C (VHF Ch. 15/16) manually activated', 0, 3),
(@q10, 'L-Band (Inmarsat) EPIRB', 0, 4),

-- Q11: LUT (Local User Terminal)
(@q11, 'Local User Terminal (LUT)', 1, 1),
(@q11, 'Mission Control Center (MCC)', 0, 2),
(@q11, 'Rescue Coordination Center (RCC)', 0, 3),
(@q11, 'Coast Earth Station (CES)', 0, 4),

-- Q12: 3 feet (1 meter)
(@q12, 'At least 3 feet (approximately 1 meter) above the water surface', 1, 1),
(@q12, 'At least 10 feet (3 meters) above the water surface', 0, 2),
(@q12, 'At the ship\'s rail level, with no minimum height', 0, 3),
(@q12, 'At least 6 feet (2 meters) above the water surface', 0, 4),

-- Q13: 518 kHz
(@q13, '518 kHz', 1, 1),
(@q13, '490 kHz', 0, 2),
(@q13, '4209.5 kHz', 0, 3),
(@q13, '2182 kHz', 0, 4),

-- Q14: FEC mode
(@q14, 'FEC (Forward Error Correction) mode', 1, 1),
(@q14, 'ARQ (Automatic Repeat Request) mode', 0, 2),
(@q14, 'SELFEC (Selective FEC) mode', 0, 3),
(@q14, 'SITOR (Simplex Telex over Radio) mode', 0, 4),

-- Q15: 3 portable VHF radios minimum
(@q15, '3 waterproof portable VHF radios (minimum)', 1, 1),
(@q15, '1 waterproof portable VHF radio (minimum)', 0, 2),
(@q15, '2 waterproof portable VHF radios (minimum)', 0, 3),
(@q15, '5 waterproof portable VHF radios (minimum)', 0, 4),

-- Q16: Two-Tone Alarm signal
(@q16, 'The Two-Tone Alarm signal (alternating 1300 Hz and 2200 Hz tones for 30–60 seconds)', 1, 1),
(@q16, 'The DSC distress alert on 2187.5 kHz', 0, 2),
(@q16, 'A test transmission on the working frequency', 0, 3),
(@q16, 'The ship\'s emergency position report via INMARSAT', 0, 4),

-- Q17: AMVER
(@q17, 'AMVER (Automated Mutual-Assistance Vessel Rescue) — operated by the US Coast Guard', 1, 1),
(@q17, 'JASREP — operated by the Japan Coast Guard', 0, 2),
(@q17, 'MASTREP — operated by the Australian Maritime Safety Authority', 0, 3),
(@q17, 'LRIT — Long-Range Identification and Tracking system', 0, 4),

-- Q18: VHF Ch. 87B and 88B
(@q18, 'VHF Channel 87B (161.975 MHz) and Channel 88B (162.025 MHz) using TDMA', 1, 1),
(@q18, 'VHF Channel 16 (156.800 MHz) and Channel 70 (156.525 MHz)', 0, 2),
(@q18, 'VHF Channel 13 (156.650 MHz) and Channel 15 (156.750 MHz)', 0, 3),
(@q18, 'UHF frequencies at 400–500 MHz', 0, 4),

-- Q19: Priority 3 (Distress), pre-empts other calls
(@q19, 'Priority 3 (Distress) — the call will pre-empt a routine call and a channel will be provided immediately', 1, 1),
(@q19, 'Priority 1 (Safety) — the operator must wait until a channel becomes free', 0, 2),
(@q19, 'Priority 2 (Urgency) — the call is queued and sent when the next channel is available', 0, 3),
(@q19, 'Priority 0 (Routine) — distress calls share channels with commercial traffic', 0, 4),

-- Q20: 96 hours standby
(@q20, '96 hours (4 days) in standby, with at least 8 hours of active transmission capability', 1, 1),
(@q20, '24 hours (1 day) in standby mode', 0, 2),
(@q20, '48 hours (2 days) continuous operation', 0, 3),
(@q20, '72 hours (3 days) in standby mode', 0, 4);

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
WHERE c.id = 177;
