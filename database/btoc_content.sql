-- BTOC Course Content: Lessons + Quiz + Questions
-- Course ID: 153

SET @course_id = 153;

-- ═══════════════════════════════════════════════════════════
-- LESSONS (10 chapters)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(153, 'Chapter 1: Oil Ships',
'<h2>1. Oil Ships</h2>
<h3>1.1 Types of Oil Tankers</h3>
<p>Oil tankers are classified by size and capacity: <strong>General Purpose</strong> (6,000–25,000 DWT), <strong>Medium Range (MR)</strong> (25,000–45,000 DWT), <strong>Large Range 1 (LR1)</strong> (45,000–80,000 DWT), <strong>Large Range 2 (LR2)</strong> (80,000–160,000 DWT), <strong>VLCC – Very Large Crude Carrier</strong> (160,000–320,000 DWT), and <strong>ULCC – Ultra Large Crude Carrier</strong> (over 320,000 DWT). <strong>OBO vessels</strong> (Oil/Bulk/Ore) carry petroleum or mineral cargo in bulk.</p>
<h3>1.2 Types of Chemical Tankers</h3>
<p>Chemical tankers are categorized by IMO as <strong>Type 1</strong> (most hazardous, maximum containment), <strong>Type 2</strong> (moderately hazardous), and <strong>Type 3</strong> (least hazardous). They are designed to carry a wide range of liquid chemicals in bulk.</p>
<h3>1.3 Basic Knowledge for General Management of Oil and Chemical Tankers</h3>
<p>Tanker management requires knowledge of cargo properties, vessel stability, cargo planning, and operational procedures. The Master and officers must be familiar with the cargo characteristics, the ship''s equipment, and applicable regulations (SOLAS, MARPOL, STCW).</p>
<h3>1.4 Pumps and Eductors</h3>
<p>Cargo pumps transfer liquid cargo between tanks and shore installations. <strong>Centrifugal pumps</strong> are most common for cargo transfer. <strong>Eductors</strong> use a motive fluid to create suction, often used for stripping tanks. Proper operation prevents cargo loss and equipment damage.</p>
<h3>1.5 Cargo System with Heaters</h3>
<p>Heating coils or heat exchangers maintain cargo at the required temperature, especially for high-viscosity oils. Steam or thermal oil is commonly used as the heating medium. Monitoring temperature prevents cargo solidification or overheating.</p>
<h3>1.6 Inert Gas System (IGS)</h3>
<p>The <strong>Inert Gas System</strong> maintains a non-flammable atmosphere in cargo tanks by replacing hydrocarbon vapors with inert gas (flue gas, N₂, or CO₂). This prevents explosion by keeping oxygen content below 8%. The IGS is critical during loading, discharge, and tank cleaning operations.</p>
<h3>1.7 Onboard System Measures</h3>
<p>Onboard systems include cargo monitoring, high-level alarms, overflow control, vapor emission control systems (VECS), and pressure/vacuum (P/V) valves. Regular testing and maintenance of these systems is mandatory under SOLAS and MARPOL regulations.</p>',
'text', 1, 15, 1),

(153, 'Chapter 2: Chemical and Physical Properties of Oil',
'<h2>2. Chemical and Physical Properties of Oil</h2>
<h3>2.1 Basic Physics</h3>
<p><strong>Density and Specific Gravity:</strong> Oil is less dense than water (SG < 1.0), which is why it floats. <strong>Viscosity</strong> describes a liquid''s resistance to flow — higher viscosity requires heating for pumping. <strong>Vapor Pressure</strong> is the pressure exerted by a vapor in equilibrium with its liquid — higher vapor pressure means more volatile cargo. <strong>Boiling Point</strong> is the temperature at which a liquid converts to vapor at atmospheric pressure.</p>
<p><strong>Free Surface Effect:</strong> Partially filled tanks create a free surface that reduces ship stability. To minimize this effect, tanks should be filled to nearly 90% or kept empty. <strong>Distillation</strong> is the process of separating substances in a mixture by exploiting differences in volatility.</p>
<h3>2.2 Basic Chemistry and Chemical Elements</h3>
<p>Petroleum is a complex mixture of <strong>hydrocarbons</strong> (compounds of carbon and hydrogen). Main groups include <strong>paraffins, naphthenes,</strong> and <strong>aromatics</strong>. Refining processes separate crude oil into fractions: naphtha, gasoline, kerosene, diesel, fuel oil, and lubricating oils. <strong>Natural Gas (LNG)</strong> is pressurized and cooled to −162°C to liquefy it for transport and storage.</p>
<h3>2.3 Physical and Chemical Properties of Oil in Bulk Transport</h3>
<p>Key properties during transport include: <strong>Flashpoint</strong> — the lowest temperature at which a liquid gives off sufficient vapor to form a flammable mixture near its surface; <strong>Autoignition temperature</strong> — minimum temperature for spontaneous combustion without an ignition source; <strong>Flammable range (LEL/UEL)</strong> — the range of vapor concentration in air that will ignite. Petroleum with a flash point below 60°C is classified as flammable. The risk of <strong>spontaneous combustion</strong> is highest with vegetable oils (drying oils like linseed oil).</p>',
'text', 2, 30, 1),

