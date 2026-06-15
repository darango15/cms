-- ATOI Course Content: 19 Lessons + Quiz + 20 Questions
-- Course ID: 154  |  STCW Regulation V/1-1, paragraph 4.3, Table A-V/1-1-2

UPDATE lms_courses SET course_code='ATOI' WHERE id=154;

-- ═══════════════════════════════════════════════════════════
-- LESSONS (19 chapters, 62 hours total)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(154, 'Chapter 1: Knowledge of Oil Tanker Design, Systems and Equipment',
'<h2>1. Knowledge of Oil Tanker Design, Systems and Equipment</h2>
<h3>1.1 General Arrangement and Construction</h3>
<p>An oil tanker is a ship designed for the bulk transport of oil or its petroleum products. There are two basic types: <strong>crude tankers</strong>, which carry large quantities of unrefined crude oil from extraction points to refineries, and <strong>product tankers</strong>, which carry refined products from refineries to consuming markets.</p>
<p>The cargo space is divided into three sections athwart the ship by two longitudinal bulkheads, and into individual tanks by transverse bulkheads. The maximum length of an oil tank is 20%L (where L = vessel length). If a tank exceeds 10%L or 15 m, at least one wash bulkhead is required. Tanks are numbered from forward, each with port, center, and starboard compartments.</p>
<p>Tanker size classifications:</p>
<ul>
<li><strong>General Purpose:</strong> 6,000–25,000 DWT</li>
<li><strong>Medium Range (MR):</strong> 25,000–45,000 DWT</li>
<li><strong>Large Range 1 (LR1):</strong> 45,000–80,000 DWT</li>
<li><strong>Large Range 2 (LR2):</strong> 80,000–160,000 DWT</li>
<li><strong>VLCC (Very Large Crude Carrier):</strong> 160,000–300,000 DWT</li>
<li><strong>ULCC (Ultra Large Crude Carrier):</strong> over 300,000 DWT</li>
</ul>
<h3>1.2 Pumping Arrangement and Equipment</h3>
<p>Cargo pumps are the heart of tanker operations. <strong>Centrifugal pumps</strong> are most common for main cargo transfer. <strong>Reciprocating pumps (deepwell)</strong> are submerged inside cargo tanks, driven by hydraulic or electric motors located above deck — eliminating shaft seals and reducing explosion risk. <strong>Screw pumps</strong> handle high-viscosity cargoes. <strong>Eductors</strong> use motive fluid to strip tanks after main pumps. Pump rooms must be ventilated continuously to prevent accumulation of flammable vapors.</p>
<h3>1.3 Tank Arrangement, Pipeline System and Tank Venting Arrangement</h3>
<p>The pipeline system provides flexibility for loading and discharging different grades simultaneously. Segregated pipelines prevent cargo contamination. Tank venting systems control vapor pressure during loading (vapors must be safely released or recovered). <strong>P/V (Pressure/Vacuum) valves</strong> protect tanks from overpressure or vacuum collapse during cargo operations and temperature changes. Vent outlets must be located where vapors disperse safely.</p>
<h3>1.4 Gauging Systems and Alarms</h3>
<p>Accurate cargo measurement is critical for safety and commercial accuracy. <strong>Closed gauging systems</strong> (required for high-vapor-pressure cargoes) measure without opening the tank — ultrasonic, radar (microwave), or float/tape systems. <strong>Restricted gauging</strong> uses a small opening with a vapor-tight device. High-level alarms and independent overfill alarms (per SOLAS) provide two stages of protection against tank overflow.</p>
<h3>1.5 Cargo Heating Systems</h3>
<p>Heavy fuel oils and some crude oils have high pour points requiring heating to remain pumpable. Heating coils (steam or thermal oil) inside tanks maintain cargo temperature. <strong>Steam heating</strong> is most common — steam enters coils at one end, condensate exits at the other. Temperature must be controlled to prevent excessive evaporation of volatile fractions or cargo degradation. Heating is recorded in the Deck Log.</p>
<h3>1.6 Tank Cleaning, Gas-Freeing and Inerting Systems</h3>
<p><strong>Tank cleaning machines</strong> (fixed or portable) use high-pressure water jets to remove cargo residues. <strong>Crude Oil Washing (COW)</strong> uses crude oil itself as the cleaning medium during discharge. Gas-freeing uses forced ventilation to remove hydrocarbon vapors after cleaning, bringing the atmosphere to a safe level (O₂ ≥ 20.8%, HC < 1% LEL) for entry or hot work. The Inert Gas System (IGS) maintains a non-explosive atmosphere in cargo tanks during all operations.</p>
<h3>1.7 Ballast System</h3>
<p><strong>Segregated Ballast Tanks (SBT)</strong> are permanently dedicated ballast tanks, never connected to cargo or fuel oil systems — required by MARPOL for tankers over 20,000 DWT (crude) or 30,000 DWT (product). <strong>Clean Ballast Tanks (CBT)</strong> are cargo tanks designated for ballast, cleaned to a standard where discharge does not cause visible surface pollution. Ballast pumps and pipelines are separate from cargo systems on SBT vessels.</p>
<h3>1.8 Cargo Area Venting and Accommodation Ventilation</h3>
<p>Cargo area ventilation removes hydrocarbon vapors from the deck area. Accommodation ventilation intakes must be located away from cargo areas and positioned upwind (forward) to prevent ingress of cargo vapors. Intakes must be closeable in emergencies. Forced ventilation of the pump room (minimum 20 air changes per hour) prevents dangerous vapor accumulation.</p>
<h3>1.9 Slop Arrangements</h3>
<p>Slop tanks receive tank washing water, dirty ballast, and cargo residues. The <strong>Load on Top (LOT)</strong> procedure retains oily residues in slop tanks, separates water from oil, and loads new cargo on top of the retained oil — preventing sea discharge. At least two slop tanks are required on crude oil tankers. Slop tank contents are processed through the Oil Discharge Monitoring Equipment (ODME) before any overboard discharge.</p>
<h3>1.10 Vapour Recovery Systems</h3>
<p>Vapour Recovery Systems (VRS) capture cargo vapors displaced from tanks during loading instead of releasing them to atmosphere. Required in many ports for environmental protection. The vapor return line connects the ship to shore-based vapor recovery units. Prevents hydrocarbon emissions (VOCs) and reduces explosion risk near the vessel.</p>
<h3>1.11 Cargo-Related Electrical and Electronic Control System</h3>
<p>Cargo control rooms use PLCs and SCADA systems to monitor and control all cargo operations: valve positions, pump status, tank levels, temperatures, pressures, and alarm states. Electrical equipment in hazardous zones must be certified <strong>intrinsically safe</strong> or <strong>explosion-proof</strong> (Ex-d or Ex-ia certified). The cargo control system may include automated loading/discharge sequencing and stability calculation.</p>
<h3>1.12 Environmental Protection Equipment — Oil Discharge Monitoring Equipment (ODME)</h3>
<p>ODME continuously monitors the oil content of overboard discharge from the machinery space bilges during ballast voyages. When the oil content exceeds 15 ppm, it automatically stops the overboard valve. Required by MARPOL Annex I on all tankers over 150 GT. Readings are recorded automatically on a printer roll for port state inspection.</p>
<h3>1.13 Tank Coating</h3>
<p>Tank coatings protect the tank steel from corrosion and cargo contamination. <strong>Epoxy coatings</strong> resist a wide range of cargoes and are most common on product tankers. <strong>Zinc silicate coatings</strong> are used where zinc is compatible with cargo. Coating compatibility with intended cargo must be checked before loading. Damaged coatings must be repaired in dry dock to prevent accelerated corrosion and cargo contamination.</p>
<h3>1.14 Tank Temperature and Pressure Control Systems</h3>
<p>Automated temperature monitoring throughout the voyage ensures cargo remains within required temperature bands. Pressure relief settings on P/V valves prevent structural damage — typically set at +2,000 Pa (overpressure) and -700 Pa (vacuum). High-pressure alarms alert officers to potential overfill or IGS malfunction. Temperature sensors feed into the cargo computer for voyage monitoring and record-keeping.</p>
<h3>1.15 Fire-Fighting Systems</h3>
<p>Tanker fire-fighting systems include: <strong>Fixed deck foam system</strong> covering the entire cargo tank deck; <strong>CO₂ systems</strong> for engine room and pump room; <strong>Dry chemical powder systems</strong> for chemical tankers; <strong>Water spray systems</strong> protecting pump rooms and manifold areas; <strong>Fire main</strong> with hydrants and hoses. Fixed systems are activated from the fire control station. Foam monitors are positioned to cover cargo manifolds and the entire tank deck. Annual testing and inspection is mandatory under SOLAS.',
'text', 1, 720, 1),

