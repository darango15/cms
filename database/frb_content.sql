-- Proficiency in Fast Rescue Boats (FRB)
-- STCW Regulation VI/2, Section A-VI/2, paragraphs 7-12 and Table A-VI/2-2
-- 31 images copied to public/uploads/frb/ (image1-image31; image32, image33 excluded as not in rels)
-- Total: 25 hours (11.5 theoretical + 13.5 practical)

INSERT INTO lms_courses (teacher_id, category_id, course_code, title, slug, description, image, level, status, pass_percentage, is_free, price)
VALUES (NULL, 6, 'FRB', 'Proficiency in Fast Rescue Boats', 'proficiency-in-fast-rescue-boats',
'This course provides mandatory minimum standards of competence for proficiency in fast rescue boats in accordance with STCW Regulation VI/2, Section A-VI/2, paragraphs 7-12 and Table A-VI/2-2. Topics include construction and equipment of fast rescue boats, launching and recovery devices, cargo and safety assessments, boat handling in adverse sea conditions, search and rescue operations, casualty care, and engine operation and maintenance. Total: 25 hours (11.5 theoretical + 13.5 practical workshops).',
'https://pamel.edu.pa/uploads/frb/image1.jpeg', 'advanced', 'published', 70, 0, 0.00);

SET @course_id = LAST_INSERT_ID();

-- Safety cleanup (idempotent re-run)
DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=@course_id);
DELETE FROM lms_quizzes WHERE course_id=@course_id;
DELETE FROM lms_lessons WHERE course_id=@course_id;

-- ============================================================
-- LESSONS
-- ============================================================
INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(@course_id,
'Construction and Equipment of Fast Rescue Boats',
'<h2>Purpose and Types of Fast Rescue Boats</h2>
<p>Ship Contingency Plans describe the actions to take in the event of a calamity on board, including the use of Fast Rescue Boats (FRBs). FRBs are valuable in situations such as man overboard, general evacuation, combined rescue operations, transport of injured persons, and assistance in searches.</p>
<img src="https://pamel.edu.pa/uploads/frb/image1.jpeg" alt="Fast Rescue Boat" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Rigid Rescue Boats (RIB)</h3>
<p>A Rigid Inflatable Boat (RIB) is a lightweight but high-performance boat constructed with a rigid hull bottom joined to side-forming air tubes inflated to high pressure. The design is stable, light, fast and seaworthy. The inflated collar acts as a life jacket, ensuring the vessel retains buoyancy even when taking on water.</p>
<img src="https://pamel.edu.pa/uploads/frb/image2.jpeg" alt="RIB Construction" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Rigid Inflatable Rescue Boats</h3>
<p>An inflatable rescue boat is a lightweight boat with sides and bow made of flexible tubes containing pressurised gas. For boats longer than 3 metres, the floor typically consists of three to five rigid plywood or aluminium sheets. The transom is often rigid, providing a mounting location for an outboard motor. Some models can be disassembled and packed into a small volume for storage and transport.</p>
<h2>Construction and Design</h2>
<p>RIBs have lengths from 6 to 12 metres. Their construction allows full stability and maneuverability in high seas, enabling high speed with good acceleration and auto-stabilizing properties. They can operate in any sea state and reach distressed vessels promptly, though speed decreases when loaded with rescued survivors.</p>
<img src="https://pamel.edu.pa/uploads/frb/image3.jpeg" alt="FRB Design" style="max-width:100%;height:auto;margin:10px 0;">
<p>Propulsion is achieved by fixed or outboard engines:</p>
<ul>
<li><strong>Fixed installation</strong>: propellers aligned parallel to the keel, requiring a rudder for steering; astern movement by reversing the engine</li>
<li><strong>Outboard motor</strong>: steered by varying the direction of thrust directly; when two are fitted, differential thrust provides maneuvering</li>
</ul>
<h2>Standard Equipment</h2>
<p>Typical FRB equipment inventory:</p>
<ul>
<li>ZODIAC Futura MK-II, ZODIAC MK-II GR, MK-III GR, and MK-V HD vessels</li>
<li>Evinrude 2-stroke outboard motors (6, 30, 40 hp) and YAMAHA 2-stroke motors (30 hp)</li>
<li>Kristal XL 55 stowing equipment with derrick (2 spools, 60m and 270m stainless steel cable)</li>
<li>Hand winch with 60m cable</li>
<li>Fishfinder/GPS Furuno GP1610 CF and Wide Optic Echo-sounder (Humminbird)</li>
<li>Compass and Radio Walky Talky</li>
<li>Anchor, grapnel and drogue</li>
<li>Security Kit: first aid kit, flares, smoke canisters, thermal blankets</li>
<li>Neoprene survival bodywear: Mustang OceanClass 2-piece and 1-piece suits</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image4.jpeg" alt="FRB Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Materials and Emergency Repairs</h2>
<p>BIR (Rigid Inflatable Boat) chambers are manufactured from rubber elastomers, polymers, and thermoplastics designed as impermeable barriers for pressurizing gas. Key material properties required: tear strength, abrasion resistance, flexibility, weather resistance, and tolerance to high temperatures.</p>
<img src="https://pamel.edu.pa/uploads/frb/image5.png" alt="FRB Materials" style="max-width:100%;height:auto;margin:10px 0;">
<p>Commonly used materials:</p>
<ul>
<li><strong>Neoprene</strong>: lower cost</li>
<li><strong>Hypalon</strong>: better resistance to abrasion, ozone, UV and oil (more expensive, harder to handle)</li>
</ul>
<p>Gas permeability increases with rising temperature and decreases with increasing layer thickness. A small compressor may be needed to maintain constant internal pressure during high-sea operations.</p>
<h2>Ignition System</h2>
<p>The ignition circuit of a marine combustion engine consists of:</p>
<ul>
<li><strong>Power source</strong>: battery (electric start) or generated current (small engines)</li>
<li><strong>Coil</strong>: primary (low voltage) and secondary (high voltage) windings</li>
<li><strong>Breaker</strong>: mobile switch controlling induction timing</li>
<li><strong>Capacitor/Condenser</strong>: prevents current arcing across open breaker contacts</li>
<li><strong>Spark plug</strong>: creates ignition spark at Top Dead Centre (TDC)</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image6.png" alt="Ignition System" style="max-width:100%;height:auto;margin:10px 0;">
<p>When the breaker opens, induction in the coil winding produces high voltage current that flows to the spark plug, creating a spark between the electrodes at the precise moment the piston reaches TDC. Electronic ignition systems replace mechanical breakers, eliminating failure points and ensuring consistent spark delivery.</p>',
'text', 1, 270, 1),