(153, 'Chapter 3: Safety Culture and Safety Management Onboard Oil Tankers',
'<h2>3. Understanding of the Safety Culture Onboard Oil Tankers and Safety Management</h2>
<p>A strong safety culture is essential on tankers due to the hazardous nature of cargo. This includes adherence to the <strong>International Safety Management (ISM) Code</strong>, which requires shipping companies to have a documented Safety Management System (SMS).</p>
<h3>Key Elements of Safety Culture</h3>
<ul>
<li><strong>Permit-to-Work Systems:</strong> Formal authorization required before starting dangerous tasks (hot work, enclosed space entry, electrical work).</li>
<li><strong>Toolbox Talks:</strong> Pre-task safety briefings identifying hazards and control measures.</li>
<li><strong>Near-Miss Reporting:</strong> Encouraging crew to report near-misses to prevent accidents.</li>
<li><strong>Safety Drills:</strong> Regular drills for fire, abandon ship, man overboard, and oil spill response.</li>
<li><strong>Personal Responsibility:</strong> Every crew member is responsible for their own safety and that of colleagues.</li>
</ul>
<h3>Safety Management</h3>
<p>The <strong>ISM Code</strong> (SOLAS Chapter IX) requires: documented procedures for all safety-critical operations; designated persons ashore (DPA); regular internal audits; non-conformance reporting; and continuous improvement. The <strong>Ship Safety Officer</strong> coordinates safety activities onboard. Regular safety committee meetings review incidents and near-misses.</p>',
'text', 3, 30, 1),

(153, 'Chapter 4: Risks and Risk Control',
'<h2>4. Risks Onboard Oil and Chemical Tankers</h2>
<h2>4.1 Risks</h2>
<h3>4.1.1 Health Risks</h3>
<p>Exposure to petroleum vapors and chemical cargoes can cause respiratory irritation, skin and eye damage, and long-term health effects including carcinogenicity. Benzene, found in crude oil, is a known carcinogen. <strong>MSDS (Material Safety Data Sheets)</strong> provide health risk information for each cargo.</p>
<h3>4.1.2 Environmental Risks</h3>
<p>Oil spills devastate marine ecosystems, harming marine life, birds, and coastal environments. MARPOL Annex I regulates oil discharge from tankers. <strong>Special Areas</strong> designated by MARPOL have zero discharge tolerance.</p>
<h3>4.1.3 Reactivity Risks</h3>
<p>Some chemicals react violently with water, air, or other chemicals. Cargo incompatibility can cause dangerous reactions including fire, explosion, or toxic gas release. <strong>Cargo segregation</strong> prevents incompatible products from mixing.</p>
<h3>4.1.4 Corrosion Risks</h3>
<p>Acids, alkalis, and other corrosive chemicals can damage ship structures, pipelines, and equipment. Regular inspection and use of appropriate materials (stainless steel tanks for aggressive chemicals) mitigates corrosion risk.</p>
<h3>4.1.5 Explosion and Flammability Risks</h3>
<p>Hydrocarbon vapors mixed with air within the <strong>flammable range (LEL to UEL)</strong> can explode if ignited. The <strong>Lower Explosive Limit (LEL)</strong> and <strong>Upper Explosive Limit (UEL)</strong> define this range. Prevention: inerting, ventilation, and eliminating ignition sources.</p>
<h3>4.1.6 Electrostatic Risks Including Ignition Sources</h3>
<p>Static electricity generated during cargo transfer can accumulate and discharge as a spark — a potential ignition source. <strong>Antistatic measures</strong> include bonding (connecting the ship to shore), using antistatic hoses, and controlling loading rates to reduce turbulence.</p>
<h3>4.1.7 Toxicity Risks</h3>
<p>Many petroleum products and chemicals are toxic. Hydrogen Sulfide (H₂S) in crude oil is extremely toxic at low concentrations (> 20 ppm). Benzene and other aromatics are carcinogenic. <strong>MSDS sheets</strong> specify TLV (Threshold Limit Values) and emergency procedures.</p>
<h3>4.1.8 Leaks and Vapor Clouds</h3>
<p>Cargo leaks create vapor clouds that are flammable and/or toxic. Immediate response: stop transfer operations, activate IGS, alert crew, ventilate affected areas, and investigate the source.</p>
<h2>4.2 Risk Control</h2>
<h3>4.2.1 Inertization, Water Refill, Desiccant Agents and Technical Vigilance</h3>
<p>Inerting replaces oxygen with inert gas (IGS) keeping O₂ below 8%. Regular monitoring with fixed and portable gas detectors is required. Nitrogen padding is used for certain chemical cargoes.</p>
<h3>4.2.2 Antistatic Measures</h3>
<p>Bond ship to shore before connecting hoses. Use approved antistatic hoses. Restrict loading rates during initial stages. Prohibit synthetic clothing in cargo areas. Use intrinsically safe equipment.</p>
<h3>4.2.3 Ventilation</h3>
<p>Forced ventilation removes toxic/flammable vapors from cargo pump rooms and enclosed spaces. Ensure adequate air changes per hour. Monitor with gas detectors before entry.</p>
<h3>4.2.4 Segregation of Cargo</h3>
<p>Incompatible cargoes must be physically separated. The <strong>IBC Code</strong> (International Bulk Chemical Code) specifies segregation requirements. Cargo plans must clearly show segregation arrangements.</p>
<h3>4.2.5 Cargo Inhibition</h3>
<p>Some chemicals require inhibitors to prevent polymerization, oxidation, or other dangerous reactions during transport. Inhibitor concentration must be checked and maintained throughout the voyage.</p>
<h3>4.2.6 Importance of Cargo Compatibility</h3>
<p>Before loading, verify that new cargo is compatible with previous cargo residues, tank coating, and other cargoes onboard. Use compatibility charts and MSDS information.</p>
<h3>4.2.7 Atmospheric Control</h3>
<p>Continuous monitoring of tank atmosphere for O₂, HC vapors, and toxic gases is essential. Fixed gas detection systems and portable instruments are used. Records must be maintained.</p>
<h3>4.2.8 Gas Trial</h3>
<p>Before declaring a tank gas-free, multiple measurements at different levels confirm safe atmosphere (O₂ ≥ 20.8%, HC < 1% LEL, H₂S < 1 ppm).</p>
<h3>4.2.9 Understanding Material Safety Data Sheets (MSDS)</h3>
<p>MSDS (now called SDS — Safety Data Sheet) contains: chemical identity, physical/chemical properties, health hazards, fire/explosion hazards, reactivity, PPE requirements, first aid, spill response, and disposal. Every crew member must understand how to read and use MSDS information.</p>',
'text', 4, 45, 1),