(154, 'Chapter 2: Knowledge of Pump Theory and Characteristics, Including Types of Cargo Pumps and Their Safe Operation',
'<h2>2. Knowledge of Pump Theory and Characteristics, Including Types of Cargo Pumps and Their Safe Operation</h2>
<h3>2.1 Pump Theory and Characteristics Including Types of Cargo Pumps</h3>
<p>A pump converts mechanical energy into hydraulic energy, increasing the pressure and velocity of a liquid. Key pump parameters:</p>
<ul>
<li><strong>Flow rate (Q):</strong> volume per unit time (m³/h)</li>
<li><strong>Head (H):</strong> pressure energy expressed as height of liquid column (m)</li>
<li><strong>NPSH (Net Positive Suction Head):</strong> available suction head above vapor pressure — must be positive to prevent cavitation</li>
<li><strong>Efficiency (η):</strong> ratio of hydraulic power output to shaft power input</li>
</ul>
<h4>Types of Cargo Pumps</h4>
<p><strong>Centrifugal pumps:</strong> Most common on modern tankers. An impeller rotates inside a casing, imparting velocity to the liquid which converts to pressure in the volute casing. Characteristics: high flow rate at moderate head, cannot self-prime, susceptible to cavitation if suction head is insufficient. Pump curve shows inverse relationship between head and flow rate.</p>
<p><strong>Reciprocating pumps:</strong> Positive displacement pumps using pistons or plungers. Deliver constant flow regardless of backpressure — useful for high-viscosity cargoes and stripping. Risk of overpressure if discharge valve is closed while running (must have bypass or relief valve).</p>
<p><strong>Screw pumps:</strong> Positive displacement, gentle on cargo (no pulsation). Ideal for viscous products. Used for fuel oil transfer and some chemical cargoes.</p>
<p><strong>Deepwell (submersible) pumps:</strong> Installed inside cargo tanks. The pump casing and impeller are submerged; the drive shaft extends vertically to a motor above deck. Eliminates stuffing boxes and shaft seals — significantly reducing fire and explosion risk. Electric or hydraulic drive.</p>
<p><strong>Eductors:</strong> Jet pumps with no moving parts. High-pressure motive fluid (sea water or cargo) creates vacuum to strip last quantities from tanks. Reliable, low maintenance.</p>
<h3>2.2 Pressure Surge</h3>
<p><strong>Pressure surge (water hammer)</strong> is a sudden, violent pressure increase in the pipeline caused by rapid change in liquid velocity — typically when a valve is closed quickly or a pump starts/stops abruptly. The kinetic energy of the moving liquid converts instantaneously to pressure energy, creating a shockwave that can exceed pipeline design pressure many times over.</p>
<p><strong>Effects:</strong> Pipeline rupture, flange failures, expansion joint damage, cargo spillage, and fire/explosion risk. <strong>Prevention:</strong> Slow valve closing procedures (valves must take minimum 30 seconds to close); gradually reduce pump speed before stopping; avoid simultaneous closure of multiple valves; install surge dampeners. Cargo officers must be aware of pipeline lengths and liquid velocities when planning valve sequences.',
'text', 2, 180, 1),

(154, 'Chapter 3: Proficiency in Tanker Safety Culture and Implementation of Safety-Management System',
'<h2>3. Proficiency in Tanker Safety Culture and Implementation of Safety-Management System</h2>
<h3>The ISM Code</h3>
<p>The <strong>International Safety Management (ISM) Code</strong> (SOLAS Chapter IX) is mandatory for all tankers. It requires shipping companies to develop, implement, and maintain a <strong>Safety Management System (SMS)</strong> that ensures:</p>
<ul>
<li>Safe practices in ship operation and a safe working environment</li>
<li>Assessment of all identified risks to the ship, personnel, and environment</li>
<li>Continuous improvement of SMS skills of shoreside and shipboard personnel</li>
</ul>
<h3>Key SMS Elements</h3>
<p><strong>Safety and Environmental Protection Policy:</strong> Sets the commitment of top management to safety and environmental protection.</p>
<p><strong>Designated Person Ashore (DPA):</strong> Direct link between the company and ship personnel; has access to the highest level of management; ensures adequate resources and support for the ship.</p>
<p><strong>Procedures for Key Shipboard Operations:</strong> Documented procedures for all safety-critical tasks (cargo operations, navigation, maintenance, emergency response).</p>
<p><strong>Permit-to-Work Systems:</strong> Formal authorization before commencing dangerous work — hot work, enclosed space entry, work aloft, electrical isolation.</p>
<p><strong>Emergency Preparedness:</strong> Plans and drills for fire, flooding, cargo spill, abandon ship, man overboard.</p>
<p><strong>Non-Conformances and Accidents Reporting:</strong> All accidents, near-misses, and non-conformances must be reported and investigated. Root cause analysis drives corrective action.</p>
<p><strong>Maintenance:</strong> Planned maintenance system (PMS) ensures critical equipment is maintained per manufacturer requirements and class survey intervals.</p>
<p><strong>Internal Audits:</strong> Annual internal audits verify SMS compliance. External audits by the flag state or recognized organization (RO) result in Document of Compliance (DOC) for the company and Safety Management Certificate (SMC) for the ship.</p>
<h3>Safety Culture on Oil Tankers</h3>
<p>A positive safety culture means every crew member, regardless of rank, feels empowered and obligated to stop unsafe acts. Key indicators of good safety culture:</p>
<ul>
<li>High near-miss reporting rates (reporting is encouraged, not punished)</li>
<li>Active participation in safety drills and toolbox talks</li>
<li>Visible leadership commitment to safety over schedule pressure</li>
<li>Stop Work Authority — any crew member can stop an operation they believe is unsafe</li>
<li>Learning from incidents — lessons shared fleet-wide</li>
</ul>',
'text', 3, 180, 1),

(154, 'Chapter 4: Knowledge and Understanding of Monitoring and Safety Systems, Including the Emergency Shutdown',
'<h2>4. Knowledge and Understanding of Monitoring and Safety Systems, Including the Emergency Shutdown</h2>
<h3>Cargo Monitoring Systems</h3>
<p>Modern tankers are equipped with comprehensive monitoring systems integrated into the Cargo Control Room:</p>
<ul>
<li><strong>Fixed gas detection systems:</strong> Continuously sample atmosphere in cargo pump room, void spaces, and cofferdam areas. Audible and visual alarms at 20% LEL (warning) and 60% LEL (danger).</li>
<li><strong>High-level and overfill alarms:</strong> Independent of the gauging system; first alarm at 95% full, overfill alarm at 98% — mandatory per SOLAS II-2.</li>
<li><strong>Pressure monitoring:</strong> IGS system pressure, P/V valve status, individual tank pressures.</li>
<li><strong>Temperature monitoring:</strong> Cargo temperature throughout the voyage; heating system performance.</li>
<li><strong>Cargo computer:</strong> Real-time stability calculation, stress monitoring, and loading sequence guidance.</li>
</ul>
<h3>Emergency Shutdown (ESD) System</h3>
<p>The ESD system instantly halts all cargo transfer operations in a controlled manner without creating dangerous pressure surges. Activation causes:</p>
<ul>
<li>Immediate closure of all manifold valves (hydraulically actuated, slow-close to prevent surge)</li>
<li>Shutdown of all cargo pumps</li>
<li>Closure of all tank valves above a preset level</li>
<li>Activation of the IGS if provided with auto-start</li>
<li>Audible and visual alarms at ship and shore</li>
</ul>
<p><strong>ESD activation triggers:</strong> Fire or gas detection on deck; vessel movement exceeding mooring limits; marine loading arm emergency release; power failure; manual activation by officer or terminal.</p>
<p><strong>ESD testing:</strong> The ESD system is tested before each cargo operation by pre-agreed signal between ship and shore. Response time and valve closure speeds are verified and recorded in the ship-shore safety checklist.</p>
<h3>Ship-Shore Link (SSL)</h3>
<p>The Ship-Shore Link provides real-time communication between the ship''s cargo monitoring system and the terminal''s control system. In an emergency, either party can trigger ESD via the SSL. The link includes: ESD signal, data communication (flow rates, pressure readings), and communication systems. The SSL is tested and verified before commencing cargo operations per the Ship-Shore Safety Checklist (ISGOTT).',
'text', 4, 180, 1),

