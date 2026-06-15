-- ATCH Course Content: 22 Lessons + Quiz + 20 Questions
-- Course ID: 155  |  STCW Regulation V/1-1, paragraph 6.3, Table A-V/1-1-3

UPDATE lms_courses SET course_code='ATCH' WHERE id=155;

-- ═══════════════════════════════════════════════════════════
-- LESSONS (22 chapters, 62 hours total)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(155, 'Chapter 1: Knowledge of Chemical Tanker Design, Systems and Equipment',
'<h2>1. Knowledge of Chemical Tanker Design, Systems and Equipment</h2>
<h3>1.1 General Arrangement and Construction</h3>
<p>A chemical tanker is a ship designed to transport chemicals in bulk. As defined in MARPOL Annex II, a chemical tanker means a ship constructed or adapted for carrying in bulk any liquid product listed in chapter 17 of the <strong>International Bulk Chemical (IBC) Code</strong>. Chemical tankers also carry industrial chemicals, clean petroleum products, vegetable oils, tallow, caustic soda, and methanol.</p>
<p>Ocean-going chemical tankers range from 5,000 to 35,000 DWT — smaller than crude tankers due to the specialized nature of their cargo and terminal restrictions. Ships built or converted on or after 1 July 1986 carrying NLS must comply with the <strong>IBC Code</strong>. Older ships comply with the BCH Code. Compliant ships receive an <strong>International Certificate of Fitness for the Carriage of Dangerous Chemicals in Bulk</strong>.</p>
<p><strong>IMO Ship Types by hazard level:</strong></p>
<ul>
<li><strong>Type 1:</strong> Most hazardous — maximum containment. Located inboard (≥ B/5 from ship''s side and B/15 from the bottom). For products posing greatest environmental/safety risk.</li>
<li><strong>Type 2:</strong> Significantly hazardous — considerable preventive measures. Located inboard (≥ B/5 from ship''s side).</li>
<li><strong>Type 3:</strong> Sufficiently hazardous — moderate preventive measures. No specific tank location required.</li>
</ul>
<h3>1.2 Arrangement and Pumping Equipment</h3>
<p>Chemical tankers use <strong>deepwell pumps</strong> (submerged electric or hydraulic drive) for most cargoes to eliminate shaft seals and prevent leakage of hazardous chemicals. <strong>Diaphragm pumps</strong> are widely used for viscous, corrosive, or shear-sensitive chemicals — they have no rotating seals in contact with cargo. <strong>Gear pumps</strong> handle high-viscosity cargoes. Each tank typically has its own dedicated pump and pipeline — preventing cross-contamination between incompatible chemical products.</p>
<h3>1.3 Construction and Arrangement of the Tank</h3>
<p>Chemical tankers have multiple independent tanks (20–40+ tanks). Tank materials determine cargo compatibility:</p>
<ul>
<li><strong>Stainless steel (316L):</strong> Required for aggressive acids (sulfuric, phosphoric, nitric), alkalis, and high-purity cargoes. Can clean quickly between grades.</li>
<li><strong>Epoxy-coated carbon steel:</strong> Suitable for petroleum products, vegetable oils, some solvents. Lower cost but less versatile.</li>
<li><strong>Zinc silicate coated:</strong> For some solvents and petroleum products compatible with zinc.</li>
<li><strong>Rubber-lined:</strong> For specific acids and corrosive chemicals.</li>
</ul>
<h3>1.4 Piping and Drainage System</h3>
<p>Each cargo tank on a chemical tanker has <strong>dedicated piping</strong> to prevent contamination. Manifold arrangements allow loading and discharge without cross-connection between tanks containing incompatible products. Drain connections, drip trays, and spill containment under all manifold and valve connections. Stainless steel piping required for aggressive chemicals. All connections between incompatible cargo lines are fitted with double block-and-bleed valves or spectacle blinds.</p>
<h3>1.5 Pressure and Temperature of Cargo Tanks and Pipes</h3>
<p>Cargo tanks are designed to specific pressure ratings (atmospheric or pressurized). P/V valves maintain pressure within safe limits during loading and temperature changes. Temperature monitoring is critical for:</p>
<ul>
<li>Cargoes with inhibitors that lose effectiveness above specified temperatures</li>
<li>Cargoes that polymerize or solidify if temperature limits are exceeded</li>
<li>Heat-sensitive cargoes (certain acids, peroxides)</li>
<li>Cargoes requiring heating to maintain pumpability (molasses, fatty acids)</li>
</ul>
<h3>1.6 Calibration and Alarm Control Systems</h3>
<p>Cargo level gauging uses closed systems: radar (microwave), ultrasonic, or float/tape gauges — required for toxic or high-vapor-pressure cargoes. Independent high-level (95%) and overfill alarms (98%) are mandatory per SOLAS. Temperature alarms monitor heating/cooling performance. Pressure alarms alert to P/V valve malfunction. All alarm systems are tested before each cargo operation and documented on the Ship-Shore Safety Checklist.</p>
<h3>1.7 Gas Detection System</h3>
<p>Fixed gas detection continuously monitors: cargo pump room, void spaces, cofferdams, and enclosed spaces adjacent to cargo tanks. Portable multi-gas detectors (O₂, LEL, toxic gas specific to cargo) are required for all personnel working on cargo deck. For toxic cargoes (benzene, methanol, ammonia, etc.), fixed toxic gas detectors at pump room entrances and on cargo deck provide early warning. Alarms at 10% and 50% of TLV for toxic gases.</p>
<h3>1.8 Cargo Heating and Cooling Systems</h3>
<p>Many chemicals require temperature control throughout the voyage:</p>
<ul>
<li><strong>Heating coils:</strong> Steam or hot water coils inside tanks for high-pour-point cargoes (fatty acids, molasses, vegetable oils, sulfur)</li>
<li><strong>Indirect heating:</strong> Heat exchangers in the cargo line heat cargo during discharge (avoids hot spots that could degrade temperature-sensitive chemicals)</li>
<li><strong>Cooling systems:</strong> For low-boiling-point cargoes or cargoes that react at elevated temperatures. Some vessels use refrigerated cargo systems.</li>
<li><strong>Adjacent tank considerations:</strong> Heating one tank affects adjacent tanks — compatibility of temperature ranges for neighboring cargoes must be verified in the stowage plan.</li>
</ul>
<h3>1.9 Tank Cleaning System</h3>
<p>Chemical tankers require thorough tank cleaning between cargo grades. Fixed and portable tank cleaning machines use hot or cold water at high pressure. The cleaning sequence depends on previous cargo, next cargo, and required cleanliness standard (water white, wall wash test, odor free, etc.). Chloride tests, permanganate tests, and wall wash tests verify cleanliness for sensitive cargoes. Cleaning water is retained as slops — never discharged overboard without MARPOL compliance.</p>
<h3>1.10 Environmental Control Systems for Cargo Tanks</h3>
<p>Inert gas (nitrogen or flue gas) or dry air padding protects oxygen-sensitive cargoes and prevents moisture contamination. Nitrogen padding is used for: cargoes that oxidize (vegetable oils, some chemicals), inhibited cargoes where oxygen accelerates inhibitor depletion, and reactive chemicals requiring inert atmosphere. Nitrogen generators or shore supply provide the nitrogen blanket. Oxygen content monitoring confirms effective inerting.</p>
<h3>1.11 Ballast Systems</h3>
<p>Segregated ballast tanks (SBT) are completely separate from cargo systems. Ballast tank inspection is critical on chemical tankers — corrosion from adjacent chemical cargo tanks can compromise structural integrity. Regular thickness gauging and coating inspection of ballast tanks is performed at each dry docking.</p>
<h3>1.12 Ventilation of the Cargo Area and Ventilation of the Compartment</h3>
<p>Cargo pump rooms are continuously ventilated (minimum 20 air changes/hour). Ventilation inlets are located at the lowest point (since most chemical vapors are denser than air), with outlets at the highest point. The accommodation ventilation intake is positioned forward and upwind of all cargo areas. Emergency fans provide additional ventilation after a toxic gas release. All vents are fitted with flame arresters.</p>
<h3>1.13 Vapor Return / Recovery Systems</h3>
<p>Vapor return lines connect ship to shore, returning displaced cargo vapors to the terminal''s recovery system during loading. Required in many ports for VOC control and environmental protection. Especially important for toxic cargoes (benzene, styrene, vinyl chloride) where vapor release to atmosphere is strictly controlled. The vapor return system must be compatible with the cargo vapors and have appropriate pressure relief.</p>
<h3>1.14 Fire Suppression System</h3>
<p>Chemical tankers carry fixed firefighting systems selected for the cargo types carried:</p>
<ul>
<li><strong>Deck foam system:</strong> For flammable liquid fires on deck</li>
<li><strong>Dry chemical powder (DCP):</strong> Effective for chemical fires where foam is ineffective or incompatible</li>
<li><strong>CO₂ or nitrogen flooding:</strong> For pump rooms and compressor rooms</li>
<li><strong>Water spray/deluge:</strong> Cooling of tanks and manifold protection</li>
</ul>
<p>The firefighting agent must be compatible with the specific chemical cargo — water must never be used on water-reactive chemicals (sulfuric acid, phosphorus trichloride, acetic anhydride).</p>
<h3>1.15 Materials and Linings of Tanks, Pipes and Accessories</h3>
<p>Material compatibility with cargo is verified using the IBC Code Chapter 17 and the ship''s Certificate of Fitness. Key compatibility concerns: some solvents attack epoxy coatings; acids corrode carbon steel; strong oxidizers are incompatible with many organic coatings; chlorinated solvents may attack zinc silicate coatings. Gaskets, valve seats, pump seals, and hose liners must also be verified for chemical compatibility.</p>
<h3>1.16 Waste Management</h3>
<p>Chemical tanker waste streams include: tank washing water, cargo residues, slops, cargo samples, contaminated PPE, and used cleaning chemicals. MARPOL Annex II governs discharge of NLS residues — most Category X and Y substances require pre-washing at sea with retained washings delivered to port reception facilities. Waste management plan required. All slop disposals recorded in the Cargo Record Book.',
'text', 1, 480, 1),