(153, 'Chapter 5: Safety Equipment and Safe Working Practices',
'<h2>5. Safety</h2>
<h3>5.1 Function and Correct Use of Instruments to Measure Gas</h3>
<p>Gas measuring instruments are critical for safety:</p>
<ul>
<li><strong>Combustible Gas Indicator (Explosimeter):</strong> Measures hydrocarbon/air mixtures as a percentage of the Lower Flammable Limit (LFL/LEL). Used before hot work and tank entry.</li>
<li><strong>Oxygen Analyzer:</strong> Measures O₂ concentration. Normal atmosphere: 20.8%. Entry requires ≥ 20.8% O₂.</li>
<li><strong>Toxic Gas Detector:</strong> Measures specific toxic gases (H₂S, benzene, CO). Calibrate before use. Results guide PPE selection.</li>
<li><strong>Portable Multi-Gas Detector:</strong> Combines O₂, LEL, H₂S, and CO measurement in one instrument.</li>
</ul>
<h3>5.2 Adequate Use of Safety Instruments and Protection Devices</h3>
<h4>5.2.1 Autonomous Breathing Equipment and Tanker Evacuation Equipment</h4>
<p><strong>Self-Contained Breathing Apparatus (SCBA)</strong> provides independent air supply for 30–60 minutes. Essential for rescue in oxygen-deficient or toxic atmospheres. <strong>Emergency Escape Breathing Device (EEBD)</strong> provides 10–15 minutes of breathable air for emergency egress only (not for work). Must be stored at muster stations and tank access points.</p>
<h4>5.2.2 Protection Dressing and Equipment</h4>
<p>PPE includes: chemical-resistant suits, gloves, boots, and goggles for chemical cargo handling; flame-retardant clothing; hard hats; and safety shoes. Selection depends on cargo hazard level per MSDS.</p>
<h4>5.2.3 Reanimation Equipment</h4>
<p>Resuscitation equipment includes manual resuscitators (Ambu bags), oxygen kits, and AED (Automated External Defibrillator). All crew must be trained in basic first aid and CPR.</p>
<h4>5.2.4 Search and Escape Equipment</h4>
<p>Lifelines, rescue harnesses, and escape routes must be clearly marked and kept clear. Immersion suits, life jackets, and liferafts are available for emergency abandonment.</p>
<h3>5.3 Safe Practices in Accordance with Regulations and Industry Guidelines</h3>
<h4>5.3.1 Precautions Before Entering Totally Closed Spaces</h4>
<p>Enclosed space entry requires: Permit-to-Work authorization; atmospheric testing (O₂, LEL, toxic gases); adequate ventilation; standby person at entrance with SCBA; communication procedures; and rescue equipment ready. Never enter an enclosed space without authorization.</p>
<h4>5.3.2 Precautions for Repair and Maintenance in Dangerous Areas</h4>
<p>Hot work (welding, grinding) in or near cargo areas requires a Hot Work Permit. The area must be gas-free and verified by combustible gas testing. Fire watches must be posted during and after work.</p>
<h4>5.3.3 Safety Measures to Work (Hot and Cold)</h4>
<p><strong>Hot work:</strong> Requires gas-free certification, fire watch, permits, and adjacent area protection. <strong>Cold work:</strong> Use non-sparking tools in hazardous areas. Avoid synthetic clothing that generates static. Ground equipment before use.</p>
<h4>5.3.4 Safety Precautions to Work with Electricity</h4>
<p>Only intrinsically safe or explosion-proof electrical equipment is permitted in hazardous zones. Isolate and lock out electrical systems before maintenance (LOTO). Check for electrical bonding between ship and shore.</p>
<h3>5.4 First Aid Regarding Material Safety Data Sheets (MSDS)</h3>
<p>First aid for chemical exposure: <strong>Inhalation</strong> — move victim to fresh air, apply oxygen, seek medical help. <strong>Skin contact</strong> — flush with large amounts of water for minimum 15 minutes, remove contaminated clothing. <strong>Eye contact</strong> — flush with clean water for 15–20 minutes, do not rub eyes. <strong>Ingestion</strong> — do not induce vomiting (unless MSDS specifies), seek immediate medical assistance. Always consult the MSDS for cargo-specific first aid instructions.</p>',
'text', 5, 45, 1),