(154, 'Chapter 5: Loading, Unloading, Care and Handling of Cargo',
'<h2>5. Loading, Unloading, Care and Handling of Cargo</h2>
<h3>Pre-Operational Requirements</h3>
<p>Before any cargo operation: Complete the Ship-Shore Safety Checklist; brief all involved personnel; verify tank cleanliness and readiness; confirm IGS system is operational; test all alarms (high-level, overflow, gas detection); confirm ESD system functionality; establish communication protocol with terminal (including emergency signal).</p>
<h3>Cargo Loading Operations</h3>
<p><strong>Loading sequence planning:</strong> The Chief Officer prepares a loading plan showing sequence, fill rates, and stability throughout loading. The plan ensures structural stress limits are not exceeded and the vessel maintains positive GM throughout. Loading commences at reduced rate (TOPPING-UP rate) until ship-shore connection is confirmed leak-free, then increases to maximum agreed rate.</p>
<p><strong>During loading:</strong> Continuous tank level monitoring; trim and GM calculations updated hourly; IGS system maintains positive pressure in tanks not being loaded; sample ports used to obtain cargo samples at manifold for quality control. Loading rate is reduced when the last tank approaches maximum level.</p>
<h3>Cargo Discharge Operations</h3>
<p>Start cargo pumps at minimum speed; increase when suction pressure stabilizes. Monitor suction pressure — a sudden drop to near-vacuum indicates the tank is nearly empty or cargo line is vapor-locking. <strong>Strip each tank completely</strong> using eductors or stripping pumps. Maintain IGS positive pressure throughout discharge. The discharge rate is coordinated with the terminal to match their shore tank capacity and pipeline pressure limits.</p>
<h3>5.1 Ability to Perform Cargo Measurements and Calculations</h3>
<p><strong>Tank gauging:</strong> Ullage (distance from reference point to cargo surface) or innage (depth of cargo from tank bottom). Converted to volume using tank calibration tables.</p>
<p><strong>Trim correction:</strong> If the vessel is not on even keel, trim correction tables adjust the measured volume to the true volume.</p>
<p><strong>Temperature correction:</strong> Volume is corrected to standard temperature (15°C or 60°F) using the API/ASTM volume correction factor (VCF).</p>
<p><strong>Density/API gravity:</strong> Converts volume to mass. GSV × observed density × VCF = weight in air. Deduct sediment and water (S&W) to obtain NSV (Net Standard Volume).</p>
<p><strong>Bill of Lading quantities:</strong> The B/L is the primary commercial document. Vessel figures and shore figures are compared — discrepancies exceeding 0.5% are noted on the Notice of Protest. The Letter of Protest formally records any discrepancy in quantity or quality.</p>
<p><strong>Cargo calculations example:</strong></p>
<ul>
<li>Ullage → volume (from calibration tables)</li>
<li>Trim correction → corrected volume</li>
<li>Volume at observed temperature × VCF → GSV at 15°C</li>
<li>GSV × density at 15°C → weight in vacuo</li>
<li>Weight in vacuo × 0.9985 → weight in air (metric tons)</li>
</ul>',
'text', 5, 300, 1),

(154, 'Chapter 6: Knowledge of the Effect of Bulk Liquid Cargoes on Trim, Stability and Structural Integrity',
'<h2>6. Knowledge of the Effect of Bulk Liquid Cargoes on Trim, Stability and Structural Integrity</h2>
<h3>Stability Fundamentals</h3>
<p><strong>Metacentric height (GM):</strong> The primary measure of initial stability. GM = KM − KG. Positive GM is essential — a negative GM causes capsizing. Tankers generally have large GM values due to low center of gravity, but free surface effects from partially filled tanks can significantly reduce effective GM.</p>
<h3>Free Surface Effect</h3>
<p>Liquid in a partially filled tank moves when the ship rolls, shifting the center of gravity and reducing effective GM. The free surface correction (FSC) depends on tank beam and length — wider tanks have greater FSC. To minimize free surface effect: fill tanks to 98% or keep them empty; use centerline longitudinal bulkheads (which halve the free surface moment); avoid having multiple large tanks simultaneously partially filled during loading or discharge.</p>
<h3>Trim Effects of Bulk Liquid Cargo</h3>
<p>The longitudinal distribution of cargo determines trim. A vessel with cargo concentrated forward sits bow-down (trimmed by head), and stern-down if aft-concentrated. Trim affects: propeller immersion (affecting efficiency and vibration), bow slamming (structural stress in heavy weather), squat (increased draft in shallow water), and cargo stripping ability (a significant stern trim aids drainage to suction points).</p>
<h3>Structural Integrity</h3>
<p>Unequal distribution of cargo, ballast, and fuel creates <strong>shear forces</strong> and <strong>bending moments</strong> in the ship''s hull. The cargo computer continuously calculates these and compares against the ship''s permitted limits (from the Loading Manual). Critical loading conditions to avoid:</p>
<ul>
<li><strong>Hogging:</strong> Cargo concentrated amidships, lighter at bow and stern — hull bows upward in the middle</li>
<li><strong>Sagging:</strong> Heavy at ends, light amidships — hull sags in the middle</li>
</ul>
<p>Both conditions must remain within class-approved limits. In harbor, the seawater/freshwater density difference must be accounted for (FWA and DWA corrections). The allowable stress limits in port may differ from those at sea. Tank loading sequences are designed to keep stresses within limits throughout the entire operation.',
'text', 6, 180, 1),

(154, 'Chapter 7: Knowledge and Understanding of Oil Cargo Related Operations',
'<h2>7. Knowledge and Understanding of Oil Cargo Related Operations</h2>
<h3>7.1 Loading and Unloading Plans</h3>
<p>A detailed loading/discharge plan shows: tank sequence, flow rates at each stage, trim and GM at each step, stress values throughout, and timing. The plan is shared with the terminal before operations and updated if circumstances change. The Chief Officer is responsible for plan preparation and monitoring compliance.</p>
<h3>7.2 Ballasting and Deballasting</h3>
<p>Ballasting maintains structural integrity, propeller immersion, steering ability, and minimum draft regulations during ballast voyages. Ballast operations must not cause sea pollution — SBT vessels pump clean ballast directly overboard. Vessels with CBT use ODME monitoring. Exchange ballasting in designated areas per MARPOL Annex II for ships without SBT.</p>
<h3>7.3 Tank Cleaning Operations</h3>
<p>Tank cleaning is required when changing cargo grades or preparing for inspection/repair. Fixed or portable tank cleaning machines use high-pressure hot or cold water. The washing sequence, water temperature, and number of cycles depend on the previous cargo and next cargo requirements. All washing water is retained in slop tanks for processing — never discharged overboard within MARPOL Special Areas.</p>
<h3>7.4 Inerting</h3>
<p>Inerting replaces the cargo tank atmosphere (hydrocarbon vapors + air) with inert gas (flue gas or nitrogen) to bring the oxygen content below 8%, outside the flammable range. Inerting is performed: before loading (for volatile crude/petroleum); during discharge (to replace cargo volume); before tank cleaning (safety); and before dry dock. The IGS must maintain positive pressure throughout.</p>
<h3>7.5 Gas-Freeing</h3>
<p>After tank cleaning, forced ventilation replaces residual hydrocarbon vapors with fresh air until the tank atmosphere is safe for entry: O₂ ≥ 20.8%, HC < 1% LEL, H₂S < 1 ppm. Gas measurements are taken at multiple levels (top, middle, bottom) from outside the tank. Only when all readings are confirmed safe can a Gas Free Certificate be issued and entry permitted.</p>
<h3>7.6 Ship-to-Ship Transfers</h3>
<p>Ship-to-ship (STS) transfers require careful coordination: compatible freeboard heights, compatible manifolds, fendering, mooring, pollution prevention measures, communication protocols, and joint Ship-Shore Safety Checklist completion. A Responsible Officer oversees from each vessel. Weather limits, current, and traffic must be assessed. OCIMF STS guidelines must be followed. MARPOL requires a pre-transfer inspection and record-keeping.</p>
<h3>7.7 Load on Top (LOT)</h3>
<p>After tank washing, residues (oil-water mixture) settle in slop tanks. Water sinks below oil. Over time, oil content of the water layer decreases to < 100 ppm, at which point the clean water layer may be discharged overboard (monitored by ODME). The remaining oil/sludge layer is retained in the slop tank. The next cargo is loaded directly on top of this retained oil — hence "Load on Top." Saves time (no shore disposal) while complying with MARPOL.</p>
<h3>7.8 Crude Oil Washing (COW)</h3>
<p>COW uses the solvency of crude oil itself to clean cargo tanks during discharge. High-pressure crude oil jets dissolve and dislodge waxy sludge deposits from tank surfaces. COW machines are operated when the tank is 70–80% discharged. Results in: better cargo outturn (more oil recovered), cleaner tanks (less shore reception needed), and reduced ballast voyage contamination. COW is mandatory on crude oil tankers over 20,000 DWT per MARPOL.',
'text', 7, 30, 1),