(@course_id,
'Equipment, Launching Devices and Safety Precautions',
'<h2>Navigation Equipment</h2>
<p>Fast rescue boats carry essential navigation instruments:</p>
<ul>
<li><strong>Magnetic Compass</strong>: primary direction-finding instrument</li>
<li><strong>Standard GPS</strong>: satellite positioning system</li>
<li><strong>Echo Sounder</strong>: measures water depth below the vessel</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image7.png" alt="Navigation Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Safety Equipment</h2>
<h3>Pyrotechnics and Signals</h3>
<p>Sparklers, firecrackers, and smoke bombs must be stored in a dry location, kept out of reach of children. Instructions must be memorized before use — especially for night-time or low-visibility deployment. Expiration dates must be strictly observed. Complement mandatory pyrotechnics with mirrors, strobe lights, and chemical lights.</p>
<img src="https://pamel.edu.pa/uploads/frb/image8.png" alt="Safety Signals" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Lifejackets</h3>
<p>Requirements:</p>
<ul>
<li>At least one lifejacket per crew member, adapted to size, weight and age</li>
<li>Minors must have lifejackets with leg straps</li>
<li>Inflatable lifejackets serviced annually at an authorized station</li>
<li>Keep in perfect condition — buckles, pins and seals clean and greased</li>
<li>If wetted by seawater, rinse with fresh water and dry before storing</li>
<li>EC legislation defines four types by buoyancy in Newtons (N)</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image9.jpeg" alt="Lifejackets" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Fire Extinguishers</h3>
<p>Portable fire extinguishers must always be within reach and regularly inspected by authorized companies. Five types exist (A, B, C, D, F) for different types of fires — power-source fires are most common on board. All crew must know exact location and operation. A fire blanket should be available to smother small fires.</p>
<img src="https://pamel.edu.pa/uploads/frb/image10.jpeg" alt="Fire Extinguishers" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Lifebuoys</h3>
<p>Lifebuoys (hoops) are critical for man overboard situations. They must be placed at the wings or stern in a fast-release system. The vessel\'s name must be displayed on the lifebuoy. Equip with a telescopic hanger floating IOR (International Offshore Rule) for greater visibility. If a life ring is lost, notify Salvage — it may be found and an alarm activated.</p>
<img src="https://pamel.edu.pa/uploads/frb/image11.jpeg" alt="Lifebuoys" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Emergency Equipment</h3>
<p>Essential emergency items to carry:</p>
<ul>
<li>Mask, snorkel and fins for diving to free entangled ropes</li>
<li>A sharp knife to cut lines</li>
<li>Portable dewatering pumps</li>
<li>Survival backpack: beacon, portable VHF, pocket knife, energy foods, waterproof flashlight, cords, flares, first aid kit, water, dry clothes, shelter</li>
<li>Radar reflector mounted on the highest part of the boat</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image12.jpeg" alt="Emergency Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Boat Equipment Requirements</h2>
<p>Minimum required equipment:</p>
<ul>
<li>Rescue lines (throw lines) — minimum 15 metres each, buoyant, factory-certified</li>
<li>Minimum two boats, one designated as safety boat</li>
<li>Professional canoe helmet for each user</li>
<li>Professional lifejacket for each user plus a spare</li>
<li>Paddle per passenger and two spare oars</li>
<li>Three special long oars (sweeps) per boat using long-oar propulsion</li>
<li>Rescue team briefcase/backpack with: 2 pulleys, 4 muskets, 40-foot static rope, 2 anchor lines, 3 meters of webbing, special items</li>
<li>Complete first aid kit sized for expedition passenger count</li>
<li>Equipment repair kit: patches, glue, valve, tools, cleaning materials, sewing thread</li>
<li>Inflator/pump</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image13.jpeg" alt="Boat Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Launching and Recovery Equipment</h2>
<p>Required davit and launch system components:</p>
<ul>
<li>Scale/ladder for each set of davits to allow crew access when hauling</li>
<li>Emergency lighting connected to the emergency lighting system</li>
<li>Alarm devices to warn passengers and crew when abandoning ship</li>
<li>Means to prevent water discharge from machinery onto boats</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image14.png" alt="Launching Equipment" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Winch, Brakes and Davit System</h2>
<p>All fast rescue boats must comply with lifeboat construction requirements and be strong enough to be lowered into water at 5 knots in calm water with full complement. Winch system components include:</p>
<ul>
<li>Winch drum with braking mechanism</li>
<li>Straps and pawns for controlled release</li>
<li>Motion compensation equipment for heavy sea conditions</li>
<li>Single-point suspension arrangement (if possible)</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image15.png" alt="Winch System" style="max-width:100%;height:auto;margin:10px 0;">
<p>Minimum construction requirements:</p>
<ul>
<li>Overall length: 3.8 to 8.5 metres</li>
<li>Hood covering forward 15% of length (if adequate sheer)</li>
<li>Minimum capacity: 5 persons (sitting and lying)</li>
<li>Access means for stretcher-borne or handicapped persons</li>
<li>Inboard or outboard engine propulsion</li>
<li>Can qualify as a lifeboat if meeting both sets of requirements simultaneously</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image16.png" alt="Rescue Boat Construction" style="max-width:100%;height:auto;margin:10px 0;">',
'text', 2, 270, 1),