(153, 'Chapter 6: Safety Against Fires and Firefighting Operations',
'<h2>6. Safety Against Fires and Firefighting Operations</h2>
<h3>6.1 Organization and Measures Against Fires Onboard Tankers</h3>
<p>The <strong>Fire Triangle</strong> requires fuel, oxygen, and heat — removing any element extinguishes the fire. Tanker fire organization includes: designated fire teams with specific roles; fire station muster procedures; and pre-designated firefighting positions. <strong>Fire Muster Lists</strong> (station bills) assign crew to firefighting duties. Regular fire drills are mandatory under SOLAS.</p>
<h3>6.2 Fire Risks During Cargo Handling</h3>
<p>During cargo operations, vapor accumulation near vents, manifold areas, and open ullage ports creates fire risk. Ignition sources — smoking, open flames, sparks from metal tools, static electricity, electrical faults — must be eliminated. <strong>No smoking policies</strong> apply in all cargo areas. Hot work is strictly prohibited during cargo operations.</p>
<h3>6.3 Agents for Firefighting Hydrocarbon and Chemical Fires</h3>
<p>Extinguishing agents by fire type:</p>
<ul>
<li><strong>Foam (AFFF):</strong> Most effective for petroleum/hydrocarbon fires — smothers by separating fuel from air.</li>
<li><strong>Dry Chemical Powder (DCP):</strong> Effective for chemical fires, interrupts chain reaction.</li>
<li><strong>CO₂:</strong> Displaces oxygen, used in enclosed machinery spaces (not open deck).</li>
<li><strong>Water (fog/spray):</strong> Cools structures, protects personnel, dilutes water-miscible chemicals.</li>
<li><strong>Halon alternatives (FE-36, Novec):</strong> Clean agent systems for sensitive equipment.</li>
</ul>
<h3>6.4 Operation of Fixed Foam-Based Firefighting Systems</h3>
<p>Fixed foam systems cover cargo tank decks with foam to extinguish fires. Operation sequence: activate the foam system from the fire control station; open foam concentrate valves; start foam pumps; direct foam monitors to the fire. Two persons minimum required for operation. Annual testing and inspection mandatory.</p>
<h3>6.5 Operation of Portable Foam-Based Fire Extinguishers</h3>
<p>Portable foam extinguishers (9–50 liters) are used for initial attack on small fires. Operation: remove safety pin; aim nozzle at base of fire; squeeze handle; apply foam in gentle arc over burning liquid (do not aim directly into liquid). Effective range: 3–6 meters.</p>
<h3>6.6 Operation of Fixed Dry Chemical Agent Systems</h3>
<p>Dry chemical systems are activated for chemical cargo fires where foam is ineffective. The DCP suppresses fire by interrupting the chemical chain reaction. Monitor ventilation during discharge as DCP creates visibility problems. Systems must be inspected quarterly and recharged after any discharge.</p>
<h3>6.7 Spill Containment Regarding Firefighting</h3>
<p>During firefighting involving cargo spills: contain the spill using portable dams, absorbent materials, and the ship''s drainage system. Prevent burning liquid from reaching drains and sea. Close all scuppers before firefighting operations. Recover firewater/foam runoff in slop tanks to prevent marine pollution per MARPOL.</p>',
'text', 6, 45, 1),

(153, 'Chapter 7: Cargo Operations',
'<h2>7. Cargo Operations</h2>
<h3>7.1 For Oil and Chemical Tankers — General Principles</h3>
<p>Before any cargo operation: complete the <strong>Ship/Shore Safety Checklist</strong>; verify cargo compatibility; check tank cleanliness; test all alarms and safety systems; confirm communication procedures with terminal; and ensure all personnel are briefed. The <strong>Chief Officer</strong> is responsible for cargo planning and operations.</p>
<h3>7.2 For an Oil Tanker</h3>
<h4>7.2.1 Cargo Information</h4>
<p>Obtain and review: Bill of Lading, cargo certificates, MSDS, and voyage orders. Confirm flashpoint, density, pour point, vapor pressure, and any special handling requirements. <strong>After completing loading arm connection</strong>, keep gate valves at the manifold closed until the start of cargo loading.</p>
<h4>7.2.2 Inert</h4>
<p>Before loading crude oil or petroleum products with flashpoint < 60°C, the cargo tank atmosphere must be inerted. The IGS maintains tank pressure positive (100–200 mmAq) throughout loading and discharge. Oxygen content must remain below 8%. <strong>Tank pressure is set within 100–200 mmAq</strong> during inert gas supply operations.</p>
<h4>7.2.3 Loading</h4>
<p>Loading sequence: open manifold valves; start loading at reduced rate initially to minimize static buildup; gradually increase rate; monitor tank levels continuously; reduce rate as tanks approach required ullage; close manifold valves on completion. Monitor trim and stability throughout.</p>
<h4>7.2.4 Unloading (Discharge)</h4>
<p>Start cargo pumps at reduced speed; increase when pipeline is full; monitor suction pressure — if suction pressure drops suddenly to negative pressure, <strong>stop the pump</strong> immediately to prevent cavitation damage. Strip tanks completely to minimize residues. Apply IGS throughout discharge. <strong>Total oil discharged during ballast voyage must not exceed 1/30,000 of total cargo capacity</strong> (MARPOL Annex I).</p>
<h4>7.2.5 Tank Cleaning</h4>
<p><strong>Crude Oil Washing (COW)</strong>: Uses the solvency of crude oil itself, jetted at high pressure (<strong>10 kg/cm² or more</strong>) by tank cleaning machines to remove sludge from tank internals. COW is performed during discharge. Improves cargo outturn and reduces tank cleaning time in port.</p>
<h4>7.2.6 Clearing and Gas Free</h4>
<p>After crude oil washing, tanks are vented and gas-freed using forced ventilation. Gas measurements confirm: O₂ ≥ 20.8%, HC < 1% LEL, H₂S < 1 ppm before any personnel entry or hot work. A <strong>Gas Free Certificate</strong> is issued by a qualified marine chemist or officer.</p>
<h3>7.3 For Chemical Tankers</h3>
<h4>7.3.1 Cargo Information</h4>
<p>Chemical tankers carry diverse cargoes under the <strong>IBC Code</strong>. Study MSDS carefully for each product: reactivity, inhibitor requirements, temperature requirements, and segregation from other cargoes. Notify crew of specific hazards before loading.</p>
<h4>7.3.2 Loading Chemical Cargo</h4>
<p>Confirm tank coating compatibility with cargo. Check inhibitor presence and concentration. Purge tanks with nitrogen if required. Sample cargo at manifold against certificate values. Monitor temperature during loading (some chemicals require temperature control).</p>
<h4>7.3.3 Unloading Chemical Cargo</h4>
<p>Discharge at approved rates; some chemicals require stripping with N₂ pads. Ensure complete discharge to avoid contamination of next cargo. Maintain manifold drip trays; collect drainings in appropriate containers.</p>
<h4>7.3.4 Tank Cleaning and Gas Free</h4>
<p>Chemical tank cleaning procedures depend on previous and next cargo. May require hot water washing, chemical cleaning agents, or seawater rinse sequences per the Cargo Compatibility/Sequence Chart. Gas freeing procedures follow tank cleaning, verified by gas measurements before any entry.</p>',
'text', 7, 45, 1),