(154, 'Chapter 8: Development and Application of Cargo-Related Operation Plans, Procedures and Checklists',
'<h2>8. Development and Application of Cargo-Related Operation Plans, Procedures and Checklists</h2>
<h3>Ship-Shore Safety Checklist</h3>
<p>The ISGOTT Ship-Shore Safety Checklist is completed jointly by the Ship''s Officer and the Terminal Representative before every cargo operation. It covers: communication, emergency procedures, ESD testing, bonding, vapor control, manifold connections, tank conditions, and personnel readiness. Both parties sign — operations may not commence until all items are satisfactory. Critical items marked "A" require positive verification; "AA" items require verification before AND during operations.</p>
<h3>Cargo Operation Plan</h3>
<p>A written plan must be prepared before each cargo operation covering:</p>
<ul>
<li>Cargo grades, quantities, and tank assignments</li>
<li>Loading/discharge sequence and rates</li>
<li>Stability and stress values at each stage</li>
<li>Valve lineup (written step-by-step)</li>
<li>Sampling and temperature monitoring schedule</li>
<li>IGS/inerting requirements</li>
<li>Emergency procedures and contacts</li>
</ul>
<h3>Procedures and Checklists</h3>
<p>Company SMS procedures and checklists ensure critical steps are not omitted under pressure or fatigue. Key checklists in tanker operations: pre-loading checklist, pre-discharge checklist, tank cleaning checklist, enclosed space entry checklist, hot work checklist, bunkering checklist. Completed checklists are signed by the responsible officer and retained as records. Deviations from standard procedures require Master''s approval and documentation.</p>
<h3>Valve Lineup</h3>
<p>Before starting pumps, the complete valve lineup must be verified by a competent officer walking the pipeline system and confirming each valve position. <strong>A single wrong valve can cause catastrophic cargo overflow, cross-contamination, or structural damage.</strong> Valve lineups are written, verified by a second officer, and signed. Remote valve indicators are used as secondary confirmation only — physical position must be verified.',
'text', 8, 90, 1),

(154, 'Chapter 9: Ability to Calibrate and Use Monitoring and Gas-Detection Systems, Instruments and Equipment',
'<h2>9. Ability to Calibrate and Use Monitoring and Gas-Detection Systems, Instruments and Equipment</h2>
<h3>Types of Gas Detection Instruments</h3>
<p><strong>Catalytic bead (Pellistor) Explosimeter:</strong> Measures percentage of Lower Explosive Limit (LEL) in air. Two beads — one catalytic (active), one inert (reference) — form a Wheatstone bridge. Combustible gas oxidizes on the active bead, raising its resistance. Scale: 0–100% LEL. <em>Cannot work in oxygen-deficient atmospheres</em> (minimum 10% O₂ required for catalyst). Used for: gas-free testing, hot work clearance.</p>
<p><strong>Tankscope (Infrared detector):</strong> Measures hydrocarbon concentration in <em>inert atmospheres</em> (where O₂ is too low for catalytic sensors). Uses infrared absorption specific to hydrocarbon bonds. Scale: 0–100% volume HC. Used during inerting and purging to monitor HC dilution in the inert gas envelope.</p>
<p><strong>Oxygen Analyzer:</strong> Electrochemical or paramagnetic sensor measures O₂ percentage. Normal atmosphere: 20.9%. Entry requires ≥ 20.8% O₂. Inerted atmosphere: < 8% O₂. Critical for enclosed space entry assessment.</p>
<p><strong>Toxic Gas Detector (H₂S, CO, Benzene):</strong> Electrochemical sensors detect specific toxic gases at ppm levels. H₂S TLV-TWA: 1 ppm; IDLH: 100 ppm. CO TLV: 25 ppm. Calibration with known concentration span gas is essential before use in H₂S-rich crude atmospheres.</p>
<p><strong>Multi-gas detector:</strong> Combines O₂, LEL, H₂S, CO in one portable unit. Standard equipment for enclosed space entry teams.</p>
<h3>Calibration Procedures</h3>
<p>All gas detection instruments must be calibrated before each use:</p>
<ol>
<li><strong>Zero calibration:</strong> Expose sensor to fresh clean air; set reading to 0% LEL and 20.9% O₂</li>
<li><strong>Span calibration:</strong> Apply certified calibration gas (known concentration); adjust reading to match</li>
<li>Record calibration in the instrument logbook</li>
<li>Check instrument bump-test daily during cargo operations</li>
<li>Full calibration by certified technician as per manufacturer schedule (typically annual)</li>
</ol>
<h3>Fixed Gas Detection Systems</h3>
<p>Fixed systems continuously sample from multiple points: pump room, cargo compressor room, void spaces, cofferdams. Sampling tubes draw atmosphere to central detector. Alarm setpoints: 20% LEL (first alarm — stop operations), 60% LEL (second alarm — evacuate). Fixed systems require annual calibration and regular pump flow verification.',
'text', 9, 180, 1),

(154, 'Chapter 10: Ability to Manage and Supervise Personnel with Cargo-Related Responsibilities',
'<h2>10. Ability to Manage and Supervise Personnel with Cargo-Related Responsibilities</h2>
<h3>Leadership in Cargo Operations</h3>
<p>The Chief Officer carries ultimate responsibility for cargo operations aboard. Effective management of cargo watch teams requires clear assignment of responsibilities, briefing before operations, and ongoing supervision. Watch officers must understand both what to do and why — understanding the risk helps correct execution under pressure.</p>
<h3>Watchkeeping During Cargo Operations</h3>
<p>A qualified officer (OOW) maintains continuous watch during all cargo operations in port. Responsibilities include: monitoring tank levels, checking for leaks at manifolds and valves, confirming pump performance, updating the cargo plan, and maintaining communication with the terminal. The OOW must not be distracted from these duties by administrative tasks during active operations.</p>
<h3>Communication and Briefing</h3>
<p>Pre-operation briefings ensure all team members understand: the sequence of operations, their specific role, emergency procedures and signals (ESD, fire alarm, evacuation), communication channels, and the threshold for stopping operations and reporting. <strong>Toolbox talks</strong> are held before tasks involving significant risk. Language barriers must be addressed — critical instructions must be confirmed by repetition.</p>
<h3>Fatigue Management</h3>
<p>STCW mandates minimum rest hours: 10 hours in any 24-hour period, 77 hours in any 7-day period, with maximum work hours of 14 per 24 hours. In port during intensive cargo operations, rest period compliance must be actively managed. Fatigued watchkeepers make errors — if a crew member is unfit for duty, the Master must arrange relief before allowing the operation to continue.</p>
<h3>Competency Verification</h3>
<p>The Officer in Charge must verify that personnel assigned to cargo-related duties hold the appropriate STCW certificates (BTOC as minimum for all tanker crew; ATOI for officers in charge of cargo operations on oil tankers). Training records must be current. Familiarization with ship-specific systems is required before assuming duties on a new vessel.',
'text', 10, 60, 1),

(154, 'Chapter 11: Knowledge and Understanding of the Physical and Chemical Properties of Oil Cargoes',
'<h2>11. Knowledge and Understanding of the Physical and Chemical Properties of Oil Cargoes</h2>
<h3>11.1 Physical Properties</h3>
<p><strong>Density and Specific Gravity:</strong> Density at 15°C (kg/m³) or API gravity determines cargo weight calculations. Crude oils typically range from 800–950 kg/m³. Higher API gravity = lighter, more volatile crude.</p>
<p><strong>Viscosity:</strong> Resistance to flow. Measured in centistokes (cSt) or centipoise (cP). High viscosity requires heating for pumpability. Affects pump selection and discharge rates. Viscosity decreases significantly with temperature.</p>
<p><strong>Vapor Pressure (Reid Vapor Pressure — RVP):</strong> Pressure exerted by vapors at 37.8°C (100°F). High RVP = highly volatile cargo = more stringent safety precautions. Determines cargo venting and IGS requirements.</p>
<p><strong>Boiling Point:</strong> Temperature at which vapor pressure equals atmospheric pressure. Light fractions (LPG, naphtha) have low boiling points and high volatility.</p>
<p><strong>Pour Point:</strong> Lowest temperature at which oil flows under standardized conditions. Must maintain cargo temperature above pour point to prevent solidification in tanks and pipelines.</p>
<p><strong>Flash Point:</strong> Lowest temperature at which a liquid gives off sufficient vapor to form a flammable mixture near its surface. Petroleum with flash point < 60°C = flammable. Affects safety category and fire risk assessment.</p>
<p><strong>Autoignition Temperature:</strong> Minimum temperature for spontaneous ignition without external ignition source. Generally high for petroleum products (> 200°C), but hot surfaces aboard (exhaust pipes, electrical equipment) can reach these temperatures.</p>
<p><strong>Flammable Range (LEL/UEL):</strong> The concentration range of vapor in air that will ignite. Below LEL = too lean; above UEL = too rich. Most petroleum products: LEL ≈ 1%, UEL ≈ 10% by volume in air.</p>
<h3>11.2 Chemical Properties</h3>
<p>Petroleum is a complex mixture of <strong>hydrocarbons</strong> (compounds of carbon and hydrogen). Main chemical groups:</p>
<ul>
<li><strong>Alkanes (Paraffins):</strong> Straight or branched chain (methane, propane, octane). Most stable. Low reactivity. Form the bulk of crude oil.</li>
<li><strong>Naphthenes (Cycloalkanes):</strong> Ring structures of carbon and hydrogen. Common in crude oil.</li>
<li><strong>Aromatics:</strong> Benzene ring structures (benzene, toluene, xylene). More reactive. Benzene is a known human carcinogen (Group 1, IARC). Strict exposure limits apply.</li>
<li><strong>Olefins (Alkenes):</strong> Unsaturated hydrocarbons. Common in refinery products. Can polymerize — may require inhibitors.</li>
</ul>
<h3>11.3 Understanding the Information Contained in a Material Safety Data Sheet (MSDS)</h3>
<p>The MSDS (now SDS — Safety Data Sheet) is the primary safety reference for each cargo. Sections include:</p>
<ol>
<li>Product identification</li>
<li>Hazard identification (GHS classification)</li>
<li>Composition/ingredients</li>
<li>First aid measures</li>
<li>Firefighting measures</li>
<li>Accidental release measures</li>
<li>Handling and storage</li>
<li>Exposure controls/personal protection (TLV, STEL, OEL)</li>
<li>Physical and chemical properties (flashpoint, density, vapor pressure, etc.)</li>
<li>Stability and reactivity</li>
<li>Toxicological information</li>
<li>Ecological information</li>
<li>Disposal considerations</li>
<li>Transport information</li>
<li>Regulatory information</li>
<li>Other information</li>
</ol>
<p>The MSDS must be available for every cargo loaded and must be reviewed by the Chief Officer and all cargo watch officers before loading commences.',
'text', 11, 300, 1),