(155, 'Chapter 2: Knowledge of Pump Theory and Characteristics, Including Types of Cargo Pumps and Their Safe Operation',
'<h2>2. Knowledge of Pump Theory and Characteristics, Including Types of Cargo Pumps and Their Safe Operation</h2>
<h3>2.1 Pump Theory and Characteristics Including Types of Cargo Pumps</h3>
<p>Chemical tankers require pumps compatible with the specific chemical being transferred. Unlike oil tankers where centrifugal pumps dominate, chemical tankers use a variety of pump types depending on cargo properties:</p>
<h4>Diaphragm Pumps</h4>
<p>Most widely used on chemical tankers. A flexible diaphragm reciprocates to draw liquid in and push it out through check valves. <strong>Advantages:</strong> No rotating seals in contact with cargo (no leakage of hazardous chemicals); handles corrosive, viscous, and shear-sensitive cargoes; can run dry without damage; can handle entrained solids. <strong>Limitations:</strong> Lower flow rates than centrifugal pumps; pulsating flow (requires dampeners).</p>
<h4>Deepwell Pumps</h4>
<p>Submerged centrifugal pump inside the cargo tank, driven by hydraulic or electric motor above deck through a vertical shaft. The pump casing is submerged in the cargo — eliminates shaft seals below deck. Standard on modern chemical tankers for most liquid chemicals. Stripping capability via eductor.</p>
<h4>Gear Pumps</h4>
<p>Positive displacement — two meshing gears trap fluid between gear teeth and the casing, moving it from suction to discharge. Excellent for high-viscosity cargoes (molasses, vegetable oils, fatty acids). Flow rate is proportional to speed. Must have pressure relief valve — dangerous pressure buildup if discharge valve is closed while running.</p>
<h4>Screw Pumps</h4>
<p>Two or three intermeshing screws move fluid axially from suction to discharge. Gentle on cargo — no turbulence or pulsation. Suitable for viscous, shear-sensitive chemicals. Self-priming capability.</p>
<h3>2.2 Pressure Surge</h3>
<p><strong>Pressure surge (water hammer)</strong> occurs when liquid flow is suddenly stopped (valve closure, pump trip). The kinetic energy of moving liquid converts to pressure — capable of rupturing pipelines, breaking flanges, and causing catastrophic chemical releases. <strong>Prevention on chemical tankers:</strong> All valves must be closed slowly (minimum 30 seconds); hydraulic valve actuators have adjustable closing rates; surge dampeners installed on long pipeline runs; coordinate valve operations with terminal operators; never close manifold valves rapidly during cargo transfer.',
'text', 2, 90, 1),

(155, 'Chapter 3: Proficiency in Tanker Safety Culture and Implementation of Safety-Management System',
'<h2>3. Proficiency in Tanker Safety Culture and Implementation of Safety-Management System</h2>
<p>The <strong>ISM Code</strong> (SOLAS Chapter IX) is the mandatory framework for safety management on chemical tankers. The Safety Management System (SMS) must address the unique hazards of chemical tanker operations: diverse cargo hazards, chemical incompatibility, toxic vapor risks, and complex cleaning procedures between cargo grades.</p>
<h3>Chemical Tanker-Specific SMS Elements</h3>
<ul>
<li><strong>Cargo information procedures:</strong> Ensuring MSDS/SDS, IBC Code data, and Cargo Information Cards (CIC) are obtained and reviewed before loading</li>
<li><strong>Compatibility assessment:</strong> Documented procedure to check cargo compatibility before accepting a new cargo order</li>
<li><strong>Inhibitor monitoring:</strong> Procedures to check and maintain inhibitor concentrations for reactive cargoes throughout the voyage</li>
<li><strong>Tank cleaning procedures:</strong> Specific washing sequences, test standards, and approval authorities for cargo-to-cargo changeovers</li>
<li><strong>Toxic cargo procedures:</strong> Specific protocols for loading, carrying, and discharging cargoes with low TLV values</li>
</ul>
<h3>Safety Culture on Chemical Tankers</h3>
<p>Chemical tanker operations demand heightened safety awareness because:</p>
<ul>
<li>Cargoes can be simultaneously flammable, toxic, corrosive, and reactive</li>
<li>A single operational error (wrong valve, missed compatibility check) can have catastrophic consequences</li>
<li>Cargo properties change significantly between grades — crew must recalibrate to new hazards with each cargo change</li>
<li>Physical hazards (burns, respiratory injury) can occur faster than on oil tankers due to corrosive and toxic cargo properties</li>
</ul>
<p><strong>Stop Work Authority</strong> is especially critical on chemical tankers — any crew member detecting an unsafe condition (chemical smell, wrong color in hose, unexpected pressure reading) must immediately stop operations and report to the officer in charge.',
'text', 3, 90, 1),

(155, 'Chapter 4: Knowledge and Understanding of Monitoring and Safety Systems, Including the Emergency Shutdown',
'<h2>4. Knowledge and Understanding of Monitoring and Safety Systems, Including the Emergency Shutdown</h2>
<h3>Cargo Monitoring on Chemical Tankers</h3>
<p>The <strong>Cargo Control Room (CCR)</strong> is the primary responsibility for handling and monitoring all chemical cargo operations. Systems integrated into the CCR:</p>
<ul>
<li><strong>Tank level monitoring:</strong> Closed gauging systems with remote readout — no opening of tanks required for toxic cargoes</li>
<li><strong>Temperature monitoring:</strong> Multi-point sensors per tank; alarms for temperature deviations outside cargo specification</li>
<li><strong>Pressure monitoring:</strong> Tank vapor space pressure; pipeline pressure during transfer</li>
<li><strong>Fixed gas detection:</strong> Continuous monitoring of pump room, void spaces, and cofferdam areas</li>
<li><strong>Pump status:</strong> Running/stopped status, discharge pressure, flow rate indicators</li>
<li><strong>Valve position indicators:</strong> Remote position feedback for hydraulically actuated valves</li>
</ul>
<h3>Emergency Shutdown (ESD) System</h3>
<p>The ESD system on chemical tankers must respond faster than on oil tankers due to the acute toxic hazard of many chemical cargoes. ESD activation sequence:</p>
<ol>
<li>Slow-close manifold valves (hydraulic, 30-second minimum closure time to prevent pressure surge)</li>
<li>Stop all cargo pumps simultaneously</li>
<li>Close all tank valves in the active cargo system</li>
<li>Activate deck foam/DCP system if fire is the trigger</li>
<li>Sound general alarm; notify terminal via Ship-Shore Link (SSL)</li>
<li>Muster crew at emergency stations</li>
</ol>
<p><strong>ESD triggers specific to chemical tankers:</strong> toxic gas alarm in pump room or on deck; fire/explosion; cargo spill detection; vapor cloud detection downwind; loss of nitrogen/inert gas supply to reactive cargoes; uncontrolled temperature rise in reactive cargo tanks.',
'text', 4, 90, 1),

(155, 'Chapter 5: Loading, Unloading, Care and Handling of Cargo',
'<h2>5. Loading, Unloading, Care and Handling of Cargo</h2>
<h3>Pre-Cargo Operations</h3>
<p>Before loading any chemical cargo: obtain and review the MSDS/SDS and IBC Code data; verify tank cleanliness meets the required standard (wall wash test results if required); confirm compatibility with previous cargo residues and adjacent cargoes; check inhibitor status if required; verify Certificate of Fitness covers the intended cargo; complete Ship-Shore Safety Checklist.</p>
<h3>Loading Chemical Cargo</h3>
<p>Loading rate is initially slow to confirm manifold and hose integrity and to prevent static buildup. For volatile, toxic cargoes: vapor return line connected before opening manifold valves; shore communicates flow rate and any cargo temperature. Monitor cargo temperature at manifold — if significantly different from tank temperature, adjust rate. For cargoes requiring inhibitors: confirm inhibitor concentration in shore certificate matches specification; sample at manifold.</p>
<h3>Discharging Chemical Cargo</h3>
<p>Discharge must follow the agreed plan and rate with terminal. Monitor suction pressure — cavitation damage in chemical cargo pumps can release pump material into cargo (contamination). Complete stripping of each tank is critical — chemical cargo residues left in tanks cause serious contamination of the next cargo. Use stripping pump or deepwell pump at minimum speed for final stripping. Confirm with shore that shore tank is ready before commencing each tank.</p>
<h3>5.1 Ability to Perform Cargo Measurements and Calculations</h3>
<p><strong>Chemical cargo quantities</strong> are measured by: closed ullage gauging (preferred for toxic cargoes) or inline flowmeter at manifold. Key measurements: ullage → volume (tank calibration tables) → temperature correction → GSV at reference temperature (usually 15°C or 20°C depending on cargo) → weight using density from cargo certificate.</p>
<p><strong>Cargo Record Book (CRB):</strong> MARPOL Annex II requires a Cargo Record Book for every NLS operation. Entries include: loading, discharge, tank cleaning, pre-washing, cargo residue disposition, and ballasting of cargo tanks. The CRB does <strong>NOT</strong> include crew lists — it is a cargo operations record only. Must be signed by the officer in charge and the Master, retained for 3 years.',
'text', 5, 180, 1),