(153, 'Chapter 8: Emergencies Onboard Oil and Chemical Tankers',
'<h2>8. Emergencies Onboard Oil and Chemical Tankers</h2>
<h3>8.1 Emergency Procedures Including Emergency Shutdown</h3>
<p>An <strong>Emergency Shutdown (ESD)</strong> immediately halts all cargo operations in case of: cargo spillage; fire or explosion; loss of communication with terminal; hull breach; or cargo pump/equipment failure. ESD systems are activated from the cargo control room and/or remotely from shore. After ESD: close all manifold valves, stop all cargo pumps, activate IGS (if applicable), raise the alarm, notify terminal and port authorities.</p>
<h3>8.2 Organizational Structure During Emergencies</h3>
<p>The <strong>Muster List (Station Bill)</strong> defines every crew member''s emergency duties. The Master commands overall emergency response. The Chief Officer coordinates firefighting and damage control. The Chief Engineer manages machinery space response. Officers lead assigned teams. All crew must know their station and duties before departure.</p>
<h3>8.3 Alarms</h3>
<p>Emergency alarm signals (per SOLAS):</p>
<ul>
<li><strong>General Emergency Alarm:</strong> 7 short blasts + 1 long blast on ship''s whistle and internal alarm bells.</li>
<li><strong>Fire/Explosion Alarm:</strong> Continuous ringing of ship''s bell / alarm bells.</li>
<li><strong>Abandon Ship:</strong> More than 6 short blasts + 1 long blast on ship''s whistle.</li>
<li><strong>Gas alarm:</strong> Fixed gas detection system activates audible and visual alarms in cargo control room and on deck.</li>
</ul>
<h3>8.4 Emergency Procedures</h3>
<p><strong>Cargo Spillage:</strong> Stop transfer immediately; contain spill; notify Master, Chief Officer, and port authorities; activate oil spill response plan. <strong>Fire in Cargo Area:</strong> Sound alarm; stop cargo operations; activate ESD; fight fire with available means; if uncontrollable, evacuate and request assistance. <strong>Toxic Gas Release:</strong> Sound alarm; evacuate to upwind areas; don SCBA; account for all personnel; render first aid to casualties; notify authorities. <strong>Man Overboard (MOB):</strong> Sound alarm; throw life ring; maneuver ship; deploy rescue boat. <strong>Collision/Grounding:</strong> Sound alarm; assess damage; control flooding; notify authorities; prepare to abandon ship if necessary.</p>',
'text', 8, 30, 1),

