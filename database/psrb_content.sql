-- Proficiency in Survival Craft and Rescue Boats other than Fast Rescue Boats (PSRB)
-- STCW Regulation VI/2, Section A-VI/2, paragraphs 1-6 and Table A-VI/2-1
-- course_id=176 (existing draft), 58 images copied to public/uploads/psrb/
-- Skipped: image47-50,52 (EMF format), image53 (5.5KB), image54 (5.0KB)
-- Total: 31.5 hours

UPDATE lms_courses SET
  course_code = 'PSRB',
  title = 'Proficiency in Survival Craft and Rescue Boats other than Fast Rescue Boats',
  slug = 'proficiency-in-survival-craft-and-rescue-boats',
  status = 'published',
  category_id = 6,
  image = 'https://pamel.edu.pa/uploads/psrb/image1.jpeg',
  level = 'advanced',
  pass_percentage = 70,
  description = 'This course provides mandatory minimum standards of competence for proficiency in survival craft and rescue boats other than fast rescue boats, in accordance with STCW Regulation VI/2, Section A-VI/2, paragraphs 1-6 and Table A-VI/2-1. Topics include introduction to ship safety systems, abandonment of ship procedures, types of survival craft (lifeboats, life rafts, rescue boats), launching arrangements, evacuation and recovery, lifeboat and outboard engines, adverse weather handling, survival craft measures, helicopter rescue, hypothermia treatment, radio equipment (VHF/EPIRB/SART) and first aid. Total: 31.5 hours.'
WHERE id = 176;

SET @course_id = 176;

-- Cleanup (idempotent re-run)
DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id);
DELETE FROM lms_quizzes WHERE course_id=@course_id;
DELETE FROM lms_lessons WHERE course_id=@course_id;

-- ============================================================
-- LESSONS  (5 × 270 min + 1 × 540 min = 1890 min = 31.5 h)
-- ============================================================
INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(@course_id,
'Introduction, Safety Orientation and BIR General Principles',
'<h2>Introduction to Ship Safety</h2>
<p>Sailing on a ship can be equally dangerous. Marine accidents happen frequently and can be avoided when proper safety procedures are followed. Apart from IMO mandatory safety regulations and shipboard protective equipment, seafarers must take personal responsibility for their own safety.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image1.jpeg" alt="Safety Course Manual" style="max-width:100%;height:auto;margin:10px 0;">
<p>International maritime safety signs are standardized under ISO 24409 and adopted by IMO for labeling escape routes, emergency equipment, rescue and fire protection signs. Categories include:</p>
<ul>
<li>Direction Signs</li>
<li>Fire Control Signs</li>
<li>Hazard Signs</li>
<li>Fire Equipment Signs</li>
<li>Mandatory and Prohibitory Signs</li>
<li>Combination Signs and ISPS Signs</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image2.jpeg" alt="Safety Signs" style="max-width:100%;height:auto;margin:10px 0;">
<h2>SOLAS-Approved Rescue Boats</h2>
<p>SOLAS-approved rescue boats are obligatory on all ships. They are designed for the rapid recovery of crew falling into the sea and for the grouping and organization of life rafts in case of shipwreck. Typical equipment on a training vessel includes:</p>
<ul>
<li>ZODIAC Futura MK-II, MK-II GR, MK-III GR and MK-V HD vessels</li>
<li>Evinrude 2-stroke outboard motors (6, 30, 40 hp) and YAMAHA 2-stroke motors (30, 55 hp)</li>
<li>Kristal XL stowing equipment with derrick (60m and 270m stainless steel cable)</li>
<li>Hand winch (60m cable), GPS Furuno, Echo-sounder, Compass, Radio Walky Talky</li>
<li>Security Kit: first aid kit, flares, smoke canisters, thermal blankets</li>
<li>Foam lifejackets, neoprene survival suits, Mustang OceanClass immersion suits</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image3.jpeg" alt="Rescue Boat Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>BIR (Rigid Inflatable Boat) Construction</h2>
<p>RIBs emerged from the space between rigid hull and inflatable boats. Their length ranges from 6 to 12 metres. Their construction allows full stability and maneuverability in high seas, enabling high speed with good acceleration and auto-stabilizing properties.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image4.jpeg" alt="BIR Construction" style="max-width:100%;height:auto;margin:10px 0;">
<p>Inflatable chambers are manufactured from rubber elastomers, polymers, and thermoplastics. Key properties required: tear strength, abrasion resistance, flexibility, weather resistance, and tolerance to high temperatures. Common materials:</p>
<ul>
<li><strong>Neoprene</strong>: lower cost</li>
<li><strong>Hypalon</strong>: better resistance to abrasion, ozone, UV and oil (more expensive)</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image5.jpeg" alt="Inflatable Chamber Material" style="max-width:100%;height:auto;margin:10px 0;">
<p>Gas permeability increases with rising temperature and decreases with increased layer thickness. A small compressor may be needed to maintain constant internal pressure in high-sea conditions.</p>
<h2>General Design Principles</h2>
<p>Preferred RIB designs have reasonable directional stability, good conduct in following seas, and bow profiles ranging from V-shaped to round. The deck must be level and above sea level from bow to midship for drainage. Speed is obtained from fixed or outboard engines:</p>
<ul>
<li><strong>Fixed (inboard) installation</strong>: propellers parallel to keel, rudder required for steering</li>
<li><strong>Outboard motor</strong>: steered directly by varying thrust direction</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image6.jpeg" alt="RIB Design" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Emergency Situations</h2>
<p>The pivot point (PG) of the boat is positioned well aft, providing good steering control and variations in docking maneuvers. High speeds cause negative effects on crew through hull impacts to legs, arms and back. Personnel from large ships may not adapt easily and are prone to injury — crew selection is critical.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image7.jpeg" alt="Emergency Situations" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Training, Drills and Operational Readiness</h2>
<p>BIR crew must be well-equipped with proper clothing for cold-water operations. Waterproof enclosures must protect all electrical installations. The electrical system uses fully insulated wiring without ground wire, powered by batteries charged from an engine-coupled alternator.</p>
<p>Operations in bad weather, storms, snow, and poor visibility at night require:</p>
<ul>
<li>High level of training and well-maintained equipment</li>
<li>Thermal bags (polythene) to protect crew heading to the scene</li>
<li>Weatherproof BIR design or shed for crew protection</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image8.jpeg" alt="Training and Readiness" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Actions When Called to Survival Craft Stations</h2>
<p>When the abandon-ship alarm sounds, personnel must proceed immediately to their assigned stations with personal lifejacket on and immersion suit in hand. Immersion suits are used only upon the Master\'s order and should be stored in the lifeboat if not yet needed. The safety officer counts all persons and reports the final number to the Master before abandoning.',
'text', 1, 270, 1),