(154, 'Chapter 12: Knowledge and Understanding of the Hazards and Control Measures Associated with Oil Tanker Cargo Operations',
'<h2>12. Knowledge and Understanding of the Hazards and Control Measures Associated with Oil Tanker Cargo Operations</h2>
<h3>12.1 Toxicity</h3>
<p>Petroleum vapors are toxic. Key toxic components:</p>
<ul>
<li><strong>Hydrogen Sulfide (H₂S):</strong> Present in sour crude oils. TLV-TWA: 1 ppm; STEL: 5 ppm; IDLH: 100 ppm. Immediately life-threatening at > 300 ppm. Paralyzes olfactory nerve — cannot be smelled at high concentrations. Requires continuous monitoring with personal H₂S detectors in sour crude operations.</li>
<li><strong>Benzene:</strong> Carcinogen. TLV-TWA: 0.5 ppm. Found in crude oil and naphtha. Personal exposure monitoring required during tank entry and sampling.</li>
<li><strong>Carbon Monoxide (CO):</strong> Present in inert gas (flue gas). TLV: 25 ppm. Colorless, odorless. Must be monitored when working near IGS outlets.</li>
</ul>
<p><strong>TLV (Threshold Limit Value):</strong> The time-weighted average concentration for an 8-hour workday, 40-hour work week, to which nearly all workers may be repeatedly exposed without adverse effects.</p>
<h3>12.2 Flammability and Explosion</h3>
<p>Petroleum vapors mixed with air in the flammable range will ignite if an ignition source is present. The flammable range for most petroleum products is 1–10% vapor in air (LEL 1%, UEL 10%). Below LEL: too lean — will not ignite. Above UEL: too rich — will not ignite (but dilution toward LEL is hazardous). Ignition sources on tankers: static electricity, metal-to-metal sparks, hot surfaces, naked flames, non-intrinsically-safe electrical equipment, lightning.</p>
<h3>12.3 Health Hazards</h3>
<p>In addition to acute toxicity, chronic exposure to petroleum vapors causes: respiratory damage, skin defatting and dermatitis, eye and mucous membrane irritation, central nervous system effects (headache, dizziness, narcosis at high concentrations). Carcinogenic risk from benzene and other aromatics. Use appropriate PPE (respiratory protection for vapor exposures exceeding 10% of TLV).</p>
<h3>12.4 Inert Gas Composition</h3>
<p>Flue gas from the ship''s boilers or dedicated inert gas generators is the most common source. Typical composition: N₂ 83%, CO₂ 14%, O₂ 2–3%, CO < 200 ppm, SO₂ variable (from sulfur in fuel). Nitrogen from shore or ship''s nitrogen generator provides a cleaner inert gas for chemical tankers. The scrubber (water washery) removes SO₂ and particulates from flue gas before delivery to cargo tanks. O₂ content of delivered inert gas must be ≤ 5% (ideally < 2%).</p>
<h3>12.5 Electrostatic Hazards</h3>
<p>Static electricity is generated when:</p>
<ul>
<li>Petroleum flows through pipelines (streaming current)</li>
<li>Water or solid particles are present in flowing oil (mist charging)</li>
<li>Non-conductive liquids (such as clean distillates) flow at high velocity</li>
<li>Clothing or equipment rubs against surfaces</li>
</ul>
<p>Control measures: Maintain minimum initial loading rate (< 1 m/s until manifold and pipework are wetted); avoid water or sediment in cargo lines; use antistatic additives; bond ship to shore (equipotential bonding) before connecting hoses; avoid synthetic fiber clothing; restrict tank entry for 30 minutes after loading operations (allow static to dissipate).</p>
<h3>12.6 Oxygen Deficiency</h3>
<p>Enclosed spaces may have oxygen-deficient atmospheres due to: inerting (IGS), cargo vapor displacement, biological activity (rust formation consumes O₂), or displacement by CO₂. O₂ < 19.5% requires supplied-air breathing apparatus. O₂ < 16%: loss of consciousness, rapid death. Never enter a space with reduced O₂ without SCBA — personal O₂ analyzers provide a false sense of security if not also checking for toxic and flammable gases.',
'text', 12, 240, 1),

(154, 'Chapter 13: Knowledge and Understanding of Safe Working Practices, Including Risk Assessment and Personal Shipboard Safety Relevant to Oil Tankers',
'<h2>13. Knowledge and Understanding of Safe Working Practices, Including Risk Assessment and Personal Shipboard Safety Relevant to Oil Tankers</h2>
<h3>Risk Assessment</h3>
<p>A formal risk assessment identifies hazards, evaluates probability and severity, and implements controls before starting any non-routine task. The hierarchy of controls: Eliminate → Substitute → Isolate → Engineering controls → Administrative controls → PPE. Risk assessments are documented and reviewed by a senior officer. On tankers, task-specific risk assessments are required for: tank entry, hot work, working aloft, overside work, electrical maintenance, and chemical handling.</p>
<h3>13.1 Precautions Before Entering Enclosed Spaces</h3>
<p>Enclosed spaces on tankers include: cargo tanks, ballast tanks, void spaces, cofferdams, pump rooms, compressor rooms, and any space with limited openings. Entry procedure:</p>
<ol>
<li>Issue Enclosed Space Entry Permit (signed by Master or Chief Officer)</li>
<li>Atmosphere testing: O₂ ≥ 20.8%, HC < 1% LEL, H₂S < 1 ppm, CO < 25 ppm — at multiple levels</li>
<li>Forced ventilation for minimum 24 hours before entry (or as required)</li>
<li>Assign trained attendant at entrance with SCBA ready</li>
<li>Establish communication: verbal calls every 5 minutes minimum</li>
<li>Rescue equipment available at entrance: lifeline, SCBA, recovery equipment</li>
<li>NEVER enter a space with EEBD — only SCBA</li>
<li>Re-test atmosphere if entry is interrupted for > 30 minutes</li>
</ol>
<p><strong>Rescue procedure:</strong> If a person collapses inside, DO NOT enter without SCBA. Alert the bridge, sound the alarm, don SCBA before entering. Multiple rescuer deaths occur annually from entering oxygen-deficient spaces without breathing apparatus.</p>
<h3>13.2 Precautions Before and During Repairs and Maintenance Work</h3>
<p>Maintenance in cargo areas requires: Lock-Out/Tag-Out (LOTO) of all energy sources (electrical, hydraulic, pneumatic); gas-free certification of the work area; removal of all combustible materials; confirmation that adjacent areas are safe; and isolation of tanks/pipelines being worked on.</p>
<h3>13.3 Precautions for Hot and Cold Work</h3>
<p><strong>Hot work</strong> (welding, cutting, grinding) in cargo areas requires: Gas Free Certificate; Hot Work Permit signed by Master; fire watch during and for 2 hours after work; fire extinguishers positioned; adjacent areas inspected and confirmed gas-free; IGS isolated from the area being worked on. <strong>Cold work</strong> in hazardous areas: use only non-sparking (bronze/beryllium copper) tools; no synthetic clothing; equipment must be grounded.</p>
<h3>13.4 Precautions for Electrical Safety</h3>
<p>Only certified explosion-proof (Ex-d) or intrinsically safe (Ex-ia) electrical equipment is permitted in hazardous zones (cargo deck, pump room). Before any electrical maintenance: isolate the circuit (LOTO); test for dead with an approved voltage tester; confirm the area is gas-free if working in a hazardous zone. Never use domestic-grade tools or equipment in cargo areas.</p>
<h3>13.5 Use of Appropriate Personal Protective Equipment (PPE)</h3>
<p>PPE selection is based on MSDS/SDS requirements:</p>
<ul>
<li><strong>Chemical-resistant gloves and boots:</strong> nitrile or neoprene for petroleum products</li>
<li><strong>Chemical splash goggles and face shield:</strong> for sampling, hose connections</li>
<li><strong>Flame-retardant coveralls:</strong> mandatory on cargo deck</li>
<li><strong>Hard hat and safety shoes:</strong> always in cargo areas</li>
<li><strong>SCBA:</strong> for entry into oxygen-deficient or toxic atmospheres</li>
<li><strong>H₂S personal monitor:</strong> for all personnel on deck during crude oil operations</li>
</ul>',
'text', 13, 120, 1),