(155, 'Chapter 6: Knowledge of the Effect of Bulk Liquid Cargoes on Trim, Stability and Structural Integrity',
'<h2>6. Knowledge of the Effect of Bulk Liquid Cargoes on Trim, Stability and Structural Integrity</h2>
<h3>Stability Challenges on Chemical Tankers</h3>
<p>Chemical tankers with 20–40+ tanks face complex stability management. With many tanks simultaneously partially filled during loading/discharge, <strong>free surface effects</strong> accumulate and can significantly reduce GM. The cargo computer calculates combined free surface corrections and warns if effective GM falls below minimum. Loading plans are designed to minimize simultaneous partial filling by completing tanks one at a time.</p>
<h3>Density Variation Effects</h3>
<p>Chemical cargoes have widely varying densities (0.7 to 2.0+ kg/L for concentrated sulfuric acid). High-density cargoes (acids, caustic soda) dramatically lower the center of gravity — increasing GM but also increasing shear forces and bending moments. Low-density cargoes (solvents, light chemicals) raise G and may reduce stability margins. The cargo computer must use actual cargo densities for accurate stability calculation.</p>
<h3>Structural Integrity Considerations</h3>
<p><strong>Corrosion</strong> is a major structural concern on chemical tankers — aggressive cargoes can attack tank coatings and eventually the steel structure if coating fails. Regular thickness gauging, especially in tanks carrying corrosive chemicals, is essential. <strong>Compatibility</strong> of loading sequence: some chemical cargoes create exothermic reactions if mixed — a structural breach between incompatible adjacent tanks could cause violent reaction and structural failure. The loading plan must ensure incompatible cargoes are physically separated by empty tanks or compatible cargo tanks.',
'text', 6, 90, 1),

(155, 'Chapter 7: Knowledge and Understanding of Chemical Cargo Related Operations',
'<h2>7. Knowledge and Understanding of Chemical Cargo Related Operations</h2>
<h3>7.1 Loading and Unloading Plans</h3>
<p>A detailed multigrade loading plan is essential on chemical tankers — it shows each cargo, tank assignment, sequence, rates, stability at each step, and segregation from incompatible cargoes. The plan must be approved by the Master and Chief Officer, and shared with the terminal before commencement. Changes require mutual agreement and updating of the safety checklist.</p>
<h3>7.2 Ballast and Deballasting</h3>
<p>Ballast operations must not contaminate the sea with NLS residues. SBT vessels pump clean ballast. Prior to loading, deballasting from cargo tanks that previously carried NLS requires pre-washing and delivery of washings to reception facilities. Deballasting is recorded in the Cargo Record Book.</p>
<h3>7.3 Tank Cleaning Operations</h3>
<p>Tank cleaning between chemical cargoes is highly cargo-specific. The required cleaning standard depends on previous cargo, next cargo, and any wall wash or analysis requirements. A typical sequence:</p>
<ol>
<li>Pre-rinse (cold or hot water wash)</li>
<li>Hot water wash (60–80°C) with tank cleaning machines</li>
<li>Chemical cleaning agent if required (caustic soda for fatty acids; soda ash for acidic residues)</li>
<li>Final cold water rinse</li>
<li>Drying (ventilation or dry air padding)</li>
<li>Inspection — visual and/or wall wash test</li>
</ol>
<p><strong>Wall wash test:</strong> A sample of distilled water is wiped on the tank wall and analyzed for: chlorides, acidity/alkalinity, color, and specific chemical residues. Test results determine if the tank is clean enough for the next cargo.</p>
<h3>7.4 Control of Tank Atmosphere</h3>
<p>Tank atmosphere control is critical for chemical cargoes: nitrogen padding for oxygen-sensitive cargoes (vegetable oils, some monomers); inert gas for flammable cargoes; dry air for moisture-sensitive cargoes (isocyanates, acetic anhydride react violently with water). The atmosphere composition (O₂, moisture, hydrocarbon/chemical vapor) must be monitored and maintained throughout loading, the voyage, and discharge.</p>
<h3>7.5 Inertiation</h3>
<p>Inerting with nitrogen is preferred over flue gas on chemical tankers because: flue gas contains CO₂ which reacts with some chemicals (caustic soda forms carbonates); flue gas moisture can affect moisture-sensitive cargoes; nitrogen is clean and inert with virtually all chemicals. Nitrogen is supplied from ship''s nitrogen generator or shore nitrogen. O₂ content must be ≤ 2% for effective inerting of reactive/polymerizable cargoes.</p>
<h3>7.6 Release of Gases</h3>
<p>Vapors displaced from tanks during loading must be managed: vapor return to shore (preferred for toxic vapors); controlled venting through high-velocity vents (minimizes vapor contact with deck); inert gas return if inerting simultaneously. Emergency vapor release through P/V breakers must be planned — the downwind dispersion of toxic vapors must be assessed before loading in confined terminal areas.</p>
<h3>7.7 Ship-to-Ship Transfers</h3>
<p>Chemical STS transfers require additional precautions beyond oil tanker STS: compatibility of the receiving vessel''s tank coating with the cargo; compatible manifold materials (stainless steel manifolds for corrosive cargoes); appropriate chemical-resistant hoses (not standard petroleum hoses); enhanced PPE for all personnel involved (chemical suits, face shields); and vapor control procedures for toxic cargoes.</p>
<h3>7.8 Inhibition and Stabilization Requirements</h3>
<p>Many chemical cargoes are reactive and require inhibitors to prevent polymerization, oxidation, or decomposition during transport:</p>
<ul>
<li><strong>Styrene monomer:</strong> Inhibited with 10–50 ppm TBC (4-tert-butylcatechol) + O₂ — requires air padding (not nitrogen!)</li>
<li><strong>Acrylic acid:</strong> Inhibited with MEHQ — requires O₂ and temperature control (< 25°C)</li>
<li><strong>Vinyl acetate:</strong> Inhibited with hydroquinone</li>
<li><strong>Diisocyanates (MDI, TDI):</strong> Stabilized by moisture exclusion — dry nitrogen padding mandatory</li>
</ul>
<p>Inhibitor concentration must be checked on the cargo certificate. Some inhibitors deplete over time — voyage duration must be within the effective inhibitor period. The IBC Code specifies inhibition requirements for each cargo.</p>
<h3>7.9 Heating and Cooling Requirements and Consequences for Adjacent Loads</h3>
<p>Temperature requirements of adjacent tank cargoes must be compatible. Heating one tank transfers heat to neighboring tanks — a cargo that polymerizes at elevated temperature cannot be adjacent to a heated cargo without effective insulation. The stowage plan must account for thermal interaction between tanks, especially on long voyages in tropical climates.</p>
<h3>7.10 Compatibility and Load Segregation</h3>
<p>Cargo compatibility must be verified before loading multiple grades. Incompatible cargoes that could mix due to tank breach must be separated. The IBC Code Appendix 6 provides a chemical compatibility chart. Key incompatibilities on chemical tankers:</p>
<ul>
<li>Acids + alkalis (caustic soda + sulfuric acid → violent exothermic reaction)</li>
<li>Oxidizers + organic chemicals (nitric acid + any organic = fire/explosion)</li>
<li>Water-reactive chemicals + water or moist air (acetic anhydride + water = violent decomposition)</li>
<li>Polymerizable monomers + heat or peroxides</li>
</ul>
<h3>7.11 High Viscosity Transfers</h3>
<p>High-viscosity cargoes (molasses, palm oil, fatty acids at low temperature, sulfur) require: heating before and during discharge; lower pump speeds (high-speed pumping of viscous liquid can overheat and damage the pump); pipeline heating tracing to prevent solidification; extended stripping time. Viscosity is temperature-dependent — knowing the cargo pour point prevents pipeline blockage.</p>
<h3>7.12 Operations with Cargo Residues</h3>
<p>MARPOL Annex II Category X substances require pre-washing before departure from the discharge port, with washings retained and delivered to port reception. Category Y substances require pre-washing if residue exceeds 300 liters. Category Z substances may be discharged at sea under the conditions of Regulation 13. Residue quantities are calculated and recorded in the Cargo Record Book.</p>
<h3>7.13 Entering the Operating Tank</h3>
<p>Entry into a tank containing or recently containing chemical cargo is the highest-risk enclosed space entry on chemical tankers. Requirements beyond standard enclosed space entry: cargo-specific air monitoring (O₂, LEL, and cargo-specific toxic gas); appropriate chemical-resistant PPE including full encapsulating suit for highly toxic or corrosive cargoes; entry team of minimum three persons (entrant, attendant, rescue-ready); maximum time limits in tank based on MSDS exposure limits and SCBA duration.',
'text', 7, 660, 1),

(155, 'Chapter 8: Development and Application of Cargo-Related Operation Plans, Procedures and Checklists',
'<h2>8. Development and Application of Cargo-Related Operation Plans, Procedures and Checklists</h2>
<h3>Chemical Tanker Ship-Shore Safety Checklist</h3>
<p>The Chemical Tanker Ship-Shore Safety Checklist (per ISGOTT and ICS/OCIMF Chemical Tanker Operations) includes all items from the standard checklist plus chemical-specific items: confirmation of cargo identity and compatibility; inhibitor status verification; vapor return system connection; toxic cargo alarm system testing; PPE requirements briefed to all personnel; chemical emergency response plan reviewed with terminal.</p>
<h3>Pre-Washing Procedures</h3>
<p>For MARPOL Annex II cargoes requiring pre-washing, a documented pre-washing plan specifies: washing medium (water, solvent), temperature, number of washes, minimum tank washing time, slop disposal method, and confirmation of delivery to reception facility. The pre-washing certificate is completed and signed by Master and Port Authority representative.</p>
<h3>Cargo Changeover Procedures</h3>
<p>Changing between chemical grades requires a documented procedure: tank cleaning standard required; testing required (wall wash, analysis, odor test); approval authority for each cleaning standard (Chief Officer, Management, Shipper); record of all cleaning operations and test results. The cargo changeover file is retained for three years as part of the SMS records.</p>
<h3>Valve Lineup Procedures</h3>
<p>On a chemical tanker with 30+ tanks and dedicated pipelines, the valve lineup is especially complex. Color-coded valve tags, pipeline identification, and written step-by-step lineup sheets verified by two officers prevent cross-contamination incidents. Electronic cargo management systems on modern vessels provide valve lineup verification and alarm if wrong valves are operated.',
'text', 8, 90, 1),