(153, 'Chapter 9: Prevention of Pollution Caused by Oil and Chemical Tankers',
'<h2>9. Prevention of Pollution by Oil and Chemical Tankers</h2>
<h3>9.1 Effects of Pollution on Humans and Marine Life</h3>
<p>Oil pollution causes: coating of seabirds'' feathers causing loss of buoyancy and thermal insulation, leading to death; smothering of marine mammals; destruction of fish eggs and larvae; coating of gills and feeding mechanisms of marine invertebrates; destruction of coastal habitats (mangroves, coral reefs, beaches). Long-term effects include bioaccumulation of toxic compounds in the food chain, affecting humans who consume seafood. Chemical pollution can cause acute toxicity and chronic sublethal effects.</p>
<h3>9.2 Procedures to Prevent Pollution</h3>
<p><strong>MARPOL 73/78 (International Convention for the Prevention of Pollution from Ships)</strong> is the main international convention for preventing marine pollution from ships. Key requirements:</p>
<ul>
<li><strong>Oil Record Book (ORB):</strong> All oil operations must be recorded.</li>
<li><strong>Segregated Ballast Tanks (SBT):</strong> Tankers must have dedicated ballast tanks separate from cargo tanks.</li>
<li><strong>Oily Water Separator (OWS):</strong> Bilge water must be treated to < 15 ppm oil before discharge.</li>
<li><strong>Clean Ballast Tanks (CBT):</strong> Ballast water must be clean before discharge.</li>
<li><strong>Slop Tanks:</strong> Tank washing water and dirty ballast retained in slop tanks; processed through Load on Top (LOT) procedure.</li>
</ul>
<p><strong>The total quantity of oil discharged in any ballast voyage must not exceed 1/30,000 of the total cargo carrying capacity</strong> of the vessel (MARPOL Annex I, Regulation 34).</p>
<p><strong>Special Areas</strong> (Baltic Sea, Mediterranean Sea, Black Sea, Red Sea, Gulfs, Antarctic, Northwest European Waters, Oman Sea, South South African Waters) have zero oil discharge tolerance under MARPOL. <strong>Dirty ballast</strong> is ballast water loaded into cargo tanks after cargo discharge, contaminated with oil residues.</p>
<h3>9.3 Measures in Case of Spills</h3>
<p>Immediate actions when a spill occurs:</p>
<ol>
<li>Stop the source of pollution immediately (close valves, stop pumps).</li>
<li>Notify the Master and Chief Officer.</li>
<li>Sound the pollution alarm.</li>
<li>Close all deck scuppers to contain the spill onboard.</li>
<li>Transmit information to port/coastal authorities and company DPA.</li>
<li>Activate the <strong>Shipboard Oil Pollution Emergency Plan (SOPEP)</strong>.</li>
<li>Deploy containment boom if required.</li>
<li>Apply dispersants only with authority approval.</li>
<li>Document all actions and quantities in the Oil Record Book.</li>
</ol>',
'text', 9, 30, 1),

(153, 'Chapter 10: Case Studies on Spills and Emergencies',
'<h2>10. Case Study on Spills and Emergencies</h2>
<h3>10.1 Fire and Explosion During Tank Operations</h3>
<h4>Case Study: Fire During Crude Oil Washing</h4>
<p><strong>Scenario:</strong> While performing crude oil washing after discharge at a terminal, an explosion occurred in the No. 3 center tank causing a fire on deck. Three crew members suffered burns.</p>
<p><strong>Contributing Factors:</strong></p>
<ul>
<li>IGS system failure — oxygen content in tank had risen above safe levels before COW commenced.</li>
<li>Inadequate gas monitoring — no continuous monitoring of tank atmosphere during COW.</li>
<li>Improper use of portable gas detector — calibration overdue.</li>
<li>Failure to follow the COW Manual procedures.</li>
</ul>
<p><strong>Lessons Learned:</strong></p>
<ul>
<li>Always verify tank atmosphere (O₂ < 8%) before commencing COW.</li>
<li>Maintain positive pressure in tanks throughout operations with IGS.</li>
<li>Calibrate all gas measuring instruments before each use.</li>
<li>Follow COW Manual and company procedures strictly.</li>
<li>Ensure all crew involved in COW are properly trained and briefed.</li>
</ul>
<h3>10.2 Collapse of Crewmembers During Washing or Cleaning Operations on Tankers</h3>
<h4>Case Study: Crew Collapse in Enclosed Space</h4>
<p><strong>Scenario:</strong> During tank cleaning operations, an AB entered a cargo tank to check the effectiveness of the cleaning machines. The tank had been ventilated but not gas-freed to required standards. The AB collapsed inside the tank. A second crew member entered without breathing apparatus to rescue him and also collapsed. Both were recovered unconscious; one later died.</p>
<p><strong>Contributing Factors:</strong></p>
<ul>
<li>No Enclosed Space Entry Permit issued.</li>
<li>Atmospheric testing was inadequate and performed at the wrong locations.</li>
<li>No standby person assigned at the tank entrance.</li>
<li>Rescue attempt made without SCBA — a classic "would-be rescuer" fatality.</li>
<li>Crew not adequately trained in enclosed space entry procedures.</li>
</ul>
<p><strong>Lessons Learned:</strong></p>
<ul>
<li><strong>NEVER enter an enclosed space without a valid permit and confirmed safe atmosphere.</strong></li>
<li>Always have a trained standby person at the entrance with SCBA ready.</li>
<li><strong>NEVER attempt rescue in an enclosed space without SCBA</strong> — call for trained rescue team.</li>
<li>Test atmosphere at multiple levels and locations before entry.</li>
<li>Post-entry monitoring is required — maintain continuous communication with entrant.</li>
<li>Apply lessons from IMCA and industry guidance on enclosed space safety.</li>
</ul>
<h3>Summary and Key Takeaways</h3>
<p>These case studies illustrate that most maritime accidents result from a combination of technical failures AND human/procedural failures. The STCW Basic Training for Oil and Chemical Tanker Cargo Operations exists to prevent these tragedies by ensuring all personnel working on tankers have the foundational knowledge and skills to:</p>
<ul>
<li>Recognize hazards before they become accidents</li>
<li>Follow established procedures consistently</li>
<li>Use safety equipment correctly</li>
<li>Respond effectively to emergencies</li>
<li>Protect themselves, colleagues, the vessel, and the marine environment</li>
</ul>',
'text', 10, 30, 1);


-- ═══════════════════════════════════════════════════════════
-- QUIZ
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_quizzes (course_id, lesson_id, title, description, pass_percentage, time_limit, is_active)
VALUES (153, NULL,
  'Theoretical Evaluation — BTOC',
  'Final theoretical evaluation for Basic Training for Oil and Chemical Tanker Cargo Operations. Regulation V/1-1, Paragraph 2.2, Section A-V/1-1, Paragraph 1 and Table A-V/1-1-1 of STCW 78 as amended. Minimum passing score: 70%.',
  70.00, 45, 1);