(154, 'Chapter 14: Knowledge and Understanding of Oil Tanker Emergency Procedures',
'<h2>14. Knowledge and Understanding of Oil Tanker Emergency Procedures</h2>
<h3>14.1 Ship Emergency Response Plan</h3>
<p>Every tanker must carry a <strong>Shipboard Oil Pollution Emergency Plan (SOPEP)</strong> approved by the flag state. SOPEP contains: reporting procedures (to coastal state, port authority, company); immediate actions to minimize pollution; duties of the crew; contacts for emergency response; and equipment inventory. The plan is tested in annual pollution response drills. Additionally, the Ship''s Emergency Procedures (SEP) Manual covers all emergency scenarios.</p>
<h3>14.2 Cargo Operations Emergency Shut Down</h3>
<p>ESD activation sequence: Recognize the emergency → Sound the alarm → Activate ESD (local or remote) → All manifold valves close (slow-close) → All cargo pumps stop → Notify terminal → Account for all personnel → Investigate and confirm safe before resuming. The reason for ESD must be investigated and corrected before operations resume. Both ship and terminal must agree to restart.</p>
<h3>14.3 Actions in the Event of Failure of Systems or Services Essential to Cargo</h3>
<p><strong>IGS failure during cargo operations:</strong> Stop cargo operations immediately. Do not start discharge if IGS is unserviceable on a vessel required to use IGS. Investigate and repair or call for shore assistance. <strong>Cargo pump failure during discharge:</strong> Secure the failed pump; switch to alternative pump or eductor; notify terminal of rate change. <strong>Power failure:</strong> Emergency generator provides power to cargo monitoring systems, lighting, and bilge pumps; ESD activates automatically; investigate cause before resuming operations.</p>
<h3>14.4 Firefighting on Oil Tankers</h3>
<p>Response to cargo area fire: Sound the alarm; activate ESD; stop all cargo operations; position fire monitors; approach fire upwind; apply foam from maximum safe distance; do not use water jets directly on burning liquid petroleum — use foam or water spray only; prevent burning liquid from entering drains or sea; close all deck scuppers; notify port authority; request shore fire assistance if beyond ship''s capacity. SOLAS requires at least two firefighting outfits (BA sets, proximity suits) available for cargo area firefighting.</p>
<h3>14.5 Enclosed Space Rescue</h3>
<p>Activate general alarm; call medical emergency; don SCBA before entering; lower a lifeline to the casualty; do not move a collapsed person more than necessary if spinal injury is possible; provide basic life support (CPR if needed) once out of the space; contact TMAS (Telemedical Assistance Service) for medical guidance. Never send an untrained rescuer — multiple rescuer fatalities occur in enclosed spaces.</p>
<h3>14.6 Use of Material Safety Data Sheet (MSDS)</h3>
<p>In an emergency, the MSDS provides immediate information on: first aid (inhalation, skin contact, eye contact, ingestion); firefighting agents (which agents work for this specific cargo); spill response (containment and cleanup procedures); health hazard summary (symptoms of exposure). All cargo officers must know where the MSDS for each cargo is kept and how to read it quickly under stress.',
'text', 14, 120, 1),

(154, 'Chapter 15: Actions to Be Taken Following Collision, Grounding, or Spillage',
'<h2>15. Actions to Be Taken Following Collision, Grounding, or Spillage</h2>
<h3>Immediate Actions After Collision</h3>
<ol>
<li>Sound the general emergency alarm</li>
<li>Post collision stations — crew to emergency muster positions</li>
<li>Stop engines (if appropriate) / maneuver to safe position</li>
<li>Assess damage — check all cargo tanks, ballast tanks, and void spaces for flooding</li>
<li>If cargo tanks breached: activate SOPEP; stop all cargo operations; notify Master, Company, and Coastal Authorities</li>
<li>Control flooding using watertight doors, bilge pumps, and damage control equipment</li>
<li>Maintain communication with the other vessel if involved in collision</li>
<li>Prepare to abandon ship if vessel stability is compromised</li>
</ol>
<h3>Immediate Actions After Grounding</h3>
<ol>
<li>Sound the alarm; stop engines</li>
<li>Assess situation: position, tide, weather, bottom type</li>
<li>Sound tanks and bilges — determine if hull is breached</li>
<li>Do NOT attempt to refloat without assessing structural integrity — refloating a seriously damaged vessel can cause rapid flooding</li>
<li>Activate SOPEP if oil spill occurring or suspected</li>
<li>Notify flag state, coastal state, port authority, and company DPA immediately</li>
<li>Consider emergency transfer of cargo to reduce draft (lightering) only if stability allows</li>
</ol>
<h3>Immediate Actions After Spillage</h3>
<p>Implementing <strong>SOPEP</strong>:</p>
<ol>
<li>Stop the source: close valves, stop pumps</li>
<li>Contain the spill onboard: close all deck scuppers with plugs or scupper stoppers</li>
<li>Sound the pollution alarm; notify Master</li>
<li>Report to coastal state, port authority, and company DPA per MARPOL requirements (within specified time limits)</li>
<li>Deploy containment boom if spill has reached the water (with authority approval)</li>
<li>Implement <strong>PCSOPEP</strong> (Platforma Costera) if required by the coastal state</li>
<li>Do not apply dispersants without authority approval</li>
<li>Document all actions, times, quantities, and measures taken in the Oil Record Book</li>
<li>Contact <strong>Shore-Based Response Personnel (SBRP)</strong> — specialized oil spill response organizations on contract for major spills</li>
</ol>
<h3>Notification Requirements</h3>
<p>MARPOL Article 8 and Protocol I require immediate notification to the nearest coastal state of any incident causing or likely to cause pollution. The notification must include: ship identity, position, type and quantity of pollutant, weather conditions, and action being taken. Failure to report is a serious violation that can result in flag state detention and criminal prosecution of the Master.',
'text', 15, 120, 1),

(154, 'Chapter 16: Knowledge of Medical First Aid Procedures on Board Oil Tankers',
'<h2>16. Knowledge of Medical First Aid Procedures on Board Oil Tankers</h2>
<h3>First Aid for Chemical Exposure — General Principles</h3>
<p>The MSDS/SDS for each cargo specifies cargo-specific first aid procedures. General principles for petroleum product exposure:</p>
<h3>Inhalation of Petroleum Vapors or H₂S</h3>
<p>Move victim to fresh air immediately (rescuer must wear SCBA if atmosphere is dangerous). If breathing has stopped: begin CPR; apply supplemental oxygen if available. Position unconscious breathing patient in recovery position. Do not induce vomiting. Seek medical assistance immediately via TMAS (Telemedical Assistance Service). For H₂S: administer 100% O₂ immediately.</p>
<h3>Skin Contact with Petroleum Products</h3>
<p>Remove contaminated clothing immediately (fire risk from impregnated clothing). Flush affected skin with large quantities of water for at least 15–20 minutes. Wash with soap and water. Do not use solvents to clean skin. If skin is burned (hot oil): cool with cold water for 10–20 minutes; do not apply creams or bandages; seek medical help. Prolonged skin contact with crude oil can cause chemical burns.</p>
<h3>Eye Contact</h3>
<p>Flush immediately with clean water for 15–20 minutes, holding eyelids open. Do not rub eyes. Remove contact lenses if present. Seek medical examination — eye damage from hydrocarbon solvents can be severe. Eyewash stations must be accessible within 10 seconds of the work area per OSHA/IMO recommendations.</p>
<h3>Ingestion</h3>
<p>Do NOT induce vomiting (aspiration into lungs can cause chemical pneumonia — more dangerous than swallowing). Rinse mouth with water. Seek immediate medical assistance. If victim is unconscious: recovery position and monitor airway. Contact TMAS for medical guidance.</p>
<h3>Resuscitation and CPR</h3>
<p>All tanker crew must be trained in basic first aid and CPR. The chain of survival: Early recognition → Call for help → Early CPR (30 compressions : 2 breaths) → Early defibrillation (AED if available) → Advanced medical care. Minimum first aid equipment per SOLAS: medical cabinet, oxygen resuscitator, AED (on vessels on international voyages). Ship''s Medical Officer (if carried) or the Officer with Medical Training (on smaller vessels) coordinates medical response.</p>
<h3>Medical Consultations and TMAS</h3>
<p>TMAS (Telemedical Assistance Service) provides 24/7 medical advice by radio or satellite to ships at sea. Required to be accessible to all ships on international voyages per SOLAS. The ship''s medical log must record all treatments. For serious injuries or illness, coordinate medevac via the Coast Guard or maritime rescue coordination center (MRCC).',
'text', 16, 240, 1),