(155, 'Chapter 9: Ability to Calibrate and Use Monitoring and Gas-Detection Systems, Instruments and Equipment',
'<h2>9. Ability to Calibrate and Use Monitoring and Gas-Detection Systems, Instruments and Equipment</h2>
<h3>Cargo-Specific Gas Detection</h3>
<p>Chemical tanker gas detection must match the specific cargoes being carried. Standard LEL/O₂ meters may not detect all chemical vapors:</p>
<ul>
<li><strong>Chlorinated solvents</strong> (methylene chloride, trichloroethylene): Not detected by catalytic LEL sensors — require photoionization detector (PID) or specific infrared sensor</li>
<li><strong>Ammonia:</strong> Electrochemical sensor specific to NH₃; standard H₂S sensor does not detect ammonia</li>
<li><strong>Methanol:</strong> Catalytic LEL sensor detects but underreads — correction factors required</li>
<li><strong>Benzene:</strong> PID or specific electrochemical sensor required for carcinogen monitoring at low ppm levels</li>
</ul>
<h3>Vapor Detection System Purpose</h3>
<p>The vapor detection system on a chemical tanker detects and measures the concentration of harmful vapors in critical areas (pump room, void spaces, cargo deck). This provides early warning to prevent personnel exposure to toxic concentrations and prevents explosive atmosphere accumulation. Alarms are set at fractions of TLV for toxic vapors and at 20%/60% LEL for flammable vapors.</p>
<h3>Calibration Procedures</h3>
<p>Chemical tanker gas detectors require calibration with the specific calibration gas matching the cargo being carried (or a gas of known cross-sensitivity). Before each cargo operation: zero calibration in fresh air; span calibration with certified gas; bump test of alarm functions; log all calibration results. Instruments used for MARPOL compliance (15 ppm oil content meter, ODME) require certified annual calibration.',
'text', 9, 90, 1),

(155, 'Chapter 10: Ability to Manage and Supervise Personnel with Cargo-Related Responsibilities',
'<h2>10. Ability to Manage and Supervise Personnel with Cargo-Related Responsibilities</h2>
<h3>STCW Certification Requirements</h3>
<p>Officers in charge of cargo operations on chemical tankers must hold STCW certificates for: <strong>Basic Training (BTOC)</strong> and <strong>Advanced Training for Chemical Tanker Cargo Operations (ATCH)</strong>. All crew working on deck must hold BTOC. The Master must verify certificates are current and appropriate before assigning cargo duties.</p>
<h3>Cargo Watch Management</h3>
<p>During active chemical cargo operations, the officer of the watch must maintain continuous attention to all active tank levels, pump pressures, and cargo deck conditions. Due to the toxic nature of many chemical cargoes, the OOW must not leave the cargo control room unattended during transfer operations. A dedicated cargo watch officer is required in addition to the navigational watch officer when in port.</p>
<h3>Briefing for Chemical Cargo Operations</h3>
<p>Pre-operation briefings must cover: cargo identity, hazards (toxicity, flammability, reactivity), required PPE for each position, emergency shutdown signal and procedure, evacuation routes, wind direction (upwind muster position), and medical first aid for this specific chemical. For toxic cargoes, identify the buddy system — no one works alone on cargo deck.</p>
<h3>Non-Compliance Consequences</h3>
<p>Officers must understand that non-compliance with chemical tanker regulations carries severe consequences: criminal prosecution of the Master and officers for deliberate MARPOL violations; detention of the vessel by Port State Control; loss of CDI (Chemical Distribution Institute) inspection approval — effectively preventing the ship from loading chemical cargoes; insurance invalidation; and reputational damage to the company.',
'text', 10, 90, 1),

(155, 'Chapter 11: Knowledge and Understanding of the Physical and Chemical Properties of Chemical Cargoes',
'<h2>11. Knowledge and Understanding of the Physical and Chemical Properties of Chemical Cargoes</h2>
<h3>11.1 Chemical Cargo Categories</h3>
<p>The IBC Code categorizes bulk liquid chemicals by their physical and hazard properties. Key hazard categories carried on chemical tankers:</p>
<p><strong>Corrosive cargoes:</strong> Attack living tissue and structural materials. pH < 2 (acids) or pH > 12 (alkalis). Examples: sulfuric acid, hydrochloric acid, caustic soda (sodium hydroxide), phosphoric acid. Require stainless steel tanks and piping. Firefighting with water can cause violent spattering of acid.</p>
<p><strong>Toxic cargoes:</strong> Hazardous to health at low concentrations. Examples: benzene (carcinogen, TLV 0.5 ppm), acrylonitrile (TLV 2 ppm), methanol (TLV 200 ppm), ammonia (TLV 25 ppm). Require closed loading/discharging, vapor return, and continuous toxic gas monitoring.</p>
<p><strong>Flammable cargoes:</strong> Flash point < 60°C. Examples: ethanol, acetone, methyl ethyl ketone (MEK), toluene, xylene. Require IGS, intrinsically safe electrical equipment, and electrostatic bonding.</p>
<p><strong>Explosive / Reactive cargoes:</strong> Unstable or react violently with water, air, or other chemicals. Examples: diisocyanates (react with moisture), acetic anhydride (reacts with water violently), hydrogen peroxide (powerful oxidizer, reacts with organics), styrene (polymerizes exothermically without inhibitor).</p>
<h3>11.2 Chemical Groups and Industrial Use</h3>
<p>Common chemical groups carried in bulk and their industrial uses:</p>
<ul>
<li><strong>Alcohols</strong> (methanol, ethanol, propanol): Solvents, fuel additives, chemical intermediates</li>
<li><strong>Ketones</strong> (acetone, MEK): Industrial solvents, paint thinners</li>
<li><strong>Aromatic hydrocarbons</strong> (benzene, toluene, xylene — BTX): Petrochemical feedstocks</li>
<li><strong>Acids</strong> (sulfuric, phosphoric, hydrochloric): Industrial processes, fertilizers, metal treatment</li>
<li><strong>Alkalis</strong> (caustic soda, ammonia): Chemical production, cleaning agents, refrigerant</li>
<li><strong>Vegetable oils and animal fats</strong> (palm oil, soy oil, tallow): Food, biodiesel, cosmetics</li>
<li><strong>Monomers</strong> (styrene, vinyl acetate, acrylates): Polymer and plastic production</li>
</ul>
<h3>11.3 Reactivity of Chemical Cargoes</h3>
<p>Chemical reactivity hazards unique to chemical tankers:</p>
<ul>
<li><strong>Polymerization:</strong> Exothermic chain reaction building large molecules from monomers — can be explosive if uncontrolled (styrene, acrylates). Prevented by inhibitors, temperature control, and for some cargoes, O₂ presence.</li>
<li><strong>Water reactivity:</strong> Violent reaction with water (acetic anhydride, isocyanates, phosphorus trichloride). Dry nitrogen padding; absolutely no water washdown or steam heating.</li>
<li><strong>Oxidizer reactivity:</strong> Hydrogen peroxide, nitric acid, and other oxidizers react violently with organic materials and reducing agents. Must never contact organic cargo residues.</li>
<li><strong>Self-heating / Spontaneous combustion:</strong> Certain vegetable oils (drying oils) absorb oxygen and generate heat — risk in soaked insulation or cargo residues.</li>
</ul>',
'text', 11, 90, 1),

(155, 'Chapter 12: Comprehension of the Information Contained in the Material Safety Data Sheets (MSDS)',
'<h2>12. Comprehension of the Information Contained in the Material Safety Data Sheets (MSDS)</h2>
<p>The Material Safety Data Sheet (MSDS), now formally called Safety Data Sheet (SDS) under the GHS system, is the primary source of cargo safety information on a chemical tanker. For chemical tanker operations, the <strong>Chemical Data Sheet (CDS)</strong> serves a similar purpose — outlining the chemical''s physical and chemical properties, hazards, and handling requirements.</p>
<h3>Key MSDS Sections for Chemical Tanker Operations</h3>
<p><strong>Section 2 — Hazard Identification:</strong> GHS classification (flammable liquid, acute toxicity, corrosion, environmental hazard). Determines required warning labels and precautionary statements.</p>
<p><strong>Section 7 — Handling and Storage:</strong> Specific precautions for loading, carrying, and discharging. Temperature limits, compatibility warnings, inhibitor requirements, and atmosphere requirements (inert/air).</p>
<p><strong>Section 8 — Exposure Controls/PPE:</strong> TLV-TWA, STEL, and IDLH values. Required respiratory protection (half-mask, full-face, SCBA), glove material, suit type, and eye protection. This section determines minimum PPE for each job task.</p>
<p><strong>Section 9 — Physical and Chemical Properties:</strong> Flashpoint, boiling point, vapor pressure, density, viscosity, solubility, autoignition temperature, explosive limits. Critical for planning cargo operations and firefighting.</p>
<p><strong>Section 10 — Stability and Reactivity:</strong> Conditions to avoid (heat, moisture, contamination), incompatible materials, and hazardous decomposition products. Determines segregation requirements and emergency response.</p>
<p><strong>Section 14 — Transport Information:</strong> UN number, proper shipping name, hazard class, packing group, marine pollutant status, and special precautions for sea transport (referencing IMDG Code and IBC Code).</p>
<h3>Cargo Information Card (CIC)</h3>
<p>Many terminals provide a Cargo Information Card — a concise one-page summary of the cargo''s key properties and hazards for use by cargo watchkeepers. The CIC must be posted in the cargo control room and at the manifold during operations. All watch officers must read and understand the CIC before assuming the cargo watch.',
'text', 12, 90, 1),