(@course_id,
'Loading, Launching and Recovery Procedures',
'<h2>Assessment of Equipment Availability</h2>
<p>Prior to any rescue operation, knowledge of possible vessel behavior relative to external agents is required. The position of the rescue boat relative to the stricken vessel depends on the resultant of wind and sea forces. Three possible conditions of a stricken ship:</p>
<ul>
<li><strong>Drifting</strong>: ship driven by wind and current with no power</li>
<li><strong>Under government</strong>: ship has some steerage or engine power</li>
<li><strong>Anchored</strong>: relatively stable position relative to the bottom</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image17.jpeg" alt="Rescue Assessment" style="max-width:100%;height:auto;margin:10px 0;">
<p>For a drifting ship, the rescue boat must account for drift direction relative to wind and waves. The ship crosses the wind/wave direction providing a leeward side — favorable in most cases except when fire or leakage affects the entire leeward side.</p>
<h2>Safety Precautions and Coming Alongside</h2>
<p>Approach from the lee side, far enough away to assess:</p>
<ul>
<li>Position of landing means and risks (discharges, leaks, blockages)</li>
<li>Most favorable approach position (lower decks, available fenders)</li>
<li>Vessel motion and drift assessment</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image18.jpeg" alt="Approach Procedure" style="max-width:100%;height:auto;margin:10px 0;">
<p>Two approach techniques:</p>
<ol>
<li>When vessel has steerage way: open wind about 10-15° at 2-3 knots, approach on lee side from the bow</li>
<li>When first option poses additional risk (moving toward shallows/coast): use vessel at 3-5 knots stern-to-wind; rescue boat runs parallel at 10m, same speed, contacts aft of the bow wave. The 10m clearance allows the boat to overcome suction between hulls and allows both vessels to separate by slightly increasing speed.</li>
</ol>
<h2>Stretcher Transfer</h2>
<p>When transferring a hurt person only moveable by stretcher:</p>
<ul>
<li>Lower the stretcher horizontally, retained at both ends with guide lines</li>
<li>Guide from the rescue boat at the most favorable moment relative to external conditions</li>
<li>The stretcher must have sufficient buoyancy to remain afloat if it falls in the water</li>
</ul>
<h2>Maneuvering at Slow Speed</h2>
<p>When approaching from astern, boat speed must be higher than the wave traveling speed. Reduce speed to avoid riding the wave crest forward, or increase it if approaching a trough. The optimal position is between wave crests ahead, providing the best view of the entire situation.</p>
<img src="https://pamel.edu.pa/uploads/frb/image19.jpeg" alt="Slow Speed Maneuvering" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Maneuvering at Fast Speed</h2>
<p>The boat should achieve maximum speed while maintaining safety and comfort. Principles for harsh seas: use speed and direction to minimize wave effects. In seas with long shapely waves:</p>
<ul>
<li>Maneuver forward before the wave crest forms its vertical face</li>
<li>Turbulence before breaking can engulf the boat with significant water shipment if speed is insufficient</li>
<li>The most dangerous situation is when waves are received from the beam (through) — could cause rollover</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image20.jpeg" alt="Fast Speed Maneuvering" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Launch and Recovery in Adverse Weather</h2>
<p>Key external factors affecting operations:</p>
<ul>
<li>Sea condition and water depth</li>
<li>Wind direction and intensity</li>
<li>Current and tide</li>
<li>Available space for maneuvering</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image21.jpeg" alt="Adverse Weather Operations" style="max-width:100%;height:auto;margin:10px 0;">
<p>The Master must consider before initiating recovery operations: ship\'s maneuverability and freeboard, casualty recovery points, equipment limitations, available crew and personal protective equipment, wind force/direction/spray, significant wave height, period of waves, swell, and safety of navigation.</p>
<h2>Towing Operations</h2>
<p>The rescue boat\'s versatility allows it to tow other vessels, cluster rafts, and haul non-powered craft. Key considerations:</p>
<ul>
<li>Rescue boat power and structural strength must be adequate for the towing task</li>
<li>Assess status of occupants and available communications/signals</li>
<li>Towline must be long enough to provide catenary that absorbs shock loads</li>
<li>Avoid shallow areas where towline could snag the bottom</li>
<li>Keep slow tow speed to avoid excessive structural loading</li>
<li>Deploy a drogue from the stern of the towed vessel to reduce drift and improve control</li>
<li>Side-by-side towing (alongside) may be used where depth is limited — use bow and stern mooring lines</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image22.png" alt="Towing Procedure" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Pacing and Transfer of Survivors</h2>
<p>Risk of loss of control among survivors (everyone wanting to be rescued first) must be anticipated. Procedures:</p>
<ul>
<li>Establish advance notice to survivors about actions before contact is made</li>
<li>Provide reassurance and emotional/physical first aid advice</li>
<li>Use a sea anchor in one end of the survival craft to keep it as stable as possible</li>
<li>Approach to approximately 5m with fore elements before final contact</li>
<li>Once contact is made, secure with lashing ropes appropriate to conditions</li>
<li>Multiple rescue boats can operate simultaneously — one static against the ship assisting, others receiving survivors and moving to a safe location</li>
</ul>',
'text', 3, 270, 1),