(154, 'Chapter 17: Understanding of Procedures to Prevent Pollution of the Atmosphere and the Environment',
'<h2>17. Understanding of Procedures to Prevent Pollution of the Atmosphere and the Environment</h2>
<h3>17.1 Pollution Prevention Requirements of Ship Construction and Equipment</h3>
<p>MARPOL Annex I requires oil tankers to have: <strong>Segregated Ballast Tanks (SBT)</strong> — dedicated ballast tanks never used for oil; <strong>Crude Oil Washing (COW)</strong> system on crude oil tankers > 20,000 DWT; <strong>Inert Gas System (IGS)</strong> on all tankers > 8,000 DWT; <strong>Oil Discharge Monitoring Equipment (ODME)</strong>; <strong>Oil-Water Separator (OWS)</strong> with 15 ppm oil content meter; and <strong>slop tanks</strong> for retaining tank washing residues.</p>
<h3>17.2 Controlled Operational Pollution at Sea</h3>
<p>MARPOL Annex I Regulation 34 permits limited discharge of oily water at sea under strict conditions: discharge must be more than 50 nautical miles from nearest land; ship must be proceeding en route; instantaneous rate of oil discharge must not exceed 30 liters per nautical mile; total quantity discharged must not exceed 1/30,000 of the total cargo capacity of the vessel; and ODME must be operating and recording.</p>
<h3>17.3 Prevention of Pollution in Port</h3>
<p>Zero discharge of oil is required in port. All oily wastes (dirty ballast, tank washing water, slops, bilge water) must be retained on board or discharged to port reception facilities. The Port State Control inspector may request the Oil Record Book to verify compliance. Failure to use reception facilities and illegal overboard discharge is subject to severe penalties in most jurisdictions (criminal prosecution of the Master and company).</p>
<h3>17.4 Importance of the Oil Record Book (ORB)</h3>
<p>The ORB (Part I: Machinery space operations; Part II: Cargo/ballast operations) is a legal document recording every operation involving oil — transfers, overboard discharges (if permitted), and reception facility use. Entries must be made immediately after each operation and signed by the officer in charge and the Master. Deliberate falsification of the ORB is a criminal offense. The ORB must be retained for 3 years and made available to any authorized inspector.</p>
<h3>17.5 Air Pollution</h3>
<p>MARPOL Annex VI regulates air pollution from ships: sulfur limits in fuel (global 0.5% S from 2020; 0.1% in ECAs); NOₓ emission limits (Tier I/II/III depending on engine build date); prohibition of deliberate emissions of ozone-depleting substances; VOC management plans required for crude oil tankers loading in ports where vapor emission control is mandated; and Engine International Air Pollution Prevention (EIAPP) Certificate required for each engine.',
'text', 17, 120, 1),

(154, 'Chapter 18: Knowledge and Understanding of Relevant Provisions of MARPOL and Other IMO Instruments',
'<h2>18. Knowledge and Understanding of Relevant Provisions of MARPOL and Other IMO Instruments</h2>
<h3>MARPOL 73/78 — Overview</h3>
<p>The <strong>International Convention for the Prevention of Pollution from Ships (MARPOL)</strong> combines the 1973 Convention and the 1978 Protocol. Six Annexes cover different pollutant types:</p>
<ul>
<li><strong>Annex I:</strong> Oil — the primary annex for oil tankers. Defines discharge standards, Special Areas, and equipment requirements.</li>
<li><strong>Annex II:</strong> Noxious Liquid Substances (NLS) in bulk — chemical tankers; categorizes chemicals A, B, C, D by hazard.</li>
<li><strong>Annex III:</strong> Harmful Substances in packaged form.</li>
<li><strong>Annex IV:</strong> Sewage.</li>
<li><strong>Annex V:</strong> Garbage — categorizes garbage by type and defines disposal restrictions.</li>
<li><strong>Annex VI:</strong> Air Pollution — SOₓ, NOₓ, ODS, VOCs, and Energy Efficiency (SEEMP, EEXI, CII).</li>
</ul>
<h3>MARPOL Special Areas (Annex I)</h3>
<p>Special Areas where stricter discharge controls apply (effectively zero discharge): Mediterranean Sea, Baltic Sea, Black Sea, Red Sea, Gulfs Area (Arabian Gulf and Gulf of Oman), Gulf of Aden, Antarctic Area, North-West European Waters, Oman Area of the Arabian Sea, and Southern South African Waters. No oily discharge permitted within Special Areas regardless of quantity or distance from land.</p>
<h3>SOLAS — Safety of Life at Sea</h3>
<p>SOLAS Chapter II-2 covers fire protection, fire detection, and firefighting — including specific requirements for tankers (fixed fire smothering systems, IGS, high-level alarms, COW). Chapter VI covers carriage of cargoes. Chapter IX implements the ISM Code.</p>
<h3>IBC Code (International Bulk Chemical Code)</h3>
<p>Governs the construction and equipment of ships carrying NLS in bulk. Categorizes chemicals by environmental and safety hazard into Ship Types 1, 2, and 3. Type 1 ships (most dangerous) have the highest construction standards and locating criteria.</p>
<h3>Industry Guidelines</h3>
<p><strong>ISGOTT (International Safety Guide for Oil Tankers and Terminals):</strong> The definitive industry reference for safe operations between ship and terminal. Developed jointly by ICS, OCIMF, and IAPH. <strong>OCIMF Guidelines:</strong> Best practices for mooring, STS operations, and tanker management. <strong>CDI (Chemical Distribution Institute):</strong> Inspection standards for chemical tankers. These guidelines, while not legislation, are legally referenced by port states and insurers.',
'text', 18, 120, 1),

(154, 'Chapter 19: Case Studies and Discussion',
'<h2>19. Case Studies and Discussion</h2>
<h3>Case Study 1: The Erika Disaster (1999)</h3>
<p><strong>What happened:</strong> The single-hull oil tanker <em>Erika</em> broke in two off the coast of Brittany, France, spilling approximately 20,000 tonnes of heavy fuel oil. The spill affected 400 km of French coastline and killed an estimated 300,000 seabirds.</p>
<p><strong>Contributing factors:</strong> Age of vessel (24 years old); structural degradation not identified in classification surveys; substandard maintenance; inadequate port state control vetting; use of a single hull structure (double hull not required until MARPOL amendment).</p>
<p><strong>Consequences and lessons:</strong> Accelerated the European Union''s push for a double-hull requirement; led to stricter port state control inspections of older tankers; tightened classification society oversight; resulted in the Erika legislative packages (EU). <strong>Key lesson:</strong> Structural integrity of aging tankers must be rigorously assessed — visual inspection alone is insufficient. Thickness gauging and structural surveys must be comprehensive.</p>
<h3>Case Study 2: Explosion During Tank Cleaning (Benchmark Case)</h3>
<p><strong>What happened:</strong> During tank cleaning operations on a crude oil tanker, an explosion occurred in a center tank. The tank had been washed and ventilated, but gas readings were taken only at the tank entry point (top) and not at lower levels where heavier-than-air vapor had accumulated.</p>
<p><strong>Contributing factors:</strong> Gas testing only at one level; complacency ("we always do it this way"); tank cleaning machine left running after washing — mist created by the machine raised the vapor concentration into the flammable range; static discharge from the mist cloud ignited the mixture.</p>
<p><strong>Lessons learned:</strong> Take gas readings at multiple levels (top, middle, bottom); stop tank cleaning machines when not actively in use; be aware of mist charging from high-pressure water washing; never assume a tank is safe based on a single measurement; follow the tank cleaning procedure exactly as written.</p>
<h3>Case Study 3: Enclosed Space Fatality During Ballast Tank Inspection</h3>
<p><strong>What happened:</strong> A Second Officer entered a ballast tank to inspect for corrosion. No enclosed space permit was issued. The oxygen content in the tank was 14% due to prolonged ballasting with seawater that had depleted O₂ through biological activity and rust formation. The officer collapsed immediately on entering. A crew member entered to rescue him without breathing apparatus and also collapsed. Both died.</p>
<p><strong>Lessons learned:</strong> Enclosed space entry permit is mandatory — no exceptions, regardless of rank; atmosphere testing is mandatory before every entry; the rescuer must don SCBA before entering; ballast tanks are among the most dangerous enclosed spaces due to rust-induced O₂ depletion; biological activity in seawater ballast consumes O₂ continuously.</p>
<h3>Summary: Prevention Through Knowledge</h3>
<p>The ATOI course exists to ensure that officers responsible for cargo operations on oil tankers possess the knowledge and skills to prevent these and similar incidents. The recurring themes across all case studies are: adherence to procedures; thorough risk assessment; continuous monitoring; a strong safety culture; and the courage to stop operations when something is not right.</p>',
'text', 19, 120, 1);