(155, 'Chapter 13: Knowledge and Understanding of the Hazards and Control Measures Associated with Chemical Tanker Cargo Operations',
'<h2>13. Knowledge and Understanding of the Hazards and Control Measures Associated with Chemical Tanker Cargo Operations</h2>
<h3>13.1 Flammability and Explosion</h3>
<p>Many chemical cargoes are highly flammable (flashpoint < 23°C — Class 3 flammable liquid). The flammable range (LEL to UEL) for common chemical solvents is typically 1–15% vapor in air. Control: IGS/nitrogen padding to keep tanks outside flammable range; intrinsically safe equipment; strict no-smoking and no hot-work zones; electrostatic bonding; controlled loading rates for high-resistivity liquids.</p>
<h3>13.2 Toxicity</h3>
<p>Many chemicals are acutely toxic at very low concentrations. The TLV-TWA is the key parameter — for some cargoes (acrylonitrile: 2 ppm; benzene: 0.5 ppm), a single tank entry without proper breathing protection can be immediately life-threatening. Personal monitors, fixed alarms, and mandatory SCBA for entry into tanks recently containing toxic cargoes are essential controls.</p>
<h3>13.3 Health Risks</h3>
<p>Chronic health effects of chemical exposure: carcinogenicity (benzene, vinyl chloride); reproductive toxicity (glycol ethers, some solvents); target organ damage (liver — chlorinated solvents; kidney — some heavy metals in solution; nervous system — many organic solvents). Long-term exposure monitoring and biological exposure index (BEI) testing protect crew health.</p>
<h3>13.4 Inert Gas Composition</h3>
<p>On chemical tankers, <strong>nitrogen</strong> is the preferred inert gas because flue gas from boilers/generators contains CO₂ (reacts with alkali cargoes), moisture (reacts with isocyanates), and particulates (contaminates food-grade or high-purity cargoes). Nitrogen purity must be ≥ 99.5% O₂ content < 0.5% for inerting of reactive cargoes. Nitrogen generators onboard produce nitrogen from compressed air by pressure swing adsorption (PSA) or membrane separation.</p>
<h3>13.5 Electrostatic Risks</h3>
<p>Chemical solvents with low electrical conductivity (toluene, xylene, naphtha, jet fuel) accumulate static charge during pumping more readily than crude oil. The charge relaxation time in high-resistivity liquids is long — static accumulates in the tank liquid. A spark from a dropped tool, switch operation, or personnel movement can ignite accumulated vapors. Control: slow initial loading rate; bonding; approved conductive hoses; 30-minute relaxation period before ullaging or sampling after high-rate transfer.</p>
<h3>13.6 Reactivity</h3>
<p>Reactive chemical cargoes can undergo dangerous reactions if: contaminated with incompatible substances (water, air, trace metals); exposed to heat above stability limits; inhibitor depletes; or mixed with incompatible cargo. Emergency response to runaway reaction: cool tank externally with water spray; do not open tank (pressure buildup); notify emergency services; prepare to abandon ship if reaction cannot be controlled; contact cargo manufacturer''s emergency line immediately.</p>
<h3>13.7 Corrosivity</h3>
<p>Strong acids and bases cause immediate and severe burns to skin, eyes, and respiratory tract. Sulfuric acid at high concentration causes dehydration burns in addition to acid burns. Hydrofluoric acid (HF) penetrates skin — causes deep tissue destruction and systemic fluoride poisoning (life-threatening even from small area burns). PPE for corrosive cargoes: acid suit, face shield, chemical gloves, and chemical boots. Eyewash stations within 10 seconds of work area.</p>
<h3>13.8 Low Boiling Point Cargoes</h3>
<p>Cargoes with boiling points below ambient temperature (liquefied gases) or very low boiling points (diethyl ether: bp 35°C; acetaldehyde: bp 20°C) create hazards: rapid vaporization if spilled → immediate high vapor concentration → flash fire or explosion risk; pressure buildup in tanks during voyage in warm climates. Require pressurized or refrigerated tank systems, and very careful vent management.</p>
<h3>13.9 High Density Cargo</h3>
<p>Dense cargoes (sulfuric acid: 1.84 kg/L; phosphoric acid: 1.7 kg/L) have implications for: stability (low center of gravity — increased GM but check max stress); structural stress (local tank pressure loads); and spill response (heavier-than-water chemicals sink rather than float — different spill containment strategy from oil).</p>
<h3>13.10 Solidification of Cargo</h3>
<p>Cargoes with high pour points (palm oil: 35°C; caustic soda 50% solution: solidifies at 12°C; molasses; sulfur) can solidify in tanks or pipelines if temperature falls below the pour point. Prevention: maintain heating throughout the voyage; monitor tank temperature alarms; pre-heat discharge lines before starting pumps. Recovery from solidification may require steam lancing, heating coils at maximum capacity, and extended port time.</p>
<h3>13.11 Cargo Polymerization</h3>
<p>Polymerization is an exothermic chain reaction converting monomers to polymers. On chemical tankers, uncontrolled polymerization can cause: violent pressure buildup in tanks; fire; structural damage; and loss of vessel. Prevention: maintain inhibitor concentration above minimum specified; control temperature below maximum specified; monitor for signs of polymerization (unexpected temperature rise, pressure increase, discoloration). Emergency response: cool externally; do not open tank vents (explosion risk); contact manufacturer''s emergency hotline immediately.',
'text', 13, 270, 1),

(155, 'Chapter 14: Knowledge and Understanding of the Dangers of Non-Compliance with Regulations and Relevant Rules',
'<h2>14. Knowledge and Understanding of the Dangers of Non-Compliance with Regulations and Relevant Rules</h2>
<h3>Regulatory Framework</h3>
<p>Chemical tanker operations are governed by an extensive regulatory framework. Non-compliance carries severe consequences at multiple levels:</p>
<h3>MARPOL Annex II Non-Compliance</h3>
<p>Illegal discharge of NLS residues (bypassing mandatory pre-washing, falsifying Cargo Record Book entries, making overboard discharges in Special Areas): criminal prosecution of Master and Chief Officer; fines up to millions of dollars; detention of vessel; flag state action; potential loss of the vessel''s trading certificates. Several shipping companies have faced criminal prosecution in the United States for "magic pipe" (illegal bilge discharge bypass) — resulting in multi-million dollar fines and probation orders with court-appointed monitors.</p>
<h3>IBC Code Non-Compliance</h3>
<p>Carrying a cargo not listed on the Certificate of Fitness; exceeding cargo temperature limits; loading without required inhibitor; failing to comply with segregation requirements: Port State Control detention; insurance invalidation; civil liability for any resulting incident; CDI inspection failure — exclusion from major terminal operations.</p>
<h3>STCW Non-Compliance</h3>
<p>Allowing officers without proper ATCH certification to be in charge of chemical cargo operations: flag state action against the ship and company; potential for criminal liability if incident occurs under an uncertified officer; insurance coverage issues.</p>
<h3>The "Magic Pipe" — A Case Study in Non-Compliance</h3>
<p>Numerous shipping companies have been prosecuted for systematic falsification of Oil Record Books and use of bypass pipelines to illegally discharge oily water overboard. These cases result in: criminal conviction of senior officers; company fines exceeding $10 million; 5-year probation with independent compliance monitors; reputational damage ending careers and companies. The lesson: regulatory compliance is not optional, and short-term cost savings from non-compliance are dwarfed by the consequences of detection.',
'text', 14, 60, 1),

(155, 'Chapter 15: Knowledge and Understanding of Safe Working Practices, Including Risk Assessment and Personal Shipboard Safety Relevant to Chemical Tankers',
'<h2>15. Knowledge and Understanding of Safe Working Practices, Including Risk Assessment and Personal Shipboard Safety Relevant to Chemical Tankers</h2>
<h3>15.1 Precautions Before Entering Enclosed Spaces</h3>
<p>Enclosed space entry on chemical tankers is the highest-risk activity onboard. Beyond the standard enclosed space procedures, chemical tankers require cargo-specific atmospheric testing using instruments calibrated for the specific chemical. For cargoes with very low TLV (< 10 ppm), even trace residues make a tank unsafe for entry without SCBA. The Enclosed Space Entry Permit must specify the minimum PPE level including respiratory protection type.</p>
<h3>15.2 Precautions Before and During Repairs and Maintenance Work</h3>
<p>Chemical tanker maintenance requires cargo-specific considerations: confirm tank is gas-free for the specific chemical (not just general HC-free); chemical-resistant materials for replacement gaskets and seals; verification of material compatibility for replacement parts; decontamination of work area before mechanics begin; standby personnel with appropriate emergency response capability for the specific chemical cargo previously carried.</p>
<h3>15.3 Precautions for Hot and Cold Work</h3>
<p>Hot work near chemical tanks is generally more restricted than on oil tankers due to the wider variety of flammable and reactive chemicals. Gas-free certification for hot work must be cargo-specific. Some chemicals (chlorinated solvents) form highly toxic decomposition products (phosgene) when heated — making hot work near residues of these chemicals especially hazardous.</p>
<h3>15.4 Precautions for Electrical Safety</h3>
<p>Explosion-proof (Ex-d) or intrinsically safe (Ex-ia) electrical equipment is mandatory in all hazardous zones. For chemical tankers carrying flammable cargoes, the hazardous zone classification extends further than oil tankers due to lower flashpoints and higher volatility. Portable electrical equipment (lamps, tools) used during tank cleaning must be certified for the specific chemical atmosphere.</p>
<h3>15.5 Use of Appropriate Personal Protective Equipment (PPE)</h3>
<p>PPE for chemical tanker cargo operations must be selected based on the MSDS for each cargo. <strong>Respirators and chemical-resistant gloves</strong> are essential when handling chemicals on a tanker. For different cargo types:</p>
<ul>
<li><strong>Toxic vapors (TLV < 50 ppm):</strong> Full-face SCBA (air-supplied); chemical suit</li>
<li><strong>Corrosive liquids (acids/alkalis):</strong> Chemical splash suit; face shield; chemical gloves and boots; SCBA if vapors present</li>
<li><strong>General cargo operations:</strong> Flame-retardant coveralls; chemical-resistant gloves; safety goggles; hard hat; safety boots</li>
<li><strong>Flammable cargoes:</strong> Anti-static clothing; no synthetic fibers; grounded footwear</li>
</ul>',
'text', 15, 180, 1),