(@course_id,
'Boat Handling, Search Patterns and Rescue Operations',
'<h2>FRB Specifications and SOLAS Requirements</h2>
<p>All fast rescue boats must comply with applicable SOLAS requirements:</p>
<ul>
<li>Minimum length: <strong>6 metres</strong>; maximum: <strong>8 metres</strong></li>
<li>Capable of maneuvering for at least <strong>4 hours</strong> at a minimum of <strong>20 knots</strong> in calm water with 3 qualified crew</li>
<li>At least <strong>8 knots</strong> with full complement of persons and equipment</li>
<li>Must be self-righting or capable of being readily righted by crew</li>
<li>Must be self-bailing or capable of being rapidly cleared of water</li>
<li>Steering wheel at a helmsman\'s position remote from the tiller</li>
<li>Emergency steering providing direct control of rudder, water jet, or outboard motor</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image23.jpeg" alt="FRB Specifications" style="max-width:100%;height:auto;margin:10px 0;">
<p>Engine requirements upon capsize:</p>
<ul>
<li>Must stop automatically or via helmsman\'s emergency release switch</li>
<li>After righting, each engine must be capable of restart (if emergency release has been reset)</li>
<li>Fuel/oil loss must not exceed <strong>250 ml</strong> from the propulsion system upon capsize</li>
<li>FRBs should be equipped with an easily operated fixed single-point suspension arrangement</li>
</ul>
<h2>Search and Rescue Master Considerations</h2>
<p>When a vessel participates in SAR operations, the Master should consider:</p>
<ul>
<li>Ship\'s maneuverability and freeboard</li>
<li>Points on the ship where casualties may be recovered</li>
<li>Characteristics and limitations of equipment</li>
<li>Available crew and personal protective equipment</li>
<li>Wind force, direction and spray</li>
<li>Significant wave height and wave period</li>
<li>Swell and safety of navigation</li>
</ul>
<h2>Righting an Inverted Fast Rescue Boat</h2>
<p>Capsize and righting procedures:</p>
<ul>
<li>The pivot point (PG) is positioned well aft, providing good steering control</li>
<li>Righting involves applying force/weight to counteract the heel</li>
<li>The process ceases when the righting force equals the heeling force</li>
<li>High-speed navigation transmits significant impacts to crew — proper crew selection is essential as large-ship personnel may not adapt easily and may be prone to injury</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image24.jpeg" alt="Righting Procedure" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Handling in Normal and Adverse Sea Conditions</h2>
<p>Critical principle: prevent the rescue boat from crossing the direction of waves. Receiving waves from the beam (through) is most dangerous and can result in rollover.</p>
<img src="https://pamel.edu.pa/uploads/frb/image25.jpeg" alt="Sea Condition Handling" style="max-width:100%;height:auto;margin:10px 0;">
<p>Two fundamental approach maneuvers when closing with a stricken vessel:</p>
<ol>
<li><strong>Using maneuvering characteristics</strong>: extensive knowledge of the rescue boat\'s responses and maximum evolution radius allows establishing the correct relationship with available space</li>
<li><strong>Bow control method</strong>: maintain bow at optimal angle to equilibrium with external forces, allowing the boat to track a path toward the target vessel while retaining immediate engine-power escape capability</li>
</ol>
<p>When direct contact is impossible: anchor the rescue boat and use lines, lifebuoys, floating objects, or small rafts to transfer survivors. Two-boat operations with one static and one mobile increase transfer frequency significantly.</p>
<h2>Search and Rescue Plan Components</h2>
<p>A comprehensive SAR plan must address:</p>
<ul>
<li><strong>Goal</strong>: saving lives as efficiently and safely as possible</li>
<li><strong>Priority in resource allocation</strong>: vital searches take priority over other activities</li>
<li><strong>Preparation</strong>: training, minimum equipment and personnel guidelines</li>
<li><strong>Task distribution</strong>: assignment of responsibilities and reserve personnel</li>
<li><strong>First notice</strong>: mobilization plan, telephone calls, authority notification</li>
<li><strong>Initial liability</strong>: responsibility chain and transfer of command</li>
<li><strong>Research</strong>: search methods and special equipment requirements</li>
<li><strong>Strategy and tactics</strong>: who is involved, why, and at what stage</li>
<li><strong>Communications</strong>: internal and external (media, mobile)</li>
<li><strong>Medical issues</strong>: for both victim and rescue team</li>
<li><strong>Suspension and demobilization</strong>: when and who decides</li>
<li><strong>Documentation and review</strong>: reports, detailed results, preventive programs</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image26.jpeg" alt="SAR Plan" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Rescue of Survivors</h2>
<p>BIR crew must be well-equipped with proper clothing for cold water operations. Waterproof enclosures must protect all electrical installations (engine ignition, radio, navigation). The electrical system uses fully insulated wiring without ground wire, powered by batteries charged from an engine-coupled alternator.</p>
<img src="https://pamel.edu.pa/uploads/frb/image27.png" alt="Survivor Rescue" style="max-width:100%;height:auto;margin:10px 0;">
<p>Key recovery techniques:</p>
<ul>
<li>Best pick-up position: <strong>3/4 of the boat\'s length from the bow</strong></li>
<li>Maintain a safety guide from first contact at all times</li>
<li>If a survivor loses control before boarding, hold position rather than risk losing contact</li>
<li>Keep the propulsion system clear of survivors in the water at all times</li>
</ul>
<h2>Casualty Care</h2>
<p>When transferring injured persons who can only be moved on a stretcher:</p>
<ul>
<li>Lower the stretcher horizontally, retained at both ends with guide lines from the rescue boat</li>
<li>Guide the stretcher at the optimal moment relative to wave and external conditions</li>
<li>The stretcher must have sufficient buoyancy to float if it falls into the water</li>
</ul>
<h2>SAR Drill Procedures</h2>
<p>Best procedure for dual-vessel rescue (rescue boat + life raft):</p>
<ul>
<li>Deploy sea anchor on the life raft to minimize drift and facilitate alignment</li>
<li>Approach to approximately 5m with fore elements before final contact</li>
<li>Establish communication with survivors before closing in</li>
<li>Once contact is made, secure with lashing ropes to allow hands-free rescue work</li>
<li>For life rafts: both vessels have soft sides and similar freeboard — risk is lower</li>
<li>Avoid passing over the life raft\'s drogue with the propeller system at all times</li>
<li>Approach maneuver to life raft: maintain bow to external elements for best control</li>
<li>Transfer to rescue boat does not present unreasonable risk; the raft floor deformation over wave crests is usually manageable unless seriously injured persons are present</li>
</ul>',
'text', 4, 270, 1),