SET @quiz_id = LAST_INSERT_ID();

-- ═══════════════════════════════════════════════════════════
-- QUESTIONS
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'The process used to separate the substances composing a mixture is:', 'multiple_choice', 1, 1),
(@quiz_id, 'It has been pressurized and cooled so as to liquefy it for convenience in shipping and storage:', 'multiple_choice', 1, 2),
(@quiz_id, 'The atmosphere in the crude oil tanks is made inert by inserting:', 'multiple_choice', 1, 3),
(@quiz_id, 'One of the procedures to minimize the free surface effect is:', 'multiple_choice', 1, 4),
(@quiz_id, 'LNG Vessel is:', 'multiple_choice', 1, 5),
(@quiz_id, 'OBO Vessel is:', 'multiple_choice', 1, 6),
(@quiz_id, 'V.L.C.C. Vessel is:', 'multiple_choice', 1, 7),
(@quiz_id, 'After the completion of loading arm connection, preparations for loading should be started in the following manner:', 'multiple_choice', 1, 8),
(@quiz_id, 'MARPOL means:', 'multiple_choice', 1, 9),
(@quiz_id, 'It is used in order to prevent drops in tank pressure as a result of cargo discharge and also in order to make the tank atmosphere inert:', 'multiple_choice', 1, 10),
(@quiz_id, 'After the oxygen content drops to below 5% after the start of cargo discharge, inert gas is supplied to cargo tanks. The tank pressure is set within a range of:', 'multiple_choice', 1, 11),
(@quiz_id, 'Crude Oil Washing (COW) removes sludge from tank internals by jetting crude oil at a high pressure of:', 'multiple_choice', 1, 12),
(@quiz_id, 'Dirty ballast is:', 'multiple_choice', 1, 13),
(@quiz_id, 'The risk of spontaneous combustion is biggest with:', 'multiple_choice', 1, 14),
(@quiz_id, 'The instrument for measuring the composition of hydrocarbon gas/air mixtures, usually giving the result as a percentage of the Lower Flammable Limit, is:', 'multiple_choice', 1, 15),
(@quiz_id, 'The Flashpoint is:', 'multiple_choice', 1, 16),
(@quiz_id, 'Petroleum having a flash point of 60°C or above is classified as:', 'multiple_choice', 1, 17),
(@quiz_id, 'The total quantity of oil which a tanker may discharge in any ballast voyage whilst underway must not exceed:', 'multiple_choice', 1, 18),
(@quiz_id, 'When the suction pressure drops suddenly to a negative pressure during discharge, the correct action is:', 'multiple_choice', 1, 19),
(@quiz_id, 'Under MARPOL, the areas considered so vulnerable to pollution by oil that discharges within them have been completely prohibited are called:', 'multiple_choice', 1, 20);

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

-- ═══════════════════════════════════════════════════════════
-- OPTIONS (4 per question, correct marked with is_correct=1)
-- ═══════════════════════════════════════════════════════════

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
-- Q1: Distillation ✓
(@q1, 'Distillation', 1, 1),
(@q1, 'Condensation', 0, 2),
(@q1, 'Evaporation', 0, 3),
(@q1, 'Crystallization', 0, 4),

-- Q2: Natural Gas ✓
(@q2, 'Petrolatum', 0, 1),
(@q2, 'Natural Gas (LNG)', 1, 2),
(@q2, 'Naphtha', 0, 3),
(@q2, 'Fuel Oil', 0, 4),

-- Q3: Carbon Dioxide Gas ✓ (inert gas inerting)
(@q3, 'Fresh Air', 0, 1),
(@q3, 'Halon Gas', 0, 2),
(@q3, 'Carbon Dioxide / Inert Gas', 1, 3),
(@q3, 'Oxygen', 0, 4),

-- Q4: Fill tanks nearly 90% full ✓
(@q4, 'To fill the tanks nearly 33% full', 0, 1),
(@q4, 'To fill the tanks nearly 50% full', 0, 2),
(@q4, 'To fill the tanks nearly 90% full', 1, 3),
(@q4, 'To empty the tanks completely', 0, 4),

-- Q5: Vessels whose cargo is liquefied natural gas ✓
(@q5, 'Special cargo vessels for petroleum derivatives', 0, 1),
(@q5, 'Vessels whose cargos are petroleum and its derivatives', 0, 2),
(@q5, 'Vessels whose cargo is liquefied natural gas', 1, 3),
(@q5, 'Ships known as mammoth vessels', 0, 4),

-- Q6: OBO = Oil/Bulk/Ore — Petroleum or mineral in bulk ✓
(@q6, 'Vessel whose cargo is Petroleum or mineral in bulk', 1, 1),
(@q6, 'Vessel whose cargos are dangerous goods', 0, 2),
(@q6, 'Vessel whose cargos are refined petroleum only', 0, 3),
(@q6, 'Vessel whose cargos are minerals only', 0, 4),

-- Q7: VLCC = 160,000–320,000 DWT ✓
(@q7, 'Vessels in a range between 35,000 and 160,000 tons', 0, 1),
(@q7, 'Vessels over 320,000 tons', 0, 2),
(@q7, 'Vessels in a range between 160,000 and 320,000 tons', 1, 3),
(@q7, 'Vessels in a range between 6,000 and 35,000 tons', 0, 4),