(155, 'Chapter 16: Knowledge and Understanding of Chemical Tanker Emergency Procedures',
'<h2>16. Knowledge and Understanding of Chemical Tanker Emergency Procedures</h2>
<h3>16.1 Ship Emergency Response Plan</h3>
<p>The <strong>SOPEP</strong> (for oil/NLS pollution) and the general Ship Emergency Plan cover all emergency scenarios. For chemical tankers, the emergency plan must additionally include: cargo-specific emergency response cards (from MSDS) for each cargo onboard; contacts for chemical manufacturers'' 24-hour emergency hotlines; decontamination procedures for personnel exposed to chemical cargoes; specific firefighting restrictions for water-reactive cargoes; and evacuation assembly points chosen upwind of cargo areas.</p>
<h3>16.2 Cargo Operations Emergency Shutdown</h3>
<p>ESD for chemical tankers must be executed without hesitation — toxic vapors from many chemicals can incapacitate personnel within seconds of a major release. The OOW must know the ESD activation point and not wait for Master''s approval if immediate hazard exists. After ESD: account for all personnel; assess wind direction and position at upwind muster station; identify the emergency; contact emergency services with specific chemical identity.</p>
<h3>16.3 Actions in the Event of Failure of Systems Essential to Cargo</h3>
<p>For chemical tankers, system failures are cargo-specific in consequence: <strong>Nitrogen system failure</strong> for reactive cargo — suspend cargo operations immediately; monitor temperature; consider emergency port call. <strong>Heating system failure</strong> for cargo near pour point — maximum speed to warm port; monitor temperature continuously. <strong>Inhibitor shortage discovered</strong> — stop voyage; obtain inhibitor from shore; never continue with inhibited cargo below minimum inhibitor concentration.</p>
<h3>16.4 Firefighting on Chemical Tankers</h3>
<p>The correct procedure for dealing with a fire on a chemical tanker is to <strong>evacuate the area and use foam or dry chemical extinguishers</strong>. Water must NEVER be used on water-reactive chemical fires (causes violent reaction). CO₂ is ineffective for large fires in ventilated areas. The specific firefighting agent must be determined from the MSDS of the burning cargo — and the correct agent must be pre-staged based on cargo. For toxic cargo fires: firefighters must wear SCBA; downwind areas must be evacuated; port emergency services notified immediately.</p>
<h3>16.5 Enclosed Space Rescue</h3>
<p>For chemical tanker enclosed space rescue, the chemical-specific hazard determines the rescue approach: for cargoes more dense than air (most chemical vapors), the worst atmosphere is at the bottom of the tank — rescuers must be aware that the casualty in the lowest position may be in the most toxic zone. Rescue harness and lifeline are mandatory — dragging a chemical-exposure casualty out without harness can cause additional injury. Decontamination before medical treatment for chemical exposure casualties.</p>
<h3>16.6 Use of Material Safety Data Sheet (MSDS)</h3>
<p>In a chemical emergency, the MSDS must be immediately accessible. Key information needed: Section 4 (First Aid) — specific antidotes or contraindicated treatments; Section 5 (Firefighting) — compatible agents; Section 6 (Accidental Release) — containment procedures; Section 8 (PPE) — minimum protection for responders. For HF acid: calcium gluconate gel antidote must be available and applied immediately to skin exposure — this information is in the MSDS Section 4.',
'text', 16, 150, 1),

(155, 'Chapter 17: Actions to Be Taken Following Collision, Grounding, or Spillage',
'<h2>17. Actions to Be Taken Following Collision, Grounding, or Spillage</h2>
<h3>Chemical Spill Response — Additional Considerations vs Oil Tankers</h3>
<p>Chemical spills require immediate identification of the spilled substance before response actions, because the wrong response can make matters worse:</p>
<ul>
<li><strong>Water-reactive chemicals</strong> (acetic anhydride, phosphorus trichloride): Do NOT use water for firefighting or decontamination — use dry sand or dry powder to contain</li>
<li><strong>Oxidizers</strong> (hydrogen peroxide, nitric acid): Do NOT use organic materials (sawdust, absorbent pads) for containment — use inorganic absorbents (vermiculite, dry sand)</li>
<li><strong>Dense chemicals</strong> (sulfuric acid, phosphoric acid): Spill sinks — marine pollution response differs from floating oil spill</li>
<li><strong>Volatile toxic chemicals</strong> (acrylonitrile, vinyl chloride): Immediate evacuation of downwind areas; shelter-in-place for shore communities may be required — notify coastal authorities with chemical identity immediately</li>
</ul>
<h3>Immediate Actions for Chemical Spill</h3>
<ol>
<li>Stop the source (close valves, stop pumps — ESD if necessary)</li>
<li>Identify the chemical — consult MSDS/cargo manifest</li>
<li>Evacuate non-essential personnel upwind</li>
<li>Don appropriate PPE before approaching spill area</li>
<li>Close all deck scuppers</li>
<li>Notify Master, port authority, coastal state — include chemical identity</li>
<li>Contain with appropriate material (check MSDS Section 6)</li>
<li>Activate SOPEP</li>
<li>Contact chemical manufacturer emergency line for specialist advice</li>
</ol>',
'text', 17, 30, 1),

(155, 'Chapter 18: Knowledge of Medical First Aid Procedures on Board Chemical Tankers',
'<h2>18. Knowledge of Medical First Aid Procedures on Board Chemical Tankers</h2>
<h3>Chemical Exposure First Aid — General Principles</h3>
<p>First aid for chemical exposure must be cargo-specific. The MSDS Section 4 provides the definitive first aid guidance for each chemical. The overriding principles are: remove from exposure; decontaminate; support vital functions; seek medical advice via TMAS.</p>
<h3>Inhalation of Toxic Chemical Vapors</h3>
<p>Move victim to fresh air with rescuer wearing appropriate respiratory protection. If breathing has stopped: CPR with supplemental O₂ (100% O₂ for carbon monoxide, H₂S, cyanide compounds). For some chemicals, specific antidotes are available: <strong>H₂S poisoning:</strong> 100% O₂ and amyl nitrite inhalation; <strong>Cyanide compounds:</strong> hydroxocobalamin (Cyanokit) if available; <strong>Ammonia:</strong> O₂, eyes and skin flushed with water. Contact TMAS immediately for guidance.</p>
<h3>Skin and Eye Contact with Corrosive Chemicals</h3>
<p>Flush immediately with large amounts of water (minimum 15–20 minutes). Do not neutralize acid burns with alkali or vice versa — neutralization reaction generates heat and worsens burns. Remove all contaminated clothing while flushing. For <strong>hydrofluoric acid (HF) skin contact</strong>: flush with water, then apply calcium gluconate gel (2.5%) to the affected area — calcium ions bind fluoride ions preventing deep tissue penetration and systemic toxicity. HF burns are life-threatening even from small exposure areas — immediate TMAS consultation and evacuation for medical treatment.</p>
<h3>Ingestion of Chemical Cargo</h3>
<p>Never induce vomiting for corrosive chemicals (acids, alkalis) — secondary esophageal burns on the way back up. Rinse mouth. Give water or milk to dilute if conscious and can swallow. Consult MSDS and TMAS for specific guidance. Prepare for medical evacuation (medevac).</p>
<h3>Decontamination</h3>
<p>Before medical treatment, decontaminate the patient to prevent secondary contamination of medical personnel. For liquid chemical exposure: remove all clothing (cut off if necessary — do not pull over head); flush skin with water; neutralize if specifically recommended by MSDS. Set up a decontamination station at the forward accommodation entrance — contaminated casualty must not enter accommodation without decontamination.',
'text', 18, 180, 1),

(155, 'Chapter 19: Understanding of Procedures to Prevent Pollution of the Atmosphere and the Environment',
'<h2>19. Understanding of Procedures to Prevent Pollution of the Atmosphere and the Environment</h2>
<h3>MARPOL Annex II — NLS Discharge Standards</h3>
<p><strong>MARPOL Annex II</strong> — specifically its significance and purpose — covers the <strong>discharge of cargo residues and tank washings</strong> from chemical tankers. NLS are categorized:</p>
<ul>
<li><strong>Category X:</strong> Major hazard to marine resources/human health or serious harm to amenities. Pre-washing mandatory; washings to port reception. Examples: styrene, acrylonitrile, benzene.</li>
<li><strong>Category Y:</strong> Hazard to marine resources/human health or some harm. Pre-washing if residue > 300L; washings to port reception. Examples: acetone, methanol, toluene.</li>
<li><strong>Category Z:</strong> Minor hazard. May discharge at sea under MARPOL Regulation 13 conditions (> 12nm from land, 7 knots, using approved procedures).</li>
<li><strong>OS (Other Substances):</strong> Not categorized as hazardous — may be discharged at sea (clean water standard).</li>
</ul>
<h3>19.1 Pollution Prevention Requirements of Ship Construction and Equipment</h3>
<p>IBC Code and MARPOL Annex II require: pre-wash equipment for mandatory pre-washing procedures; slop tanks with sufficient capacity; reception facility connections (standard manifold for delivering slops ashore); Cargo Record Book for all NLS operations.</p>
<h3>19.2–19.5 Controlled Operational Pollution, Port Prevention, ORB, Air Pollution</h3>
<p>The same MARPOL operational requirements as oil tankers apply: controlled discharge conditions (distance, speed, rate); zero discharge in port; complete Cargo Record Book entries for all NLS operations signed by Master; MARPOL Annex VI compliance for SOₓ, NOₓ, and VOC emissions. Chemical tankers with high-vapor-pressure toxic cargoes must use vapor recovery systems in ports where VOC management is required.',
'text', 19, 90, 1),