(@course_id,
'Abandonment of Ship, Survival Craft and Launching Arrangements',
'<h2>Abandonment of Ship</h2>
<p>The decision to abandon ship carries great responsibility. Prior to abandonment, general actions include: structural integrity checks, putting the ship in safety (seals, stop machines, anchors, pollution prevention), preparing survival equipment, communications, transport of wounded, personal preparation, and assessment of external conditions (currents, winds, sea state, other ships).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image9.jpeg" alt="Abandon Ship" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Four Stages of an Abandon Ship Drill</h3>
<ol>
<li><strong>Notification and Mustering</strong>: Use the vessel\'s general announcement system. Crew/passengers proceed calmly to assigned stations with lifejackets on.</li>
<li><strong>Lowering into water</strong>: In calm conditions, lower the boat/raft with only trained, authorized crew aboard. Test and run the engine.</li>
<li><strong>Embarkation</strong>: Remaining crew board by pilot ladder. The Master is the last to embark. Safety belts must be secured. All hatches secured.</li>
<li><strong>Debriefing</strong>: (Drills only) Safety officer reviews all stages, checks equipment is returned to proper condition.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/psrb/image10.jpeg" alt="Abandon Ship Stages" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Dangers to Survivors</h3>
<ul>
<li><strong>Heat/Sun stroke</strong>: Body temperature above 40°C — remove clothing, cool with cold water/fanning, place in recovery position</li>
<li><strong>Sea sickness</strong>: Nausea, vomiting, dehydration — take appropriate medicine proactively even if experienced</li>
<li><strong>Dehydration</strong>: Never drink seawater — it worsens thirst and damages kidneys</li>
<li><strong>Fire/oil on water</strong>: Use wet towels over face and body if swimming; a totally enclosed fire-protected lifeboat is the safest option</li>
<li><strong>Sharks</strong>: Group together, retain clothing (especially legs/feet), keep quiet and stationary, keep the shark in sight</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image11.jpeg" alt="Survival Dangers" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Types of Lifeboats</h2>
<p>All lifeboats must be lowerable at 5 knots in calm water with full complement. Hull and canopy must be fire-retardant or non-combustible. Maximum capacity: 150 persons (average 75 kg each).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image12.jpeg" alt="Lifeboat Types" style="max-width:100%;height:auto;margin:10px 0;">
<ul>
<li><strong>Open lifeboat</strong>: No fixed canopy; uses sails, oars, or diesel engine; most common on cargo ships</li>
<li><strong>Partially enclosed lifeboat</strong>: Fixed canopy over part of the boat</li>
<li><strong>Self-righting partially enclosed</strong>: Attains positive stability even if incorrectly launched</li>
<li><strong>Totally enclosed lifeboat</strong>: Fixed canopy completely covering the boat — forms a capsule for survivors</li>
<li><strong>Self-righting totally enclosed</strong>: Totally enclosed with means of positive stability</li>
<li><strong>Totally enclosed with self-contained air support</strong>: For use in areas of fire</li>
<li><strong>Fire-protected lifeboat</strong>: External sprinklers keep the hull cool when launching through fire</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image13.png" alt="Lifeboat Launch" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Vertical Clearance Requirements</h3>
<p>The vertical distance between floor and interior shall not be less than:</p>
<ul>
<li>1.3 m for lifeboats accommodating 21 persons or less</li>
<li>1.7 m for lifeboats accommodating 24 persons or more</li>
</ul>
<h2>Life Rafts</h2>
<p>Types of life rafts:</p>
<ul>
<li><strong>Inflatable life rafts</strong>: equipped with CO₂ inflation cylinders or mechanical pumps</li>
<li><strong>Rigid life rafts</strong></li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image14.jpeg" alt="Life Raft" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Hydrostatic Release Unit (HRU)</h3>
<p>The HRU is an extension of the securing lashings over the inflatable life raft. When the vessel sinks, it automatically activates at up to 4 metres depth, releasing the life raft to float free. The painter line inflates the raft as it rises clear of the sinking vessel. A weak link parts after the painter becomes fully extended. Life rafts require a full review every 5 years (and at 10 years).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image15.jpeg" alt="HRU Operation" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Rescue Boats</h2>
<p>Requirements for rescue boats:</p>
<ul>
<li>Not less than 8.5 metres in length</li>
<li>Capable of 6 knots maneuverability</li>
<li>Can tow a loaded 25-person life raft at 6 knots</li>
<li>Can be righted by 2 persons if capsized</li>
<li>Fitted with bow cover extending over at least 15% of boat length</li>
<li>Either outboard or inboard engine with rudder and tiller</li>
</ul>
<p>Passenger ships: one or two rescue boats (one per side if >500 GT). Cargo ships: at least one rescue boat.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image16.jpeg" alt="Rescue Boat Requirements" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Launching Arrangements</h2>
<h3>Ship Davits</h3>
<p>Davits are metal structures allowing rapid lowering and hoisting of the rescue boat. They must allow rescue operations while the ship is underway and must support the ship listed up to 15° to any side. Types include gravity davits, luffing davits, and hydraulic davits.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image17.png" alt="Davit Types" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Life Raft Davits</h3>
<p>Life raft davits on cargo ships must allow the full complement of persons to board in 3 minutes or less from the time the instruction to board is given.</p>
<h3>Free-Fall Lifeboats</h3>
<p>Special precautions for free-fall launched lifeboats:</p>
<ul>
<li>Check the launch area is clear in the direction of launch</li>
<li>Verify the launching ramp is free of obstructions</li>
<li>Ensure sufficient water depth for launch</li>
<li>All passengers and crew must be seated and secured by safety harness</li>
<li>No lines may be tied on board before free-fall launch</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image18.jpeg" alt="Free Fall Lifeboat" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Float-Free Arrangement</h3>
<p>Position beacons (EPIRB) and life rafts may be released automatically if the ship sinks — the float-free arrangement activates without manual intervention. A Hydrostatic Release Unit must have a Coast Guard approval number (160.062).</p>
<h3>Marine Evacuation System</h3>
<p>A Marine Evacuation System consists of a slide or tube through which passengers evacuate the ship by sliding directly into a life raft. It minimizes weight, space and evacuation time — ideal for passenger ships.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image19.jpeg" alt="Marine Evacuation System" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Evacuation and Recovery Procedures</h2>
<p>The decision to launch the rescue boat must be based on real possibilities of rescuers and survivors, to avoid endangering additional people. When launching from a vessel:</p>
<ul>
<li>The ship should make a slow evolutionary curve to provide lee on the launch side</li>
<li>Maintain this position until the rescue boat\'s engine is running, contacts water, and progressively separates from the ship\'s side</li>
<li>For recovery: position the ship to provide protection, maintain 3-5 knots, with the rescue boat at approximately 20m abeam waiting to seize the right moment to approach</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image20.png" alt="Evacuation Procedure" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Launching in Rough Seas</h3>
<p>The most important external factors: sea state, water depth, wind direction/intensity, current and tide. Two approach maneuvers:</p>
<ol>
<li>Use extensive knowledge of the rescue boat\'s maneuvering characteristics relative to available space</li>
<li>Maintain bow angle at equilibrium with external forces, allowing the boat to track a path toward the stricken vessel while retaining immediate escape capability</li>
</ol>
<img src="https://pamel.edu.pa/uploads/psrb/image21.png" alt="Rough Sea Launch" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Recovery in Rough Seas</h3>
<p>When direct contact is impossible, anchor the rescue boat and use lines, lifebuoys, or floating objects to transfer survivors. The preferred leeward approach side provides shelter from wind and sea. Multiple rescue boats working together increase transfer efficiency: one static against the stricken vessel, others transporting survivors to safety.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image22.jpeg" alt="Recovery Operations" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Actions When Off the Ship</h2>
<p>Approach the stricken vessel from the lee side, studying: landing means positions, risks (discharges, leaks, blockages), most favorable approach point (lower decks, available fenders), and vessel drift. When the vessel has steerage way, follow a course opening wind 10-15° at 2-3 knots. When this poses risk, use the stern-to-wind method at 3-5 knots, keeping the rescue boat parallel at 10m. For stretcher transfers, lower horizontally with retaining guides — ensure the stretcher has sufficient buoyancy to float if it falls in the water.',
'text', 2, 270, 1),