(@course_id,
'Engine Operation, Maintenance and Examination',
'<h2>Inboard (Center) Motor</h2>
<p>Center/inboard motor systems use fixed installation with propellers aligned parallel to the keel. Steerage is achieved through a rudder. These are typically diesel-powered motors providing high power output for larger FRB vessels. Astern movement requires reversing the engine or using a reverse gear. The fixed installation provides stability and reduced maintenance compared to outboard alternatives.</p>
<img src="https://pamel.edu.pa/uploads/frb/image28.jpeg" alt="Center Motor" style="max-width:100%;height:auto;margin:10px 0;">
<h2>Outboard Motor</h2>
<p>Outboard motors are the most common propulsion for pneumatic and rigid inflatable rescue boats. Steerage is achieved by varying the direction of thrust directly (the engine turns with the propeller). When two outboard motors are fitted, differential thrust provides full maneuvering capability.</p>
<img src="https://pamel.edu.pa/uploads/frb/image29.jpeg" alt="Outboard Motor" style="max-width:100%;height:auto;margin:10px 0;">
<h3>Mercury 25-hp Outboard Specifications</h3>
<ul>
<li>Power: 25 hp (19 kW)</li>
<li>Maximum RPM at full throttle: 5000-6000</li>
<li>Displacement: 24.4 cubic inches (400cc)</li>
<li>Bore/Stroke: 65mm x 60mm (2.56" x 2.38")</li>
<li>Cooling: water-cooled with optional thermostat</li>
<li>Gear ratio: 2.25:1</li>
<li>Fuel tank: 6.6 US gallons (25 litres) — separate tank</li>
<li>Weight: 112 lbs (51 kg)</li>
<li>Propeller: 3 x 10-3/8 x 13; pitch range 9-1/2 to 14-1/2</li>
</ul>
<h2>Water Jet Propulsion</h2>
<p>Water jet propulsion is based on Newtonian physics: water ejected from the rear of the boat creates a reaction equal and opposite, propelling the boat forward. Water pumps build pressure and release it through a nozzle. The nozzle rotates in different directions for steering; a deflector reverses thrust for astern movement.</p>
<img src="https://pamel.edu.pa/uploads/frb/image30.jpeg" alt="Water Jet Propulsion" style="max-width:100%;height:auto;margin:10px 0;">
<p>Advantages of water jet over propeller systems:</p>
<ul>
<li>Safer for persons in water — no exposed rotating blades</li>
<li>Much lower injury risk (only possible from debris pushed by water current)</li>
<li>Lower maintenance requirements — no propeller alignment or sharpening</li>
<li>More environmentally friendly</li>
<li>Single failure mode: nozzle damage/warping (replacement only)</li>
</ul>
<h2>Engine Maintenance</h2>
<p>Electronic ignition systems provide faster, easier and smoother starting than mechanical breakers by eliminating mechanical failure points. The capacitor ensures rapid current cutoff in the low voltage circuit and protects breaker contacts. Maintenance checklist:</p>
<ul>
<li>Check spark plug condition and electrode gap</li>
<li>Inspect ignition coil and wiring insulation</li>
<li>Verify capacitor/condenser function</li>
<li>Inspect fuel tank, lines and fittings for leaks or deterioration</li>
<li>Ensure outboard motor rotates freely from side to side</li>
<li>Check all electrical wiring — fully insulated, no ground wire exposed</li>
</ul>
<h2>Engine Operation Drills</h2>
<p>Pre-departure checklist:</p>
<ul>
<li>Check fuel tank level — confirm adequate fuel for the operation</li>
<li>Inspect tank and fuel lines for leaks or gas spills in the sump</li>
<li>Clean any oil or water in the sump with rags</li>
<li>Verify free side-to-side rotation of the outboard motor</li>
<li>Read the Coast Guard manual before first trip</li>
</ul>
<img src="https://pamel.edu.pa/uploads/frb/image31.jpeg" alt="Engine Drills" style="max-width:100%;height:auto;margin:10px 0;">
<p>Starting procedure (electric ignition):</p>
<ol>
<li>Engage choke on dashboard</li>
<li>Turn ignition key to "Start"; hold until engine fires, then release to "On"</li>
<li>Gradually press the throttle while the engine warms up</li>
<li>Press primer to the bottom when engine is warm</li>
</ol>
<p>Starting procedure (manual/rope ignition):</p>
<ol>
<li>Pump primer on fuel tank several times to charge fuel lines</li>
<li>Pull the hand lever, then pull the starter handle until engine starts</li>
<li>Gradually press throttle while engine warms up</li>
</ol>
<p>Speed management and boat handling drills:</p>
<ul>
<li>Observe all posted speed limits (do not exceed 5 mph in marked zones)</li>
<li>Pass channel marker buoys at half speed before increasing</li>
<li>Practice achieving the "plan" (cruise): throttle until boat levels and planes — most fuel-efficient mode</li>
<li>Watch for "plow" (bow inclined downward) and "squat" (stern too low) — adjust trim accordingly</li>
<li>Set the trim tab to run with a slightly elevated bow for rough water or waves</li>
<li><strong>Emergency stop drill</strong>: from full speed, reduce to idle then execute a quick left or right turn to avoid an object</li>
<li>Docking: slow to idle well before dock, use smooth low-speed turns; never accelerate to reach a mooring</li>
</ul>
<h2>Examination Preparation</h2>
<p>The course examination covers all five competency areas. Key points to review:</p>
<ul>
<li>SOLAS minimum specifications for FRBs (length, speed, crew capacity)</li>
<li>Material properties of RIB construction (hypalon vs neoprene)</li>
<li>Equipment requirements and safety equipment regulations</li>
<li>Launch and recovery procedures in normal and adverse conditions</li>
<li>Search pattern planning and SAR operation management</li>
<li>Engine types, water jet propulsion principles, and starting procedures</li>
</ul>',
'text', 5, 420, 1);