(155, 'Chapter 20: Knowledge and Understanding of Relevant Provisions of MARPOL and Other IMO Instruments',
'<h2>20. Knowledge and Understanding of Relevant Provisions of MARPOL and Other IMO Instruments</h2>
<h3>MARPOL Annex II in Detail</h3>
<p>For chemical tankers, MARPOL Annex II is the primary pollution prevention regulation. Key provisions: mandatory pre-washing procedures for Category X and Y substances before departure from discharge port; Cargo Record Book (Part II for NLS); residue/water mixture discharge conditions; ship survey and certification requirements (International Pollution Prevention Certificate for the Carriage of Noxious Liquid Substances in Bulk — NLS Certificate).</p>
<h3>IBC Code (International Bulk Chemical Code)</h3>
<p>The IBC Code governs design, construction, equipment, and operation of ships carrying dangerous chemicals in bulk. Chapter 17 lists all regulated liquid chemicals with: ship type required (1, 2, or 3); tank type; required equipment; operational requirements; and special requirements. The Certificate of Fitness lists the specific chemicals the vessel is certified to carry — carrying an unlisted chemical is a serious MARPOL and ISM violation.</p>
<h3>BCH Code</h3>
<p>The BCH Code (Bulk Chemical Code) applies to ships built before 1 July 1986 — the predecessor to the IBC Code. Ships built under BCH Code cannot carry all IBC Code Chapter 17 cargoes — the Certificate of Fitness specifies which cargoes are permitted.</p>
<h3>GESAMP Hazard Profiles</h3>
<p>The Group of Experts on the Scientific Aspects of Marine Environmental Protection (GESAMP) evaluates marine pollution risk for each chemical and assigns a hazard profile used in MARPOL Annex II categorization. Understanding GESAMP ratings helps officers assess the environmental consequences of cargo releases and prioritize pollution prevention measures.',
'text', 20, 90, 1),

(155, 'Chapter 21: Sufficient Use of the IBC Code and Related Documents',
'<h2>21. Sufficient Use of the IBC Code and Related Documents</h2>
<h3>Structure of the IBC Code</h3>
<p>The IBC Code consists of:</p>
<ul>
<li><strong>Chapters 1–16:</strong> Construction, equipment, and operational requirements applicable to all chemical tankers</li>
<li><strong>Chapter 17:</strong> Summary of minimum requirements for each regulated chemical (the main cargo list)</li>
<li><strong>Chapter 18:</strong> Cargoes for which preliminary suitable conditions have been prescribed</li>
<li><strong>Chapter 19:</strong> Cargoes not subject to the IBC Code</li>
<li><strong>Appendices:</strong> Compatibility tables, lists of products, glossary</li>
</ul>
<h3>Reading the Chapter 17 Table</h3>
<p>Each cargo in Chapter 17 has a row specifying: chemical name; UN number; hazard; ship type required; tank type; tank venting; temperature controls; electrical equipment; gauging; vapor detection; fire extinction; PPE; special requirements. Officers must be able to look up any cargo in Chapter 17 and determine what the ship must be equipped with and how the cargo must be handled.</p>
<h3>Related Documents</h3>
<p><strong>ISGOTT</strong> (also referenced for chemical tankers for general ship-terminal interface procedures); <strong>Tanker Safety Guide (Chemicals)</strong> — published by ICS, the equivalent of ISGOTT for chemical tankers; <strong>CDI (Chemical Distribution Institute) Vessel Inspection Questionnaire:</strong> The CDI MCDIQ (Marine Chemical Distributor Inspection Questionnaire) is used by major chemical companies to verify a ship''s suitability — CDI approval is required to load for many major chemical shippers; <strong>OCIMF SIRE system</strong> — also used for chemical tanker inspections.</p>
<h3>Certificate of Fitness</h3>
<p>The <strong>International Certificate of Fitness for the Carriage of Dangerous Chemicals in Bulk</strong> is issued by the flag state or its recognized organization after verifying the ship meets IBC Code requirements for specific cargoes. The certificate lists: permitted products (by name, UN number, and allowed quantity); special requirements; and any operational restrictions. The officer must verify every intended cargo is on the Certificate of Fitness before loading.',
'text', 21, 180, 1),

(155, 'Chapter 22: Case Studies and Discussion',
'<h2>22. Case Studies and Discussion</h2>
<h3>Case Study 1: Polymerization Incident — Chemical Tanker Carrying Styrene</h3>
<p><strong>What happened:</strong> A chemical tanker carrying styrene monomer experienced a runaway polymerization during a long voyage in tropical waters. The inhibitor (TBC) had been depleted, and the cargo temperature exceeded 25°C. Tank pressure began rising rapidly. The vessel had to make an emergency port call and the cargo was found to have significantly polymerized, creating a gel-like mass that blocked pump intakes and solidified in pipelines.</p>
<p><strong>Contributing factors:</strong> Inhibitor concentration not verified at load port; voyage duration exceeded the calculated inhibitor effectiveness period; no temperature alarms set for styrene upper limit; no monitoring of tank oxygen content (TBC requires oxygen to function as inhibitor — nitrogen padding would have accelerated inhibitor depletion).</p>
<p><strong>Lessons learned:</strong> Always obtain a certificate of inhibitor type and concentration; calculate maximum safe voyage duration based on inhibitor effectiveness; set temperature alarms based on cargo specification; for styrene and similar oxygen-requiring inhibited monomers — maintain air (not nitrogen) padding; monitor cargo temperature daily and report to shore management if approaching limits.</p>
<h3>Case Study 2: Personnel Injury from Chemical Exposure During Tank Cleaning</h3>
<p><strong>What happened:</strong> During hot water washing of a tank that had previously carried methanol, a crew member entered the tank without SCBA to retrieve a dropped tool. He collapsed within seconds. A second crew member ran to help and also collapsed. Both were rescued by a third crew member wearing SCBA. Both casualties suffered significant methanol poisoning — one suffered permanent vision damage.</p>
<p><strong>Contributing factors:</strong> No enclosed space entry permit; residual methanol vapor (TLV: 200 ppm; can be rapidly incapacitating at high concentrations) not adequately cleared; no atmospheric testing before entry; no buddy system; no rescue equipment staged at tank entry.</p>
<p><strong>Lessons learned:</strong> Tank cleaning creates toxic vapor conditions even after washing — the warm water volatilizes residual cargo; NEVER enter a tank during or immediately after cleaning without SCBA; methanol vapor is colorless and odorless at low concentrations — you cannot smell danger; rescue must be done with SCBA; vision loss from methanol is permanent.</p>
<h3>Case Study 3: Cargo Contamination — Compatibility Failure</h3>
<p><strong>What happened:</strong> A chemical tanker was asked to load palm kernel oil in tanks previously containing caustic soda (sodium hydroxide). The tanks were washed and appeared clean on visual inspection, but wall wash tests were not performed. The caustic soda residue saponified the vegetable oil cargo — creating a soap-like contamination. The entire cargo (valued at $2 million) was rejected by the consignee.</p>
<p><strong>Lessons learned:</strong> Visual inspection is insufficient for chemical tank cleanliness — appropriate chemical tests (wall wash, pH test) must be performed; the compatibility between previous and next cargo must be documented and approved; the company procedure for cargo changeover approval must be followed — not bypassed under commercial pressure; the Chief Officer has the authority and responsibility to refuse loading if tank cleanliness is not verified to the required standard.</p>
<h3>Summary</h3>
<p>Advanced training for chemical tanker operations exists because chemical cargoes present hazards that can kill rapidly, cause permanent injury, destroy cargo value, and pollute the environment far more severely than petroleum products. The competent chemical tanker officer combines regulatory knowledge (IBC Code, MARPOL Annex II), chemical hazard awareness (MSDS, TLV, reactivity), operational discipline (procedures, checklists, permits), and emergency response capability (specific first aid, evacuation, firefighting). This knowledge protects the crew, the ship, the cargo, and the marine environment.',
'text', 22, 240, 1);


-- ═══════════════════════════════════════════════════════════
-- QUIZ
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_quizzes (course_id, lesson_id, title, description, pass_percentage, time_limit, is_active)
VALUES (155, NULL,
  'Theoretical Evaluation — ATCH',
  'Final theoretical evaluation for Advanced Training for Chemical Tanker Cargo Operations. Regulation V/1-1, Paragraph 6.3, Section A-V/1-1, Paragraph 3 and Table A-V/1-1-3 of STCW 78 as amended. Minimum passing score: 70%.',
  70.00, 45, 1);

SET @quiz_id = LAST_INSERT_ID();