(@course_id,
'Lifeboat Engine, Outboard Motor and Adverse Weather Handling',
'<h2>Lifeboat Engine and Accessories</h2>
<p>The lifeboat engine, transmission, and accessories must be covered by a protective hood constructed of fire-resistant or similar material, preventing accidental contact with hot or moving parts and protecting the motor from weather and sea effects. Noise mitigation measures are required.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image23.png" alt="Lifeboat Engine" style="max-width:100%;height:auto;margin:10px 0;">
<p>Key engine installation requirements:</p>
<ul>
<li>Starting batteries in sealed boxes with tight, vented lids</li>
<li>Engine designed to limit electromagnetic interference with radio devices</li>
<li>Control instructions posted in a conspicuous location near the helm in a durable polymer</li>
<li>Controls operable from the helmsman\'s position</li>
<li>Ergonomic helmsman\'s seat with 3-point safety belt, foot support, and full visibility fore, aft, and to both sides</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image24.jpeg" alt="Helmsman Position" style="max-width:100%;height:auto;margin:10px 0;">
<p>In the event of capsize: the engine must be capable of operating in any position and maintaining operation after the lifeboat rights itself. Lubrication and fuel systems must not lose more than 250 ml of lubricating oil during a capsize event.</p>
<h3>Lifeboat Engine Accessories</h3>
<p>Totally enclosed lifeboats must be fitted with:</p>
<ul>
<li>A drain valve near the lowest point of the hull (auto-opens when not waterborne, auto-shuts when waterborne)</li>
<li>A rudder and tiller; also an optional wheel or remote steering mechanism</li>
<li>Low-pressure air vent valve to prevent pressure drop while the engine is running</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image25.png" alt="Lifeboat Accessories" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Starting the Lifeboat Engine</h2>
<p>Starting procedure:</p>
<ol>
<li>Turn on the fan motors to clear any hazardous vapor from the engine compartment</li>
<li>Check the stern for floating debris or obstructions that could jam the propeller</li>
<li>Prime the engine: press the button to disengage the throttle on the side, pressing it forward twice</li>
<li>Start with the key; hold until the engine warms up and runs consistently</li>
<li>Move the throttle forward or backward and depart the dock</li>
</ol>
<img src="https://pamel.edu.pa/uploads/psrb/image26.png" alt="Engine Starting" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Cooling Systems</h2>
<p>Cooling in internal combustion engines removes the heat generated by burning fuel (over 2000°C), which is not converted into mechanical energy. The main function is to keep all components within the design temperature range, avoiding deformation and stiffness. Marine engines commonly use raw-water or freshwater/antifreeze closed-loop cooling systems.</p>
<h2>Battery Charging</h2>
<p>Battery charging procedure for rescue boat outboard systems:</p>
<ul>
<li>Clean terminals with sandpaper before connecting to ensure safe combiner operation</li>
<li>Connect negative battery cables between batteries (black wire), then to the outboard</li>
<li>Connect ground wire (black) to the combiner</li>
<li>Connect red wires from combiner to each positive terminal</li>
<li>Connect red wire from outboard to positive combiner position</li>
<li>Set combiner to "Both" to charge both batteries while the outboard is running</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image27.jpeg" alt="Battery Charging" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Fire Extinguisher and Water Spray System</h2>
<p>The portable fire extinguisher is a metal cylinder containing a pressurized fire-extinguishing agent released through a nozzle (directed at the base of the fire). An anti-accidental-use device must be disabled before use. Sizes range from 1 to 250 kg. Types A, B, C, D, F correspond to different fire classes.</p>
<p>The automatic sprinkler/water spray system is part of a fire protection system with a water reserve, piping network, and terminal elements that activate on detecting heat or smoke.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image28.jpeg" alt="Fire Extinguisher" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Self-Contained Air Support System</h2>
<p>The self-contained air support system allows breathing in environments where normal respiration (nose or mouth) is impossible or where the atmosphere is contaminated. It is activated when the totally enclosed lifeboat is launched in a fire scenario, providing safe air supply to all occupants.</p>
<h2>Outboard Rescue Boat Engine</h2>
<p>A typical rescue boat outboard engine is a two-stroke cycle engine, positioned upright on the crankshaft and pivoting about the function system so the engine also acts as the rudder.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image29.jpeg" alt="Outboard Engine" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Two-Stroke vs. Four-Stroke Cycle</h3>
<p>Four-stroke cycle: four distinct piston strokes per two crankshaft revolutions (intake, compression, combustion/expansion, exhaust). Two-stroke cycle: performs all these phases in just two piston strokes and one crankshaft revolution — achieving combustion every revolution. The two-stroke engine uses intake (A), exhaust (E), and transfer/sweep (T) ports controlled by the piston position.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image30.jpeg" alt="Two-Stroke Cycle" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Mercury 25-hp Outboard Specifications</h3>
<ul>
<li>Power: 25 hp (19 kW)</li>
<li>RPM at full throttle: 5000-6000</li>
<li>Displacement: 24.4 cu in (400cc); Bore/Stroke: 65mm × 60mm</li>
<li>Water-cooled with optional thermostat; gear ratio 2.25:1</li>
<li>Fuel tank: 6.6 US gal (25 L); Weight: 112 lbs (51 kg)</li>
</ul>
<h3>Microlink System</h3>
<p>A computerized system controlling throttle opening, engine speed, and shift lever position. Data from these inputs calculates ignition timing for optimal combustion and efficiency.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image31.jpeg" alt="Microlink System" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Handling in Adverse Weather Conditions</h2>
<p>When receiving waves from astern, boat speed must be higher than the wave\'s traveling speed. Maintain position between wave crests ahead for the best situational view. Principles for maneuvering in harsh seas: use speed and direction to minimize wave effects.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image32.jpeg" alt="Adverse Weather" style="max-width:100%;height:auto;margin:10px 0;">
<p>In seas with long shapely waves:</p>
<ul>
<li>Maneuver forward before the wave crest forms its vertical face</li>
<li>The critical rule: prevent the boat from crossing the direction of waves — receiving waves from the beam (through) can cause rollover</li>
<li>The best pick-up position is 3/4 of the boat\'s length from the bow; use a safety guide from first contact</li>
</ul>
<h3>Life Raft Handling</h3>
<p>Life rafts require a full mandatory inspection every 5 years, including: testing automatic deploy devices, CO₂ bottle pressure test, seam testing for moisture damage, load testing with full complement weight on a crane, and NAP test (subjecting raft to 3.5 bar working pressure).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image33.jpeg" alt="Life Raft Inspection" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Beaching Procedures</h3>
<p>Landing on a beach:</p>
<ul>
<li>On a flat beach: maintain normal position and full speed until dry on shore; personnel jump out and drag the boat clear of the sea</li>
<li>On a steep coast: maintain stern-to approach if possible; traverse to catch the sea surge and drag upward before stranding</li>
</ul>',
'text', 3, 270, 1),