-- ============================================================
-- QUIZ
-- ============================================================
INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (@course_id, 'Proficiency in Fast Rescue Boats — Final Examination',
'Final examination covering all five competency areas: FRB construction and equipment, launching devices and safety, loading and recovery procedures, boat handling and search patterns, and engine operation.',
70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

-- ============================================================
-- QUESTIONS (20)
-- ============================================================
INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'What does RIB stand for in rescue boat terminology?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'What is the minimum length requirement for a fast rescue boat under SOLAS?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'What is the maximum length for a fast rescue boat under SOLAS?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'What minimum speed must an FRB maintain for at least 4 hours in calm water with 3 qualified crew?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What minimum speed must an FRB achieve with its full complement of persons and equipment?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'What should happen to FRB engines if the boat capsizes?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'What is the maximum fuel or oil loss permitted from the propulsion system if an FRB capsizes?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'Which material offers better resistance to abrasion, ozone, UV and oil in FRB inflatable chamber construction?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'What is the minimum crew capacity required for a fast rescue boat (sitting and lying)?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'What is the minimum length for a rescue throw line carried on a rescue boat?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'How often must inflatable lifejackets be serviced at an authorized service station?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'What physics principle underlies water jet propulsion?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'From which side should a rescue boat approach a stricken vessel?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'What is the recommended position along the rescue boat to pick up survivors?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What are the standard navigation instruments on a fast rescue boat?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'What device stabilizes a rescue boat\'s position during a rescue approach to a life raft?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'What is the function of the capacitor (condenser) in a marine ignition circuit?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'What is the displacement of the Mercury 25-hp outboard motor commonly used on FRBs?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What safety advantage does water jet propulsion have over a conventional propeller system?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'What are the three possible conditions of a stricken ship during a rescue operation?', 'multiple_choice', 1, 20, NOW());

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

-- Q1: What does RIB stand for?
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'Rigid Inflatable Boat', 1, 1),
(@q1, 'Rescue Inflatable Body', 0, 2),
(@q1, 'Rigid Internal Boat', 0, 3),
(@q1, 'Rapid Inflatable Boat', 0, 4);