-- ═══════════════════════════════════════════════════════════
-- QUIZ
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_quizzes (course_id, lesson_id, title, description, pass_percentage, time_limit, is_active)
VALUES (154, NULL,
  'Theoretical Evaluation — ATOI',
  'Final theoretical evaluation for Advanced Training for Oil Tanker Cargo Operations. Regulation V/1-1, Paragraph 4.3, Section A-V/1-1, Paragraph 2 and Table A-V/1-1-2 of STCW 78 as amended. Minimum passing score: 70%.',
  70.00, 45, 1);

SET @quiz_id = LAST_INSERT_ID();

-- ═══════════════════════════════════════════════════════════
-- QUESTIONS
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'VLCC vessels are vessels whose tonnage ranges from:', 'multiple_choice', 1, 1),
(@quiz_id, 'Oil tankers are used to load:', 'multiple_choice', 1, 2),
(@quiz_id, 'Temperature at which the vapor pressure of a liquid equals the atmospheric pressure is:', 'multiple_choice', 1, 3),
(@quiz_id, 'A certificate issued by the administration of a country confirming that the structure, equipment, devices, arrangements and materials used in the construction of a tanker are complying with the parameters established by IMO.', 'multiple_choice', 1, 4),
(@quiz_id, 'The International Code to prevent damage to the marine environment and to ensure the safe transport of dangerous goods is:', 'multiple_choice', 1, 5),
(@quiz_id, 'Ballast in a tank of which although its last charge was oil, has been cleaned:', 'multiple_choice', 1, 6),
(@quiz_id, 'Total volume of all petroleum liquids:', 'multiple_choice', 1, 7),
(@quiz_id, 'The tendency of a liquid to vaporize is:', 'multiple_choice', 1, 8),
(@quiz_id, 'Codes and standards governing the transport of liquids in bulk:', 'multiple_choice', 1, 9),
(@quiz_id, 'Oil is a mixture of different hydrocarbons of different structures such as:', 'multiple_choice', 1, 10),
(@quiz_id, 'The average time / weight, concentration of a substance which almost all workers can be repeatedly exposed in a work of 8 hours daily, 40 hours weekly day after day without adverse effects.', 'multiple_choice', 1, 11),
(@quiz_id, 'The most commonly used methods for identifying gases are:', 'multiple_choice', 1, 12),
(@quiz_id, 'Used to measure concentrations of hydrocarbons in inert tanks.', 'multiple_choice', 1, 13),
(@quiz_id, 'Causes of electrostatic charge generation:', 'multiple_choice', 1, 14),
(@quiz_id, 'The reasons for oxygen deficiency in enclosed spaces may be:', 'multiple_choice', 1, 15),
(@quiz_id, 'Chemical loads can react in various ways such as:', 'multiple_choice', 1, 16),
(@quiz_id, 'The information regarding the cargoes shipped, delivered to the first officer in the cargo terminal is in:', 'multiple_choice', 1, 17),
(@quiz_id, 'A tank is gas free when:', 'multiple_choice', 1, 18),
(@quiz_id, 'Measures to be taken in the event of a spill include:', 'multiple_choice', 1, 19),
(@quiz_id, 'First aid procedures in case of oil tanker accident are written on:', 'multiple_choice', 1, 20);

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

-- ═══════════════════════════════════════════════════════════
-- OPTIONS
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
-- Q1: VLCC = 160,000–300,000 DWT ✓ (c)
(@q1, '6000 to 35000', 0, 1),
(@q1, '35000 to 160000', 0, 2),
(@q1, '160000 to 300000', 1, 3),
(@q1, '300000 or more', 0, 4),

-- Q2: All of the above ✓ (d)
(@q2, 'Petrochemicals', 0, 1),
(@q2, 'Fuel Oil', 0, 2),
(@q2, 'Gasoil', 0, 3),
(@q2, 'All of the above', 1, 4),

-- Q3: Boiling point ✓ (a)
(@q3, 'Boiling point', 1, 1),
(@q3, 'Boiling Range', 0, 2),
(@q3, 'Flashpoint', 0, 3),
(@q3, 'Flash point', 0, 4),

-- Q4: Certificate of Fitness ✓ (b)
(@q4, 'Certificate Gas Free', 0, 1),
(@q4, 'Certificate of Fitness', 1, 2),
(@q4, 'Certificate of compliance', 0, 3),
(@q4, 'Certificate of charge', 0, 4),

-- Q5: IMDG ✓ (c)
(@q5, 'MARPOL', 0, 1),
(@q5, 'IACS', 0, 2),
(@q5, 'IMDG', 1, 3),
(@q5, 'ISGOTT', 0, 4),

-- Q6: Clean Ballast ✓ (a)
(@q6, 'Clean Ballast', 1, 1),
(@q6, 'Dirty ballast', 0, 2),
(@q6, 'Ballast output', 0, 3),
(@q6, 'None of the above', 0, 4),

-- Q7: NSV (Net Standard Volume) ✓ (b)
(@q7, 'NTP', 0, 1),
(@q7, 'NSV', 1, 2),
(@q7, 'RVP', 0, 3),
(@q7, 'ROB', 0, 4),

-- Q8: Volatility ✓ (d)
(@q8, 'Inflammability', 0, 1),
(@q8, 'Viscosity', 0, 2),
(@q8, 'Reactivity', 0, 3),
(@q8, 'Volatility', 1, 4),

-- Q9: All of the above ✓ (d)
(@q9, 'IMDG', 0, 1),
(@q9, 'Bulk Chemical Cargo', 0, 2),
(@q9, 'P & A Standard', 0, 3),
(@q9, 'All of the above', 1, 4),

-- Q10: All of the above ✓ (d)
(@q10, 'Alkanos', 0, 1),
(@q10, 'Naphthenes', 0, 2),
(@q10, 'Aromatic', 0, 3),
(@q10, 'All of the above', 1, 4),

-- Q11: TLV ✓ (a)
(@q11, 'TLV', 1, 1),
(@q11, 'TO', 0, 2),
(@q11, 'STEL', 0, 3),
(@q11, 'None of the above', 0, 4),

-- Q12: All of the above ✓ (d)
(@q12, 'Thermal conductivity', 0, 1),
(@q12, 'Ionization of flames', 0, 2),
(@q12, 'Calorimetry', 0, 3),
(@q12, 'All of the above', 1, 4),

-- Q13: Tankscope ✓ (c) — measures HC in inert atmospheres
(@q13, 'Explosimeter', 0, 1),
(@q13, 'Gas detector by calorimetry', 0, 2),
(@q13, 'Tankscope', 1, 3),
(@q13, 'None of the above', 0, 4),

-- Q14: All of the above ✓ (d)
(@q14, 'Decanting of solids', 0, 1),
(@q14, 'Flow of liquids through pipes or filters', 0, 2),
(@q14, 'Particle ejection', 0, 3),
(@q14, 'All of the above', 1, 4),

-- Q15: All of the above ✓ (d)
(@q15, 'Inert atmosphere', 0, 1),
(@q15, 'Chemical reactions', 0, 2),
(@q15, 'Tube Rust', 0, 3),
(@q15, 'All of the above', 1, 4),

-- Q16: All of the above ✓ (d)
(@q16, 'Self-reaction', 0, 1),
(@q16, 'With air', 0, 2),
(@q16, 'With water', 0, 3),
(@q16, 'All of the above', 1, 4),

-- Q17: MSDS ✓ (c)
(@q17, 'Cargo Safety Data Sheets', 0, 1),
(@q17, 'ICS', 0, 2),
(@q17, 'MSDS', 1, 3),
(@q17, 'All of the above', 0, 4),

-- Q18: The oxygen content is "1%" (gas free = HC ≤ 1% LEL) ✓ (b)
(@q18, 'The oxygen content is 16%', 0, 1),
(@q18, 'The hydrocarbon content is below 1% of the LEL', 1, 2),
(@q18, 'When inert', 0, 3),
(@q18, 'When the oxygen content is below 5%', 0, 4),

-- Q19: All of the above ✓ (d)
(@q19, 'Implement SOPEP', 0, 1),
(@q19, 'Implementing PCSOPEP', 0, 2),
(@q19, 'Prompt notification according to Shore-Based Response Personnel', 0, 3),
(@q19, 'All of the above', 1, 4),

-- Q20: MSDS ✓ (a)
(@q20, 'MSDS', 1, 1),
(@q20, 'SOPEP', 0, 2),
(@q20, 'IMDG', 0, 3),
(@q20, 'SBRP', 0, 4);

-- ═══════════════════════════════════════════════════════════
-- VERIFY
-- ═══════════════════════════════════════════════════════════
SELECT 'Lessons created:' AS info, COUNT(*) AS total FROM lms_lessons WHERE course_id=154;
SELECT 'Quiz created:' AS info, COUNT(*) AS total FROM lms_quizzes WHERE course_id=154;
SELECT 'Questions created:' AS info, COUNT(*) AS total FROM lms_questions WHERE quiz_id=@quiz_id;
SELECT 'Options created:' AS info, COUNT(*) AS total FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id);