(@course_id,
'Survival Craft Measures, Helicopter Rescue and Hypothermia',
'<h2>Initial Actions on Board a Survival Craft</h2>
<p>Once aboard a survival craft:</p>
<ul>
<li>Know your current location and destination at all times</li>
<li>Monitor weather conditions; estimate time to a safe location</li>
<li>Keep a lookout for other boats on the horizon</li>
<li>Know all federal and state maritime laws and follow them</li>
<li>Ensure all persons wear lifejackets and sit along the central axis of the boat</li>
<li>Point the bow at 45° to incoming waves; anchor if the engine stops</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image39.jpeg" alt="Survival Craft" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Survival Routines</h2>
<h3>Protection of Occupants</h3>
<p>After boarding a life raft, lower weather aprons over front and back entrances and fasten them. Maintain a lookout through the viewing port. Dry out any accumulated water with the bailer or sponge.</p>
<ul>
<li><strong>Cold weather</strong>: inflate the insulating floor using the hand bellows connected to the floor inflation valve</li>
<li><strong>Hot weather</strong>: deflate the floor to provide a cooling effect</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image40.jpeg" alt="Life Raft Routines" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Buoyancy Chamber Maintenance</h3>
<p>Maintain adequate air pressure in buoyancy chambers and canopy support tubes. In hot sunshine, gas expands and escapes through safety topping-up valves (normal hissing sound). In cold conditions, top up through the safety valves using hand bellows. Remove the rubber plug before topping-up, replace it after. Sharp objects are strictly forbidden in the life raft — they can pierce the buoyancy chambers.</p>
<h3>Canopy Lights</h3>
<p>Inflatable life rafts have two canopy lights, both sea-activated or dry-chemical-cell powered, operating automatically when inflated on water. They can both operate for at least 12 hours. To prolong cell life, disconnect lights in daytime and reconnect at night.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image41.jpeg" alt="Canopy Lights" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Repairing Buoyancy Chamber Punctures</h3>
<p>Repair procedure:</p>
<ol>
<li>Dry the damaged area completely</li>
<li>Clean the surrounding area with emery paper from the repair kit</li>
<li>Cut a patch at least 25mm larger in circumference than the damage</li>
<li>Apply repair gum on both the patch and damaged area surfaces</li>
<li>Wait for the solution to dry, then press the patch on, using a small roller to expel air bubbles</li>
<li>Wait at least 5 minutes before re-inflation</li>
</ol>
<h2>Food and Water Rations</h2>
<p>Food is less critical than water — a person can survive weeks without food but only days without water. Never drink seawater. Distribute food and water at regular intervals (dawn, noon, dusk if no clock). Assign a trustworthy person to control rationing. Fish can provide both food and fluids — the flesh of open-sea fish is good raw or cooked; juice can be extracted by wrapping pieces in cloth and twisting.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image42.jpeg" alt="Food and Water Rationing" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Maximizing Detectability</h2>
<p>Before departure and at all times on board survival craft:</p>
<ul>
<li>Check radio, lights, steering, gauges, fuel level, pumps and anchor</li>
<li>Ensure proper safety equipment is aboard and in good condition</li>
<li>Share float plan with a responsible person ashore</li>
<li>Learn weather conditions for the area and time of year</li>
<li>Ensure enough lifejackets for all passengers in correct sizes</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image43.gif" alt="Detectability" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Helicopter Rescue Methods</h2>
<h3>Rescue from the Water</h3>
<p>Survivors in the water are rescued using a rescue net lowered and towed by the helicopter — the survivor is scooped up in the net.</p>
<h3>Rescue from a Survival Craft</h3>
<p>A rescue sling is lowered from the helicopter. Survivors pull the sling over their back until it rests securely under the armpits, then are lifted into the helicopter one by one.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image44.jpeg" alt="Helicopter Rescue" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Communicating with the Helicopter</h3>
<p>Before helicopter arrival, contact crew by VHF Channel 16. The rescue boat can operate in two ways:</p>
<ol>
<li><strong>Taking initiative</strong>: maintain preferred course and speed (typically 50° off wind at about 10 knots) while the helicopter adapts to the boat\'s parameters</li>
<li><strong>Adapting to helicopter</strong>: helicopter chooses direction and speed; rescue boat approaches to position below the helicopter from the stern — used when conditions are favorable</li>
</ol>
<img src="https://pamel.edu.pa/uploads/psrb/image45.jpeg" alt="Helicopter Communication" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Helicopter Pickup Procedure</h3>
<ul>
<li>The helicopter first lowers a cable — let it touch water to discharge static electricity before handling</li>
<li>Never tie the cable to anything aboard (grave risk to the helicopter)</li>
<li>Obey all crew instructions</li>
<li>When in a life raft: activate SART (if available), use portable VHF, light sparkler, use signal mirror, or throw smoke pot</li>
<li>Never launch a rocket parachute flare when a helicopter is approaching</li>
<li>Keep arms at sides or folded across chest during lifting; let rescuers bring you in at the helicopter door</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image46.jpeg" alt="Helicopter Pickup" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Hypothermia</h2>
<p>Loss of body heat is one of the greatest threats to survival at sea. Factors affecting heat loss rate: water temperature, protective suits, and the survivor\'s activity level.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image51.png" alt="Hypothermia" style="max-width:100%;height:auto;margin:10px 0;">
<p>Progression of hypothermia:</p>
<ul>
<li>Initial response: blood vessel constriction and shivering to retain/produce heat</li>
<li>At 35°C: core temperature begins to fall faster — discomfort, fatigue, lack of coordination, numbness, slurred speech</li>
<li>Below 32.2°C: unconsciousness, bluish skin, collapsed surface veins, dilated pupils, muscle stiffness, irregular heart rhythm</li>
<li>Below 29.4°C: very difficult to determine if the patient is alive or dead</li>
</ul>
<h3>Treatment of Hypothermia</h3>
<p>For mild cases (victim shivering but conscious): change to dry clothing or blankets, rest in warm atmosphere. For serious cases (unconscious or semiconscious):</p>
<ol>
<li>Remove victim from cold; lay horizontal; avoid unnecessary movement; check breathing and pulse</li>
<li>Move to a warm place; remove wet clothing with scissors/knife; do not massage</li>
<li>Place in recovery position; prepare for CPR if breathing and pulse are absent</li>
<li>Administer humidified heated oxygen by mask if possible</li>
<li>Isolate from heat loss with a blanket; do not aggressively rewarm unconscious victims</li>
<li>For delayed hospitalization: apply warm pillows/hot water bottles under the blanket; body-to-body contact wrapped in a blanket</li>
</ol>
<p><strong>Never give alcohol, food, or drink to an unconscious victim.</strong> Final warming is hospital responsibility. The aim of first aid is to prevent further cooling.',
'text', 4, 270, 1),