-- Q2: Minimum length
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, '6 metres', 1, 1),
(@q2, '3.8 metres', 0, 2),
(@q2, '5 metres', 0, 3),
(@q2, '8 metres', 0, 4);

-- Q3: Maximum length
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, '8 metres', 1, 1),
(@q3, '8.5 metres', 0, 2),
(@q3, '10 metres', 0, 3),
(@q3, '12 metres', 0, 4);

-- Q4: Min speed with 3 crew
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, '20 knots', 1, 1),
(@q4, '15 knots', 0, 2),
(@q4, '10 knots', 0, 3),
(@q4, '25 knots', 0, 4);

-- Q5: Min speed with full complement
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, '8 knots', 1, 1),
(@q5, '5 knots', 0, 2),
(@q5, '10 knots', 0, 3),
(@q5, '15 knots', 0, 4);

-- Q6: Engine behavior on capsize
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Stop automatically or via the helmsman\'s emergency release switch', 1, 1),
(@q6, 'Continue running to aid recovery', 0, 2),
(@q6, 'Increase speed to self-right the boat', 0, 3),
(@q6, 'Switch to manual override mode', 0, 4);

-- Q7: Max fuel/oil loss on capsize
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, '250 ml', 1, 1),
(@q7, '500 ml', 0, 2),
(@q7, '1 litre', 0, 3),
(@q7, 'No loss is permitted', 0, 4);