-- Q8: Keep gate valves at manifold CLOSED ✓
(@q8, 'Keep gate valves at the manifold open until the start of cargo loading', 0, 1),
(@q8, 'Keep gate valves at the manifold closed until the start of cargo loading', 1, 2),
(@q8, 'Never use the gate valves for cargo loading', 0, 3),
(@q8, 'Open all valves immediately after arm connection', 0, 4),

-- Q9: MARPOL = Prevention of Pollution from Ships 73/78 ✓
(@q9, 'The International Convention for Maritime Policy for Tanker Ships 76/84', 0, 1),
(@q9, 'The International Convention of Life at Sea 74/88', 0, 2),
(@q9, 'The International Convention for the Prevention of Pollution from Ships 73/78', 1, 3),
(@q9, 'The International Maritime Pollution Regulation 75/80', 0, 4),

-- Q10: IGS ✓
(@q10, 'IGS (Inert Gas System)', 1, 1),
(@q10, 'EEBD (Emergency Escape Breathing Device)', 0, 2),
(@q10, 'IMDG (International Maritime Dangerous Goods Code)', 0, 3),
(@q10, 'SCBA (Self-Contained Breathing Apparatus)', 0, 4),

-- Q11: 100 to 200 mmAq ✓
(@q11, '0 to 100 mmAq', 0, 1),
(@q11, '100 to 200 mmAq', 1, 2),
(@q11, '300 to 900 mmAq', 0, 3),
(@q11, '500 to 1000 mmAq', 0, 4),

-- Q12: 10 kg/cm2 or more ✓
(@q12, '1.5 kg/cm² or more', 0, 1),
(@q12, '5 kg/cm² or more', 0, 2),
(@q12, '10 kg/cm² or more', 1, 3),
(@q12, '20 kg/cm² or more', 0, 4),

-- Q13: Ballast loaded in cargo tanks after cargo discharge ✓
(@q13, 'Ballast loaded in cargo tanks after cargo discharge', 1, 1),
(@q13, 'Ballast loaded in ballast tanks from the sea during cargo discharge', 0, 2),
(@q13, 'Ballast unloaded from ballast tanks after cargo discharge', 0, 3),
(@q13, 'Seawater used to clean cargo tanks', 0, 4),

-- Q14: Vegetable oils ✓
(@q14, 'Vegetable oils (drying oils)', 1, 1),
(@q14, 'Heavy petroleum oils', 0, 2),
(@q14, 'Diesel fuel oils', 0, 3),
(@q14, 'Crude oil', 0, 4),

-- Q15: Combustible gas indicator ✓
(@q15, 'Interface detector', 0, 1),
(@q15, 'Flame arrester', 0, 2),
(@q15, 'Combustible gas indicator (Explosimeter)', 1, 3),
(@q15, 'Oxygen analyzer', 0, 4),

-- Q16: Lowest temperature at which liquid gives off sufficient gas ✓
(@q16, 'The lowest temperature at which a liquid gives off sufficient gas to form a flammable mixture near its surface', 1, 1),
(@q16, 'The highest temperature at which a liquid gives off sufficient gas to form a flammable mixture near its surface', 0, 2),
(@q16, 'The concentration of hydrocarbon gas in air below which combustion cannot be supported', 0, 3),
(@q16, 'The temperature at which a liquid spontaneously ignites without an external ignition source', 0, 4),

-- Q17: Non-flammable / above 60°C ✓
(@q17, 'Flammable — flash point below 23°C', 0, 1),
(@q17, 'Combustible — flash point between 23°C and 60°C', 0, 2),
(@q17, 'Non-flammable under MARPOL/SOLAS — flash point at or above 60°C', 1, 3),
(@q17, 'Explosive — flash point below 0°C', 0, 4),

-- Q18: 1/30,000 of total cargo capacity ✓ (MARPOL Annex I)
(@q18, '1/20,000 of the total cargo carrying capacity of the vessel', 0, 1),
(@q18, '1/25,000 of the total cargo carrying capacity of the vessel', 0, 2),
(@q18, '1/30,000 of the total cargo carrying capacity of the vessel', 1, 3),
(@q18, '1/15,000 of the total cargo carrying capacity of the vessel', 0, 4),

-- Q19: Stop the pump ✓
(@q19, 'The slop tank has become dry — switch to slop tank', 0, 1),
(@q19, 'Stop the pump immediately', 1, 2),
(@q19, 'Reduce the pump revolutions to the minimum', 0, 3),
(@q19, 'Open the bypass valve', 0, 4),

-- Q20: Special Area ✓ (MARPOL)
(@q20, 'Special Area', 1, 1),
(@q20, 'Restricted Area', 0, 2),
(@q20, 'Prohibited Zone', 0, 3),
(@q20, 'Exclusion Area', 0, 4);

-- ═══════════════════════════════════════════════════════════
-- VERIFY
-- ═══════════════════════════════════════════════════════════
SELECT 'Lessons created:' AS info, COUNT(*) AS total FROM lms_lessons WHERE course_id=153;
SELECT 'Quiz created:' AS info, COUNT(*) AS total FROM lms_quizzes WHERE course_id=153;
SELECT 'Questions created:' AS info, COUNT(*) AS total FROM lms_questions WHERE quiz_id=@quiz_id;
SELECT 'Options created:' AS info, COUNT(*) AS total FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@quiz_id);