(@course_id,
'Radio Equipment and First Aid',
'<h2>Two-Way VHF Radiotelephone (GMDSS)</h2>
<p>Multi-channel GMDSS survival craft VHF radio characteristics:</p>
<ul>
<li>All maritime simplex channels including weather, with automatic selection of Channel 16 on switch-on</li>
<li>Floats if lost overboard; highly visible yellow waterproof case to 10 ft (3.3 m) depth</li>
<li>Simple touch-pad operation for unskilled users or gloved hands</li>
<li>Can be packed in life rafts/lifeboats; coiled lanyard, belt clip and wrist lanyard</li>
<li>Operating life: 8 hours continuous (lithium), up to 6 hours (rechargeable)</li>
<li>Dimensions: 2.6 × 1.7 × 7.6 in; Weight: 1.0 lb (453 g) with lithium battery</li>
<li>Complies with GMDSS, SOLAS/IMO A.605(15), FCC approved</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image55.jpeg" alt="VHF Radio" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Channel VHF GMDSS (2-channel model)</h3>
<ul>
<li>Transmits and receives on VHF Channels 16 and 6</li>
<li>Withstands total immersion to 10 ft (3.3 m)</li>
<li>Can be stored in a survival craft for up to 5 years</li>
<li>Easily replaceable push/twist/lock battery with 5-year replacement life</li>
<li>Operating life: 8 hours at -20°C (-4°F)</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image56.jpeg" alt="Two-Channel VHF" style="max-width:100%;height:auto;margin:10px 0;">
<h2>EPIRB — Emergency Position-Indicating Radio Beacon</h2>
<p>An EPIRB is a radio transmitter used in emergencies to facilitate the location of a ship, aircraft, or person in danger. When activated, it sends intermittent signals with data allowing location. Signals are picked up by the COSPAS-SARSAT satellite network, which calculates position and alerts rescue services. Newer models send GPS coordinates directly, speeding recovery. Between 1982 and 2002, this system rescued nearly 14,700 people.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image57.jpeg" alt="EPIRB" style="max-width:100%;height:auto;margin:10px 0;">
<p>Three types of emergency beacons:</p>
<ul>
<li><strong>EPIRB</strong> (Maritime): Emergency Position-Indicating Radio Beacon</li>
<li><strong>ELT</strong> (Aviation): Emergency Locator Transmitter</li>
<li><strong>PLB</strong> (Personal): Personal Locator Beacon</li>
</ul>
<h2>SART — Search and Rescue Transponder</h2>
<p>The SART is a vital GMDSS survival method for locating ships in distress. It operates in the 9 GHz band (X-band), generating a series of signals in response to interrogation by a radar in the same band (ship or aircraft).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image58.jpeg" alt="SART" style="max-width:100%;height:auto;margin:10px 0;">
<p>SART characteristics:</p>
<ul>
<li>Can be permanently installed in a lifeboat or used as a float-operated unit</li>
<li>Can be manually or automatically activated when in the water</li>
<li>Responds to radar interrogations by generating a frequency sweep of 20 pulses along 8 nautical miles of radar range</li>
<li>Visual or audible indication informs survivors when being interrogated by radar</li>
<li>Detectable at a minimum 10 miles with a radar antenna at approximately 15m height</li>
</ul>
<h2>Distress Signals, Signaling Equipment and Pyrotechnics</h2>
<p>Pyrotechnic distress signals used on survival craft include:</p>
<ul>
<li>Hand flares (red): visible at close range, used to signal rescuers</li>
<li>Parachute rocket flares: high altitude, maximum range — never launch when a helicopter is approaching</li>
<li>Smoke signals (orange): daytime visibility, especially for helicopters</li>
<li>Signal mirror: for helicopter or distant vessel signaling</li>
<li>Chemical lights (cyalume): non-pyrotechnic alternative for dark conditions</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image59.jpeg" alt="Distress Signals" style="max-width:100%;height:auto;margin:10px 0;">
<h2>First Aid</h2>
<p>First Aid is the immediate and temporary application of techniques to a victim of an accident or sudden illness, at the location of events, before transfer to a hospital. The rescuer should never attempt to replace medical staff — first aid is the first layer of assistance only.</p>
<img src="https://pamel.edu.pa/uploads/psrb/image60.jpeg" alt="First Aid" style="max-width:100%;height:auto;margin:10px 0;">
<h3>CPR — Cardiopulmonary Resuscitation</h3>
<p>CPR is an emergency life-saving procedure used when a person has stopped breathing or the heart has stopped beating (after electric shock, heart attack, drowning, or other cardiac arrest). It combines:</p>
<ul>
<li><strong>Rescue breathing</strong>: supplies air to the lungs</li>
<li><strong>Cardiac compressions</strong>: restores heart activity</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image61.jpeg" alt="CPR Technique" style="max-width:100%;height:auto;margin:10px 0;">
<p>Current CPR guidelines emphasize <strong>compressions over mouth-to-mouth and airway</strong>, reversing older practice. Brain damage or death can occur within minutes without circulation — begin CPR immediately and continue until trained medical help arrives. Technique variations exist based on patient age and size. Associated techniques include the Heimlich maneuver and automated external defibrillators (AEDs).</p>
<img src="https://pamel.edu.pa/uploads/psrb/image62.jpeg" alt="CPR Compressions" style="max-width:100%;height:auto;margin:10px 0;">
<h3>First Aid Kit Contents and Use</h3>
<ul>
<li><strong>Cotton</strong>: clean wounds; use between gauze layers to make dressings</li>
<li><strong>Gauze</strong>: cover wounds after washing and disinfecting; always use between wound and bandage</li>
<li><strong>Bandage</strong>: hold dressings, wrap wounds, restrain injured body parts</li>
<li><strong>Adhesive tape</strong>: secure dressings and bandages</li>
<li><strong>Alcohol</strong>: antiseptic for small wounds and abrasions</li>
<li><strong>Hydrogen peroxide</strong>: clean and disinfect wounds; stop superficial hemorrhages</li>
<li><strong>Normal saline</strong>: clean wounds and pour on burns</li>
<li><strong>Antiseptic liquid</strong>: prevent contamination and infection</li>
<li><strong>Sodium bicarbonate</strong>: compensate salt loss in heat-exposed patients; aids digestion</li>
<li><strong>Analgesics and anti-inflammatories</strong>: reduce fever and pain</li>
<li><strong>Scissors</strong>: cut clothing on burn/fracture patients to prevent tissue tearing</li>
<li><strong>Lanterns</strong>: examine injuries, foreign bodies, pupil size</li>
<li><strong>Tongue depressors</strong>: examine mouth/throat, prevent tongue biting in seizures</li>
<li><strong>Safety pins</strong>: secure bandages</li>
</ul>
<img src="https://pamel.edu.pa/uploads/psrb/image63.jpeg" alt="First Aid Kit" style="max-width:100%;height:auto;margin:10px 0;">
<img src="https://pamel.edu.pa/uploads/psrb/image64.jpeg" alt="First Aid Application" style="max-width:100%;height:auto;margin:10px 0;">
<img src="https://pamel.edu.pa/uploads/psrb/image65.png" alt="First Aid Summary" style="max-width:100%;height:auto;margin:10px 0;">',
'text', 5, 270, 1),