-- Q8: Material for chambers
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Hypalon', 1, 1),
(@q8, 'Neoprene', 0, 2),
(@q8, 'Polyurethane', 0, 3),
(@q8, 'PVC', 0, 4);

-- Q9: Minimum crew capacity
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, '5 persons', 1, 1),
(@q9, '3 persons', 0, 2),
(@q9, '6 persons', 0, 3),
(@q9, '8 persons', 0, 4);

-- Q10: Throw line minimum length
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, '15 metres', 1, 1),
(@q10, '10 metres', 0, 2),
(@q10, '20 metres', 0, 3),
(@q10, '25 metres', 0, 4);

-- Q11: Lifejacket service interval
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Annually at an authorized service station', 1, 1),
(@q11, 'Every 6 months', 0, 2),
(@q11, 'Every 2 years', 0, 3),
(@q11, 'Only when visibly damaged', 0, 4);

-- Q12: Water jet physics
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Newtonian action-reaction (equal and opposite reaction)', 1, 1),
(@q12, 'Archimedes principle of buoyancy', 0, 2),
(@q12, 'Bernoulli\'s principle of pressure differential', 0, 3),
(@q12, 'Pascal\'s law of hydraulics', 0, 4);

-- Q13: Approach side
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'The leeward side', 1, 1),
(@q13, 'The windward side', 0, 2),
(@q13, 'From the bow', 0, 3),
(@q13, 'From the stern', 0, 4);

-- Q14: Survivor pick-up position
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, '3/4 of the length from the bow', 1, 1),
(@q14, 'At the stern', 0, 2),
(@q14, 'At the bow', 0, 3),
(@q14, 'Amidships', 0, 4);

-- Q15: Navigation instruments
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'Magnetic compass, GPS, and echo sounder', 1, 1),
(@q15, 'Radar, ARPA, and AIS', 0, 2),
(@q15, 'Sextant, chronometer, and log', 0, 3),
(@q15, 'ECDIS, autopilot, and VDR', 0, 4);

-- Q16: Stabilization device
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'A sea anchor', 1, 1),
(@q16, 'A drogue deployed from the bow', 0, 2),
(@q16, 'Increasing engine speed', 0, 3),
(@q16, 'Deploying the fire hose as a stream anchor', 0, 4);

-- Q17: Capacitor function
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Prevents current from arcing across breaker contacts when they open', 1, 1),
(@q17, 'Increases voltage to the spark plug', 0, 2),
(@q17, 'Stores fuel for engine starting', 0, 3),
(@q17, 'Regulates the alternator output', 0, 4);

-- Q18: Mercury 25-hp displacement
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, '400cc (24.4 cubic inches)', 1, 1),
(@q18, '500cc (30.5 cubic inches)', 0, 2),
(@q18, '350cc (21.4 cubic inches)', 0, 3),
(@q18, '600cc (36.6 cubic inches)', 0, 4);

-- Q19: Water jet safety advantage
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'No exposed rotating blades — much lower risk of injuring persons in the water', 1, 1),
(@q19, 'It is louder and provides audible warning to persons in the water', 0, 2),
(@q19, 'It creates excessive wake that moves survivors away from the boat', 0, 3),
(@q19, 'It consumes less fuel and therefore extends search range', 0, 4);

-- Q20: Three conditions of stricken ship
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Drifting, under control/government, or anchored', 1, 1),
(@q20, 'Sinking, on fire, or flooding', 0, 2),
(@q20, 'Disabled, capsized, or grounded', 0, 3),
(@q20, 'Moored, anchored, or adrift', 0, 4);

-- Verification
SELECT 'Course' AS entity, @course_id AS id;
SELECT COUNT(*) AS lesson_count FROM lms_lessons WHERE course_id=@course_id;
SELECT COUNT(*) AS quiz_count FROM lms_quizzes WHERE course_id=@course_id;
SELECT COUNT(*) AS question_count FROM lms_questions WHERE quiz_id=@qid;
SELECT COUNT(*) AS option_count FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id=@qid);