-- ═══════════════════════════════════════════════════════════
-- QUESTIONS (20)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'Which international regulation governs the transport of hazardous chemicals by sea?', 'multiple_choice', 1, 1),
(@quiz_id, 'What is the primary purpose of the Chemical Data Sheet (CDS) for chemical tankers?', 'multiple_choice', 1, 2),
(@quiz_id, 'In the event of a chemical spill, what is the first step that should be taken?', 'multiple_choice', 1, 3),
(@quiz_id, 'What does the acronym IBC stand for in the context of chemical tankers?', 'multiple_choice', 1, 4),
(@quiz_id, 'Which document should be checked to ensure compliance with the safety and environmental regulations for chemical tankers?', 'multiple_choice', 1, 5),
(@quiz_id, 'What type of personal protective equipment (PPE) is essential when handling chemicals on a tanker?', 'multiple_choice', 1, 6),
(@quiz_id, 'What is the primary function of an Inert Gas System (IGS) on a chemical tanker?', 'multiple_choice', 1, 7),
(@quiz_id, 'Which of the following is NOT typically included in a Chemical Tanker''s Cargo Record Book?', 'multiple_choice', 1, 8),
(@quiz_id, 'What is the primary risk associated with the cargo tank cleaning process on a chemical tanker?', 'multiple_choice', 1, 9),
(@quiz_id, 'What should be done if a chemical cargo is found to be incompatible with the vessel''s current cargo?', 'multiple_choice', 1, 10),
(@quiz_id, 'Which type of pump is commonly used for transferring chemicals in bulk on chemical tankers?', 'multiple_choice', 1, 11),
(@quiz_id, 'What is the purpose of a cargo tank''s thermal insulation on a chemical tanker?', 'multiple_choice', 1, 12),
(@quiz_id, 'What is the correct procedure for dealing with a fire on board a chemical tanker?', 'multiple_choice', 1, 13),
(@quiz_id, 'Which section of the ship is primarily responsible for handling and monitoring the chemical cargo operations?', 'multiple_choice', 1, 14),
(@quiz_id, 'What is the significance of the MARPOL Annex II regulations?', 'multiple_choice', 1, 15),
(@quiz_id, 'What is the purpose of a vapor detection system on a chemical tanker?', 'multiple_choice', 1, 16),
(@quiz_id, 'When conducting cargo operations, what is crucial to ensure the safety of the crew and the integrity of the cargo?', 'multiple_choice', 1, 17),
(@quiz_id, 'What does the term "stowage" refer to in the context of chemical cargo operations?', 'multiple_choice', 1, 18),
(@quiz_id, 'What is the role of the Certificate of Fitness on a chemical tanker?', 'multiple_choice', 1, 19),
(@quiz_id, 'Which action is required before entering a cargo tank on a chemical tanker?', 'multiple_choice', 1, 20);

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
-- OPTIONS (correct answers from official exam highlighted)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
-- Q1: IMDG Code ✓ (c)
(@q1, 'SOLAS', 0, 1),
(@q1, 'MARPOL', 0, 2),
(@q1, 'IMDG Code', 1, 3),
(@q1, 'ISPS Code', 0, 4),

-- Q2: To outline the chemical''s physical and chemical properties ✓ (c)
(@q2, 'To provide information on cargo handling procedures', 0, 1),
(@q2, 'To list emergency response measures', 0, 2),
(@q2, 'To outline the chemical''s physical and chemical properties', 1, 3),
(@q2, 'To detail the cargo''s loading and unloading rates', 0, 4),

-- Q3: Stop the source of the leak ✓ (c)
(@q3, 'Notify the port authority', 0, 1),
(@q3, 'Evacuate all personnel', 0, 2),
(@q3, 'Stop the source of the leak', 1, 3),
(@q3, 'Begin decontamination procedures', 0, 4),

-- Q4: International Bulk Chemical Code ✓ (c)
(@q4, 'International Bulk Chemical', 0, 1),
(@q4, 'International Bulk Container', 0, 2),
(@q4, 'International Bulk Chemical Code', 1, 3),
(@q4, 'International Bulk Cargo', 0, 4),

-- Q5: The International Safety Management (ISM) Code ✓ (b)
(@q5, 'The Ship''s Log', 0, 1),
(@q5, 'The International Safety Management (ISM) Code', 1, 2),
(@q5, 'The International Maritime Solid Bulk Cargoes (IMSBC) Code', 0, 3),
(@q5, 'The Chemical Tanker Safety Management Plan', 0, 4),

-- Q6: Respirator and chemical-resistant gloves ✓ (c)
(@q6, 'Hard hat and safety boots', 0, 1),
(@q6, 'Flame retardant coveralls and gloves', 0, 2),
(@q6, 'Respirator and chemical-resistant gloves', 1, 3),
(@q6, 'Life jacket and safety harness', 0, 4),

-- Q7: To maintain an atmosphere with low oxygen to prevent explosions ✓ (c)
(@q7, 'To reduce cargo heating', 0, 1),
(@q7, 'To prevent cargo evaporation', 0, 2),
(@q7, 'To maintain an atmosphere with low oxygen to prevent explosions', 1, 3),
(@q7, 'To assist in cargo tank cleaning', 0, 4),

-- Q8: List of crew members ✓ (b) — NOT in Cargo Record Book
(@q8, 'Details of cargo transfers', 0, 1),
(@q8, 'List of crew members', 1, 2),
(@q8, 'Information on cargo contamination incidents', 0, 3),
(@q8, 'Records of emergency drills', 0, 4),

-- Q9: Chemical exposure and respiratory hazards ✓ (b)
(@q9, 'Mechanical failure of pumps', 0, 1),
(@q9, 'Chemical exposure and respiratory hazards', 1, 2),
(@q9, 'Fire due to static electricity', 0, 3),
(@q9, 'Excessive noise pollution', 0, 4),

-- Q10: Discontinue loading and seek advice from the shipper or manufacturer ✓ (c)
(@q10, 'Proceed with the loading and notify the authorities later', 0, 1),
(@q10, 'Transfer the cargo to another vessel', 0, 2),
(@q10, 'Discontinue loading and seek advice from the shipper or manufacturer', 1, 3),
(@q10, 'Mix the incompatible chemicals with caution', 0, 4),

-- Q11: Diaphragm pump ✓ (b)
(@q11, 'Gear pump', 0, 1),
(@q11, 'Diaphragm pump', 1, 2),
(@q11, 'Centrifugal pump', 0, 3),
(@q11, 'Screw pump', 0, 4),

-- Q12: To reduce cargo temperature fluctuations ✓ (a)
(@q12, 'To reduce cargo temperature fluctuations', 1, 1),
(@q12, 'To prevent corrosion of the tank', 0, 2),
(@q12, 'To maintain the tank''s structural integrity', 0, 3),
(@q12, 'To improve the tank''s aerodynamics', 0, 4),

-- Q13: Evacuate the area and use foam or dry chemical extinguishers ✓ (b)
(@q13, 'Use water to extinguish the fire', 0, 1),
(@q13, 'Evacuate the area and use foam or dry chemical extinguishers', 1, 2),
(@q13, 'Attempt to put out the fire with a fire hose immediately', 0, 3),
(@q13, 'Use a CO2 extinguisher and then ventilate the area', 0, 4),

-- Q14: Cargo control room ✓ (c)
(@q14, 'Engine room', 0, 1),
(@q14, 'Bridge', 0, 2),
(@q14, 'Cargo control room', 1, 3),
(@q14, 'Navigation deck', 0, 4),

-- Q15: They cover the discharge of cargo residues and tank washings ✓ (d)
(@q15, 'They address the prevention of pollution by oil', 0, 1),
(@q15, 'They focus on the handling and disposal of harmful substances', 0, 2),
(@q15, 'They set standards for the construction and equipment of chemical tankers', 0, 3),
(@q15, 'They cover the discharge of cargo residues and tank washings', 1, 4),

-- Q16: To detect and measure the concentration of harmful vapors ✓ (b)
(@q16, 'To monitor the temperature of the cargo', 0, 1),
(@q16, 'To detect and measure the concentration of harmful vapors', 1, 2),
(@q16, 'To control the rate of cargo discharge', 0, 3),
(@q16, 'To regulate the flow of inert gas', 0, 4),

-- Q17: Following the cargo handling procedures and safety guidelines ✓ (b)
(@q17, 'Regularly checking the ship''s GPS', 0, 1),
(@q17, 'Following the cargo handling procedures and safety guidelines', 1, 2),
(@q17, 'Maintaining a high speed during cargo transfer', 0, 3),
(@q17, 'Using outdated safety equipment for cost efficiency', 0, 4),

-- Q18: The arrangement and placement of cargo in the ship''s tanks ✓ (b)
(@q18, 'The process of cleaning the cargo tanks', 0, 1),
(@q18, 'The arrangement and placement of cargo in the ship''s tanks', 1, 2),
(@q18, 'The method of transferring cargo between vessels', 0, 3),
(@q18, 'The procedure for securing cargo during transit', 0, 4),

-- Q19: It certifies the ship is fit to carry specific chemicals ✓ (b)
(@q19, 'It confirms the ship has passed the latest port state control inspection', 0, 1),
(@q19, 'It certifies the ship is fit to carry specific chemicals listed in the certificate', 1, 2),
(@q19, 'It confirms the ship complies with SOLAS Chapter II fire safety requirements', 0, 3),
(@q19, 'It proves the ship has adequate crew for the voyage', 0, 4),

-- Q20: Ensure the tank atmosphere is tested and confirmed safe for entry ✓ (d)
(@q20, 'Obtain permission from the port authority', 0, 1),
(@q20, 'Notify the Chief Engineer', 0, 2),
(@q20, 'Wear a life jacket before entering', 0, 3),
(@q20, 'Ensure the tank atmosphere is tested and confirmed safe for entry', 1, 4);

-- ═══════════════════════════════════════════════════════════
-- VERIFY
-- ═══════════════════════════════════════════════════════════
SELECT 'Lessons created:' AS info, COUNT(*) AS total FROM lms_lessons WHERE course_id=155;
SELECT 'Quiz created:' AS info, COUNT(*) AS total FROM lms_quizzes WHERE course_id=155;
SELECT 'Questions created:' AS info, COUNT(*) AS total FROM lms_questions WHERE quiz_id=@quiz_id;
SELECT 'Options created:' AS info, COUNT(*) AS total FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id);