(@course_id,
'Practical Drills — Launch, Recovery and Evaluation',
'<h2>Drills in Launch and Recovery of Lifeboats</h2>
<p>Lifeboat launch means must allow rapid recovery with full crew and equipment. Davit requirements:</p>
<ul>
<li>Must allow operations with the ship listed 15° to any side</li>
<li>Gear must reach the water at the ship\'s lowest draft and heeled 15°</li>
<li>Lower pulley blocks fitted with a ring or elongated link for attachment to davit hangers</li>
<li>Rigging must be firmly secured aloft; no loose ropes or objects on the outside</li>
<li>Each davit station must have a rope ladder reaching the water at minimum draft with 15° list</li>
</ul>
<p>Required accessories at each davit station:</p>
<ul>
<li>Scale/ladder for crew access to boats being hauled</li>
<li>Devices connected to emergency lighting to illuminate gear and boats during launching</li>
<li>Alarm devices to warn passengers and crew when abandoning ship</li>
<li>Means to prevent water discharge from machinery onto boats</li>
</ul>
<h2>Davit-Launched Life Rafts</h2>
<p>Davit-launched life rafts are ideal complements to evacuation slides, providing safe evacuation for those unable to use slides due to injury, disability, or size. They can be launched from almost any vessel type regardless of deck height or hull shape. Standard sizes available: 12, 16, 20, 25, 35 persons. Car ferry sizes: 25, 37, 39 persons.</p>
<h2>Throw-Overboard Life Rafts</h2>
<p>Throw-overboard life rafts are designed as standalone units or as part of evacuation systems. They can be stored on racks and ramps almost anywhere on deck, saving valuable deck space and causing minimal disruption. Particularly important for passenger ships where space is limited.</p>
<h2>Boarding a Life Raft from the Water</h2>
<p>Climbing up into a life raft can be difficult but is assisted by a rope ladder. Procedure:</p>
<ol>
<li>Position yourself horizontally in the water beside the raft</li>
<li>Grab the boarding rope/wreath inside the raft</li>
<li>Place a foot on the rope ladder</li>
<li>Push with your foot and simultaneously throw the boarding rope/wreath to pull yourself up</li>
<li>Swing and enter the raft</li>
</ol>
<h2>Righting an Inverted Life Raft</h2>
<p>Procedure for righting a capsized life raft:</p>
<ol>
<li>Pull the line with force to actuate automatic inflation</li>
<li>Climb aboard the inverted raft bottom (give it back if it fell backwards)</li>
<li>Cut the mooring if necessary (always carry a knife)</li>
<li>If the raft flips, right it from the water:</li>
<li>Climb onto the bottom, grab the cross belt, stand on the gas bottle (this side is closer to water surface)</li>
<li>Pull your weight back — always do this downwind</li>
<li>If the raft is not tied to the boat, hold it immediately — wind can drag it away</li>
<li>Once all persons are aboard, cut the rope binding the raft to the vessel</li>
</ol>
<h2>Drills in Launch and Recovery of Rescue Boats</h2>
<p>Rescue boat launch means must allow rapid recovery with full complement and equipment. In passenger ships, the means allow launch directly from the stowed position with assigned crew. If embarking from a deck, the lifeboat can be launched from the open deck.</p>
<p>Drill components include:</p>
<ul>
<li>Pre-launch checks: painter, harbour safety pins, boat plugs, rudder, lifelines</li>
<li>Lowering to embarkation deck and mustering crew</li>
<li>Embarkation, engine start, lowering to water</li>
<li>Unhooking (simultaneous fore and aft)</li>
<li>Clearing the ship\'s side</li>
<li>Recovery: approaching, hooking up, hoisting</li>
<li>Post-drill: returning all equipment to proper position, debriefing</li>
</ul>
<h2>Practical Exercises and Evaluation</h2>
<p>Practical evaluation covers all competency areas:</p>
<ul>
<li>Donning and use of lifejackets and immersion suits</li>
<li>Operation of launching and recovery equipment</li>
<li>Launching and recovery of lifeboats, life rafts, and rescue boats</li>
<li>Taking charge of a survival craft and organizing survivors</li>
<li>Operating the lifeboat engine and outboard engine</li>
<li>Handling survival craft in adverse conditions</li>
<li>Use of radio communication equipment (VHF, EPIRB, SART)</li>
<li>Application of first aid and hypothermia treatment procedures</li>
<li>Helicopter rescue coordination</li>
</ul>',
'text', 6, 540, 1);

-- ============================================================
-- QUIZ
-- ============================================================
INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id,
'Proficiency in Survival Craft and Rescue Boats — Final Examination',
'Final examination covering all topics: safety orientation, abandonment of ship, survival craft types, launching arrangements, engines, adverse weather handling, survival craft measures, helicopter rescue, hypothermia, radio equipment, and first aid.',
70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- ============================================================
-- QUESTIONS (20)
-- ============================================================
INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'What is the minimum number of rescue boats required on a cargo ship?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'What STCW regulation and section govern proficiency in survival craft and rescue boats other than FRBs?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'How often must an inflatable life raft undergo a full review by law?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'At what water depth does a Hydrostatic Release Unit (HRU) activate to release the life raft?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What are the four stages of an abandon ship drill in the correct order?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'What is the maximum permitted lubricating oil loss from a lifeboat propulsion system upon capsize?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'What VHF channel does the GMDSS survival craft radio automatically select upon switch-on?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'What does EPIRB stand for?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'In what frequency band does the Search and Rescue Transponder (SART) operate?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'What is the current CPR guideline emphasis?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'What is the recommended pick-up position along the rescue boat to recover survivors?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'What type of lifeboat provides a self-contained air support system for use in fire conditions?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'What is the minimum vertical clearance inside a lifeboat designed to accommodate 21 persons or less?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'What is a Marine Evacuation System?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What should you do with the helicopter cable before handling it during a rescue?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'What is the minimum waterproof depth for a GMDSS survival craft VHF radio?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'For how long can the canopy lights of a life raft operate continuously?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'Who is the last person to embark the lifeboat during an abandon ship drill?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'At what minimum speed must a rescue boat be able to tow a fully loaded 25-person life raft?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'Below what core body temperature does hypothermia become immediately life-threatening with irregular heart rhythm?', 'multiple_choice', 1, 20, NOW());

-- ============================================================
-- OPTIONS (4 per question = 80 total)
-- ============================================================
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

-- Q1: Min rescue boats on cargo ship
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'At least one rescue boat', 1, 1),
(@q1, 'Two rescue boats, one on each side', 0, 2),
(@q1, 'Three rescue boats', 0, 3),
(@q1, 'There is no minimum requirement', 0, 4);

-- Q2: STCW regulation
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'Regulation VI/2, Section A-VI/2, paragraphs 1-6 and Table A-VI/2-1', 1, 1),
(@q2, 'Regulation VI/2, Section A-VI/2, paragraphs 7-12 and Table A-VI/2-2', 0, 2),
(@q2, 'Regulation III/2, Section A-III/2', 0, 3),
(@q2, 'Regulation IV/1, Section A-IV/1', 0, 4);

-- Q3: Life raft review interval
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Every 5 years', 1, 1),
(@q3, 'Every 2 years', 0, 2),
(@q3, 'Every 3 years', 0, 3),
(@q3, 'Annually', 0, 4);

-- Q4: HRU depth
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Up to 4 metres', 1, 1),
(@q4, 'Up to 2 metres', 0, 2),
(@q4, 'Up to 8 metres', 0, 3),
(@q4, 'Up to 10 metres', 0, 4);

-- Q5: Abandon ship stages
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Notification/Mustering, Lowering, Embarking, Debriefing', 1, 1),
(@q5, 'Alarm, Muster, Launch, Rescue', 0, 2),
(@q5, 'Briefing, Embarkation, Launching, Recovery', 0, 3),
(@q5, 'Alert, Muster, Abandon, Clear', 0, 4);

-- Q6: Max oil loss on capsize
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Less than 250 ml', 1, 1),
(@q6, 'Less than 500 ml', 0, 2),
(@q6, 'Less than 1 litre', 0, 3),
(@q6, 'No loss is permitted', 0, 4);

-- Q7: GMDSS auto channel
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'Channel 16', 1, 1),
(@q7, 'Channel 6', 0, 2),
(@q7, 'Channel 70', 0, 3),
(@q7, 'Channel 12', 0, 4);

-- Q8: EPIRB meaning
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Emergency Position-Indicating Radio Beacon', 1, 1),
(@q8, 'Electronic Position Indicating Rescue Buoy', 0, 2),
(@q8, 'Emergency Positioning Indicator Radio Buoy', 0, 3),
(@q8, 'Electronic Positioning Indicating Radio Beacon', 0, 4);

-- Q9: SART band
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, '9 GHz band (X-band)', 1, 1),
(@q9, '3 GHz band (S-band)', 0, 2),
(@q9, '156 MHz band (VHF)', 0, 3),
(@q9, '2182 kHz band (MF)', 0, 4);

-- Q10: CPR emphasis
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Chest compressions over mouth-to-mouth and airway management', 1, 1),
(@q10, 'Mouth-to-mouth over chest compressions', 0, 2),
(@q10, 'Airway clearance first, then chest compressions', 0, 3),
(@q10, 'Equal emphasis on compressions, breathing and airway', 0, 4);

-- Q11: Survivor pick-up position
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, '3/4 of the length from the bow', 1, 1),
(@q11, 'At the stern', 0, 2),
(@q11, 'Amidships', 0, 3),
(@q11, 'At the bow', 0, 4);

-- Q12: Lifeboat type with air support
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Totally enclosed lifeboat with self-contained air support system', 1, 1),
(@q12, 'Fire-protected lifeboat', 0, 2),
(@q12, 'Self-righting partially enclosed lifeboat', 0, 3),
(@q12, 'Open lifeboat with air tanks', 0, 4);

-- Q13: Min vertical clearance 21 persons or less
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, '1.3 metres', 1, 1),
(@q13, '1.7 metres', 0, 2),
(@q13, '1.0 metres', 0, 3),
(@q13, '2.0 metres', 0, 4);

-- Q14: Marine Evacuation System
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'A slide or tube through which passengers evacuate directly into a life raft', 1, 1),
(@q14, 'An automated alarm system for ship abandonment', 0, 2),
(@q14, 'A crane system for lowering lifeboats', 0, 3),
(@q14, 'A satellite communication system for distress signals', 0, 4);

-- Q15: Helicopter cable
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Let it touch the water first to discharge static electricity, then handle it — never tie it to the vessel', 1, 1),
(@q15, 'Tie the cable immediately to a fixed point on the boat', 0, 2),
(@q15, 'Pull the cable to guide the helicopter closer', 0, 3),
(@q15, 'Do not touch the cable until a rescuer attaches it to you', 0, 4);

-- Q16: VHF waterproof depth
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, '10 ft (3.3 m)', 1, 1),
(@q16, '3 ft (1 m)', 0, 2),
(@q16, '20 ft (6 m)', 0, 3),
(@q16, '5 ft (1.5 m)', 0, 4);

-- Q17: Canopy lights duration
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'At least 12 hours', 1, 1),
(@q17, 'At least 8 hours', 0, 2),
(@q17, 'At least 24 hours', 0, 3),
(@q17, 'At least 6 hours', 0, 4);

-- Q18: Last to embark
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'The Master', 1, 1),
(@q18, 'The Chief Officer', 0, 2),
(@q18, 'The Safety Officer', 0, 3),
(@q18, 'The Chief Engineer', 0, 4);

-- Q19: Rescue boat towing speed
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, '6 knots', 1, 1),
(@q19, '5 knots', 0, 2),
(@q19, '8 knots', 0, 3),
(@q19, '4 knots', 0, 4);

-- Q20: Critical hypothermia temperature
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Below 32.2°C', 1, 1),
(@q20, 'Below 35°C', 0, 2),
(@q20, 'Below 29.4°C', 0, 3),
(@q20, 'Below 37°C', 0, 4);

-- Verification
SELECT 'Course' AS entity, id, title, status FROM lms_courses WHERE id=@course_id;
SELECT COUNT(*) AS lesson_count FROM lms_lessons WHERE course_id=@course_id;
SELECT COUNT(*) AS quiz_count FROM lms_quizzes WHERE course_id=@course_id;
SELECT COUNT(*) AS question_count FROM lms_questions WHERE quiz_id=@qid;
SELECT COUNT(*) AS option_count FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@qid);
