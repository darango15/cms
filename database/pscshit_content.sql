-- Passenger Safety, Cargo Safety and Hull Integrity Training (PSCSHIT) — course_id = 157
-- Source: PAM-MAE-PSCSHIT-21.docx
-- STCW Regulation V/2, Section A-V/2, paragraph 5

UPDATE lms_courses SET
  course_code     = 'PSCSHIT',
  title           = 'Passenger Safety, Cargo Safety and Hull Integrity Training',
  status          = 'published',
  category_id     = 6,
  image           = 'https://pamel.edu.pa/uploads/pscshit/image1.png',
  level           = 'intermediate',
  pass_percentage = 70,
  description     = 'This course provides mandatory minimum standards of competence in Passenger Safety, Cargo Safety and Hull Integrity Training in accordance with Regulation V/2, Section A-V/2, paragraph 5 of the STCW Code. It covers the design and operational limitations of RO-RO passenger ships, loading and embarking procedures, carriage of dangerous goods, cargo securing, stability and trim calculations, opening and securing hull openings, and RO-RO deck atmosphere monitoring. Total duration: 17.5 hours (7.25 lecture + 10.25 practice workshops and exam).'
WHERE id = 157;

-- Clear existing content
DELETE FROM lms_question_options WHERE question_id IN (
  SELECT id FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 157
  )
);
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id = 157);
DELETE FROM lms_quizzes WHERE course_id = 157;
DELETE FROM lms_lessons WHERE course_id = 157;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(157, 'Introduction and Loading & Embarking Procedures',
'<div>
<img src="https://pamel.edu.pa/uploads/pscshit/image1.png" alt="Passenger Safety, Cargo Safety and Hull Integrity Training" style="max-width:100%;margin-bottom:16px;"/>
<h2>Introduction: Evolution of RO-RO Ships</h2>
<p>Roll-on/roll-off (RO-RO) ships are highly successful due to their flexibility, integration with other transport systems, and speed of operation. A <strong>RO-RO passenger ship</strong> is defined as a passenger ship with ro-ro cargo spaces or special category spaces where vehicles are driven on and off — unlike Lo-Lo vessels that use cranes.</p>
<p>Despite commercial success, there have been serious accidents: the capsizing of the <strong>Herald of Free Enterprise</strong> (March 1987) and the loss of the <strong>Estonia</strong> (September 1994). These incidents led to significant amendments to SOLAS, focusing on prevention and improved survivability.</p>

<h3>Key SOLAS Amendments for RO-RO Ships</h3>
<ul>
  <li><strong>April 1988:</strong> Bridge indicators required for all doors that could cause major flooding; water leakage detection; monitoring of ro-ro spaces for vehicle movement, fire, water, and unauthorized access.</li>
  <li><strong>SOLAS 90 Standard (October 1988):</strong> Maximum heel angle of <strong>15 degrees</strong> after flooding before equalization, for ships built after April 29, 1990.</li>
  <li><strong>April 1989:</strong> Watertight doors must be power-operated, capable of closing from the bridge within <strong>60 seconds</strong> for ships built after February 1, 1992.</li>
  <li><strong>May 1991:</strong> Safe stowage and securing of cargoes; Code of Safe Practice for Cargo Stowage and Securing (effective January 1, 1994).</li>
  <li><strong>Stockholm Agreement (1993):</strong> Denmark, Finland, Norway, Sweden, and UK adopted specific stability requirements for ro-ro ships in North West Europe and Baltic Sea.</li>
</ul>

<h2>1. Loading and Embarking Procedures</h2>
<h3>1.1 Design and Operational Limitations of RO-RO Passenger Ships</h3>
<p>Key design features of RO-RO passenger ships include:</p>
<ul>
  <li><strong>Watertightness:</strong> Ships must be subdivided by watertight bulkheads up to the bulkhead deck. Defined by SOLAS regulation II-1/2.17 as preventing water passage under expected head of water.</li>
  <li><strong>Asymmetric Flooding:</strong> Cross-flooding ducts are used to equalize water across the ship and decrease heel angle. Lack of transverse bulkheads on ro-ro ships can lead to rapid escalation of incidents (e.g., cargo shift causing stability problems).</li>
  <li><strong>Draught Marks:</strong> Ships must have clear draught marks. Subdivision load lines (P1, P2, etc.) must be assigned and marked.</li>
  <li><strong>Deck Designs:</strong> Hinged Deck Design (flexible, withstands transverse racking deformations) or Rigid Conventional Deck Design (vertical side webs, rigid against transverse forces).</li>
  <li><strong>Operational Limitations:</strong> SOLAS regulation V/30 requires a list of operational limitations (operating area restrictions, weather/sea state limits, permissible loads, trim, speed) to be kept on board and updated.</li>
</ul>

<h3>1.2 Loading and Discharging Vehicles, Rail Cars and Other Cargo Transport Units</h3>
<h4>General Arrangements — Loading</h4>
<ul>
  <li>Follow the CSS Code. Cargo arranged according to stowage plan; secured/lashed per Cargo Securing Manual.</li>
  <li>Vehicles loaded via ramps onto different decks (lower hold, main, upper, platform/mezzanine). <strong>Heavy cargo on lower decks</strong> aids stability.</li>
  <li>Heeling pumps (port-starboard) and ballast pumps (fore-aft) compensate for weight transfer during loading.</li>
</ul>
<h4>Rail Cars and Special Transport Units</h4>
<ul>
  <li>Master needs cargo info: mass, dimensions, centre of gravity (CG), bedding/lifting/securing points.</li>
  <li>Gross and axle weights checked against ship structural limits.</li>
  <li>Special port arrangements: nesting fenders, specialized moorings. Crew in "safe zones" wearing high-visibility PPE.</li>
  <li>Speed limits apply for rail cars on rail-enabled decks.</li>
</ul>

<h3>1.2.1.2 Closed-Loop Communication Style</h3>
<p>Required during all loading and discharging operations:</p>
<ol>
  <li>Sender provides message.</li>
  <li>Receiver <strong>repeats the message</strong> back to the sender.</li>
  <li>Sender confirms: if correct, says "Confirmed." If incorrect, says "Negative" and repeats.</li>
  <li>If no reply received, sender repeats until the loop is closed.</li>
</ol>
<p>This is essential for safe operations at the ship-shore interface (ramp to link span). Extra personnel (banksmen) with closed-loop communication are required for complex maneuvers such as reversing trailers.</p>

<h3>1.2.2 Lowering and Hoisting Ramps</h3>
<p>Most ramps are hydraulically operated. General procedure:</p>
<ol>
  <li>Establish closed-loop communication with shore.</li>
  <li>Confirm area is clear of personnel and obstructions.</li>
  <li>Secure keys; switch on hydraulics.</li>
  <li>Remove manual locking pins; operate securing locks.</li>
  <li>Lower or raise the ramp.</li>
  <li>Put ramp into "float" position if applicable; engage manual locking pins.</li>
  <li>Switch off hydraulics; secure keys.</li>
</ol>
<p>A typical 5×5 m door takes approximately <strong>1 minute</strong> to open or close. A pilot door takes approximately 30 seconds.</p>

<h3>1.2.3 Setting Up and Stowing Retractable Vehicle Decks</h3>
<ul>
  <li>Part of the Safety Management System (SMS) for safe operation.</li>
  <li>Trained operators only. Clear area beneath ramp before operation.</li>
  <li>Operator must have clear view, or a nominated person with a clear signal.</li>
  <li>Well-lit ramps free of slipping hazards; no loose gear.</li>
  <li>Check no personnel are on or under the ramp during operation.</li>
  <li>Control boxes locked and power off after use.</li>
  <li><strong>Important:</strong> Ship command must consider that GM of retractable decks differs from car decks when preparing stability calculations.</li>
</ul>

<h3>1.2.4 Embarking and Disembarking Passengers</h3>
<h4>Special Attention to Disabled Persons and Persons Needing Assistance (MSC.1/Circ.735)</h4>
<ul>
  <li>Terminal access must be barrier-free.</li>
  <li>Ship equipped for easy/safe embarkation of wheelchair users (ramps, elevators, lifts). Maximum ramp slope: <strong>1:20</strong>. At least one accessible access point.</li>
  <li>Disabled drivers/passengers marked ashore and directed to separate marshalling lanes. Gate attendant communicates with marshalling area and ship.</li>
  <li>At least one elevator from car deck to public spaces, cabins, and toilets.</li>
  <li>Door openings to public spaces: minimum <strong>80 cm</strong> wide for wheelchairs.</li>
  <li>Disabled/elderly passengers assigned cabins near embarkation deck.</li>
  <li>Crew trained and instructed on assisting elderly/disabled persons in emergencies.</li>
</ul>
<h4>Emergency Disembarkation</h4>
<ul>
  <li><strong>General Emergency Alarm:</strong> 7 short + 1 long blast — crew to emergency stations, passengers to muster/lifeboat stations.</li>
  <li><strong>Principle:</strong> "From fastest to slowest" to speed movement and avoid blocking evacuation routes.</li>
  <li><strong>Abandon Ship:</strong> Designated survival craft crew supervises distribution, embarkation, and seating. Crew embarks only after passengers. Survival crafts remain loaded until ordered to lower by Central Command (Bridge).</li>
  <li>Life-saving appliances: lifeboats, rescue boats, life rafts (throw-overboard, davit-launched, free-fall, and Marine Evacuation Systems).</li>
</ul>
</div>',
'text', 1, 120, 1),

(157, 'Carriage of Dangerous Goods',
'<div>
<h2>2. Carriage of Dangerous Goods</h2>
<h3>2.1 Special Safeguards, Procedures and Requirements</h3>
<p>SOLAS regulation II-2/19 provides additional safety measures for dangerous goods carried on RO-RO passenger ships. Functional requirements include: fire protection systems, separation from ignition sources, and appropriate PPE for crew handling dangerous goods.</p>

<h3>Certification</h3>
<p>A compliance document from the Administration is required for most classes of dangerous goods. However, certification is <strong>NOT required</strong> for:</p>
<ul>
  <li>Class 6.2 (Infectious Substances)</li>
  <li>Class 7 (Radioactive Material) in limited quantities</li>
  <li>Limited and excepted quantities</li>
</ul>

<h3>Stowage Provisions</h3>
<ul>
  <li>Loading and unloading under direct supervision.</li>
  <li>Passenger and unauthorized access to ro-ro spaces <strong>restricted during voyage</strong>.</li>
  <li>Doors to machinery spaces and accommodation must be securely closed.</li>
  <li>Dangerous goods designated for deck carriage must <strong>not</strong> be placed in closed ro-ro spaces.</li>
  <li>Ventilation fans operated daily if not running continuously.</li>
  <li>Ro-ro space must be proved <strong>gas-free</strong> before discharge.</li>
  <li>Master ensures regular inspections throughout the voyage.</li>
</ul>

<h3>Segregation (IMDG Code, Chapter 7.5)</h3>
<p>Segregation provisions for cargo transport units on RO-RO ships are detailed in <strong>MSC.1/Circ.1440</strong>. For non-containerized cargo, the general stowage and segregation table applies.</p>

<h3>Ventilation of Cargo Spaces</h3>
<p>Cargo deck ventilation is designed for longitudinal airflow:</p>
<ul>
  <li><strong>Direction:</strong> Forward supply, aft exhaust during sailing and loading/unloading.</li>
  <li><strong>During loading/discharging:</strong> Minimum <strong>20 air changes per hour</strong>.</li>
  <li><strong>At sea during voyage:</strong> Minimum <strong>10 air changes per hour</strong>.</li>
  <li>Fans are frequency-controlled axial fans with <strong>spark-free construction</strong> (explosion-proof).</li>
</ul>

<h3>Safety Measures Summary</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Requirement</th><th>Detail</th></tr>
  <tr><td>Supervision</td><td>Loading/unloading under supervision at all times</td></tr>
  <tr><td>Access control</td><td>Passengers restricted from ro-ro spaces during voyage</td></tr>
  <tr><td>Ventilation loading</td><td>Minimum 20 air changes/hour</td></tr>
  <tr><td>Ventilation at sea</td><td>Minimum 10 air changes/hour</td></tr>
  <tr><td>Gas-free check</td><td>Ro-ro space proved gas-free before discharge</td></tr>
  <tr><td>Regular inspection</td><td>Master ensures inspections throughout voyage</td></tr>
</table>
</div>',
'text', 2, 90, 1),

(157, 'Securing Cargoes',
'<div>
<h2>3. Securing Cargoes</h2>
<h3>3.1 Code of Safe Practice for Cargo Stowage and Securing (CSS Code)</h3>
<p>Ships carrying road vehicles, roll-trailers, and automobiles require securing points spaced closely (resolution <strong>A.714(17)</strong>). Road vehicles require arrangements for safe stowage and securing. Special consideration applies for roll-trailers with systemized cargo (variable stow height, compactness, high centre of gravity).</p>

<h3>Stowage and Securing of Vehicles</h3>
<ul>
  <li>Vehicles stowed and secured per A.714(17) sections 6 and 7.</li>
  <li><strong>Not less than 2 and not more than 6 securing points per side</strong> of the vehicle.</li>
  <li>Drivers ensure vehicles are parked safely: handbrakes set, engine power off, gear engaged.</li>
  <li>Semi-trailers uncoupled from tractor units and supported by trestle.</li>
  <li>Master decides the number of lashings required based on ship conditions and weather forecast.</li>
  <li>Special consideration for tank vehicles and portable tanks due to high CG and free surface effects.</li>
</ul>

<h3>Acceptance of Road Vehicles</h3>
<ul>
  <li>Master must be satisfied that the vehicle is suitable for carriage and has adequate specified securing points.</li>
  <li>Exceptional acceptance is possible after considering vehicle condition and the nature of the voyage.</li>
  <li>Lashings must <strong>not be removed</strong> until the ship is safely in port and the master grants permission.</li>
  <li>Lashings are removed clear of running lanes; chocks removed before vehicle discharge.</li>
</ul>

<h3>3.2 Cargo-Securing Equipment and Materials</h3>
<h4>Deck Securing Points</h4>
<ul>
  <li>Longitudinal spacing: less than <strong>2.5 m</strong>.</li>
  <li>Transverse spacing: <strong>2.8–3.0 m</strong>.</li>
  <li>Minimum strength of each deck securing point: <strong>20 kN</strong>.</li>
  <li>Each vehicle lashing point: <strong>120 kN</strong> minimum strength.</li>
</ul>

<h4>Lashings and Equipment</h4>
<ul>
  <li>Lashing types: chains, lever tensioners, bottlescrews (turnbuckles).</li>
  <li>Integrity of securing arrangements must be checked and maintained throughout the voyage.</li>
</ul>

<h4>Cargo Securing Manual</h4>
<p>Every ship must carry an <strong>approved Cargo Securing Manual</strong> (resolution A.489(XI)) containing:</p>
<ul>
  <li>Ship dimensions and hydrostatic properties.</li>
  <li>Expected weather and sea conditions on the planned route.</li>
  <li>Approved cargo composition and stowage arrangements.</li>
  <li>Details of approved securing equipment and maximum securing loads.</li>
</ul>

<h4>Rail Cars and Train Ferries</h4>
<ul>
  <li>Gross and axle weights checked against ship structural limits.</li>
  <li>Rail cars secured with a buffer at the forward end of each rail.</li>
  <li>Brakes on; stowed in pre-determined position.</li>
  <li>Lashings must be at less than 45 degrees from perpendicular; extra lashings required if not achievable.</li>
</ul>

<h3>Important Safety Note</h3>
<p><strong>Unsecured cargo can break loose at sea, causing list, cargo spillage, damage to hull structures, and potential sinking.</strong> Crew members cannot inspect the contents of sealed cargo units — the ship\'s crew relies on the land operator\'s diligence and the accuracy of declared cargo information.</p>

<h3>Cargo Illustrative Standards</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Unit Type</th><th>Standard Length</th><th>Standard Width</th></tr>
  <tr><td>Standard road vehicle</td><td>12 m</td><td>2.5 m</td></tr>
  <tr><td>Road train unit</td><td>18.5 m</td><td>3.0 m</td></tr>
</table>
<p>If deck axle loading is exceeded: stow on a suitable deck, seek advice from the ship owner/administration, or refuse carriage. Liaise with the shore freight marshal for link span loading limits — damage or overloading of link span or ramp compromises the safety of the operation.</p>
</div>',
'text', 3, 120, 1),

(157, 'Stability, Trim and Stress Calculations',
'<div>
<h2>4. Stability, Trim and Stress Calculations</h2>
<h3>4.1 Principles of Stability</h3>
<p>A <strong>stable ship</strong> returns to its upright state when an external force is removed. Equilibrium occurs when the ship\'s weight (acting through the Centre of Gravity, G) equals the water upthrust (acting through the Centre of Buoyancy, B) and both forces are vertically aligned.</p>
<p>When the ship is inclined, the Centre of Buoyancy (B) shifts, creating a <strong>righting lever (GZ)</strong> that returns the ship to its original upright position.</p>

<h3>Intact Stability Criteria for Cargo Ships</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Parameter</th><th>Minimum Requirement</th></tr>
  <tr><td>Initial GM (metacentric height)</td><td>≥ 0.15 m</td></tr>
  <tr><td>Righting lever (GZ) at 30° heel</td><td>≥ 0.20 m</td></tr>
  <tr><td>Angle of maximum GZ</td><td>&gt; 30° (preferably, not &lt; 25°)</td></tr>
  <tr><td>Area under GZ curve up to 30°</td><td>≥ 0.055 m·radian</td></tr>
  <tr><td>Area under GZ curve up to 40°</td><td>≥ 0.090 m·radian</td></tr>
  <tr><td>Area under GZ curve between 30°–40°</td><td>≥ 0.030 m·radian</td></tr>
</table>

<h3>Stability Booklet</h3>
<p>An approved stability booklet provides rapid guidance on ship stability. It includes:</p>
<ul>
  <li>GM value (fluid) — must always be higher than the minimum allowable GM curve.</li>
  <li>Pre-determined load conditions with stability and trim results.</li>
  <li>Intact and damage stability calculations for different draughts and trims.</li>
  <li>Instructions to check compliance before departure if ballasting/deballasting.</li>
</ul>

<h3>Forces That Contribute to Stress</h3>
<h4>Internal Forces</h4>
<ul>
  <li>Weight and distribution of cargo (transport units, cars, coaches), ballast, fuel, fresh water.</li>
  <li>Uneven distribution causes <strong>shear forces</strong> and <strong>bending moments</strong>.</li>
  <li><strong>Hogging:</strong> Ship bends upward at midship (fore and aft loaded, midships empty).</li>
  <li><strong>Sagging:</strong> Ship bends downward at midship (midships heavily loaded, ends light).</li>
  <li>Internal weight shift causes <strong>list</strong>.</li>
</ul>
<h4>External Forces</h4>
<ul>
  <li>Wind, waves, and swell cause roll, pitch, and heave, contributing to hull stress.</li>
  <li>Strong beam winds cause <strong>heel</strong>.</li>
  <li>Electronic loading/stability computer calculates shear force and bending moment against acceptable limits.</li>
</ul>

<h3>Free Surface Effect</h3>
<p>Full tanks act as a solid mass — no change in G or GM. <strong>Partially filled ("slack") tanks</strong> allow liquid to move with heel, significantly reducing GM and stability. Key rules:</p>
<ul>
  <li>Keep slack tanks to a minimum.</li>
  <li>Full or empty tanks have no free surface effect.</li>
  <li>When filling tanks to correct a list: if the list is caused by "loll," fill the tank on the <strong>low side first</strong>.</li>
  <li>Multiple slack tanks simultaneously increase the free surface effect — reduce stability more than expected.</li>
</ul>

<h3>Angle of Loll</h3>
<p>When a ship has negative GM (unstable when upright), it takes an angle of heel (typically 9–11 degrees) where KM equals KG (GM = 0), entering <strong>neutral equilibrium</strong>. This is the angle of loll. The ship is dangerously unstable and requires immediate corrective action (lowering G by reducing deck load or adding ballast).</p>

<h3>4.2 Stability and Trim for Different Loading Conditions</h3>
<p>Before departure, the master must:</p>
<ol>
  <li>Calculate stability using the approved stability book or electronic loading computer.</li>
  <li>Verify all results meet stability criteria.</li>
  <li>Have the printout of the sailing condition reviewed and signed by master or chief mate.</li>
  <li>Confirm the flooding detection system for watertight spaces below bulkhead deck is operational.</li>
</ol>

<h3>4.3 Load Factors for Decks</h3>
<ul>
  <li>Check normal loading conditions (max weight per deck) from stability book.</li>
  <li>Heavy trucks on lower decks; lighter cars on upper decks.</li>
  <li>Avoid excessive trim with part loads.</li>
  <li>Planned loading must meet design criteria — e.g., no cargo on upper deck if lower decks are empty.</li>
  <li>Consult ship\'s plans for maximum axle loading per deck. If exceeded: stow on suitable deck or refuse carriage.</li>
</ul>

<h3>4.4 Impact of Ballast and Fuel Transfers</h3>
<ul>
  <li>Pre-determined load conditions in the stability book consider ballast and fuel distribution.</li>
  <li>Transferring large amounts fore or aft affects <strong>trim</strong>.</li>
  <li>Transverse transfer of ballast corrects <strong>list</strong>.</li>
  <li>Partially full (slack) ballast tanks introduce free surface effect — calculate carefully.</li>
  <li>If transfers have adverse effect on stability, consider alternatives before proceeding.</li>
</ul>
<p><strong>Example:</strong> A ballast transfer may increase solid KG, reduce Free Surface Effect (FSE), reduce fluid KG, increase GM by 2 cm, trim 2 cm by the head, and introduce a 3-degree starboard list — all with no impact on shear force or bending moment. Each case must be calculated specifically.</p>
</div>',
'text', 4, 120, 1),

(157, 'Opening, Closing and Securing Hull Openings',
'<div>
<h2>5. Opening, Closing and Securing Hull Openings</h2>
<h3>5.1 Types of RO-RO Ramps and Doors</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Type</th><th>Description</th></tr>
  <tr><td><strong>Stern Ramp</strong></td><td>Functions as watertight door with rubber seal. Operated hydraulically. Length depends on tidal variations and quay type.</td></tr>
  <tr><td><strong>Angled Ramp</strong></td><td>Longer and heavier than a straight ramp; allows loading from an angle.</td></tr>
  <tr><td><strong>Slewing Ramp</strong></td><td>Can load from both sides and stern-to — maximum flexibility.</td></tr>
  <tr><td><strong>Jumbo Ramp</strong></td><td>Large, wide, long ramp for heavy or oversized cargo.</td></tr>
  <tr><td><strong>Bow Ramp</strong></td><td>Fitted at bow; less common due to stability concerns. Functions as weathertight door when stowed, sealing the collision bulkhead aperture. Two watertight closures required.</td></tr>
  <tr><td><strong>Side Ramp Door</strong></td><td>Increases loading/discharging capacity, especially with multiple deck levels.</td></tr>
  <tr><td><strong>Quarter Ramp</strong></td><td>Divided into three sections; arranged at 30–40 degree angle to centreline for conventional quay berthing.</td></tr>
  <tr><td><strong>Internal Ramp</strong></td><td>Used internally for vehicle arrangement between decks. Slope 6–8 degrees; width 7–12 m; anti-skid surfaces.</td></tr>
</table>

<h3>Ramp Design Considerations</h3>
<ul>
  <li><strong>Length:</strong> Depends on knuckle angles, maximum gradient, threshold deck height, quay edge height, and vehicle types (clearance, ground clearance, wheelbase). Shallower gradient needed for higher vehicle speeds.</li>
  <li><strong>Width:</strong> Must accommodate internal cargo flow, driving lanes, and pedestrian gangways.</li>
  <li><strong>Steel structure dimensioning:</strong> Based on vehicle types, axle loading, wheel print area, number/distance of axles, and total load carrying capacity.</li>
  <li><strong>Operating system:</strong> Hydraulic power pack. Typical operation time: <strong>4–6 minutes</strong> for average door/ramp. Automated systems (one-button sequence) are faster and more cost-effective for short runs.</li>
</ul>

<h3>5.1 Procedures for Opening, Closing and Securing</h3>
<h4>Closure of Cargo Loading Doors</h4>
<p>Shell doors, loading doors, bow visors, collision bulkhead doors, and weathertight ramps must:</p>
<ul>
  <li>Be <strong>closed and locked before the voyage begins</strong>.</li>
  <li>Remain closed until the <strong>next berth (port)</strong>.</li>
  <li>Inner bow door kept closed at all times. Master may authorize opening only at safe anchorage for operations or embarking.</li>
  <li>Master ensures supervision, reporting, and proper logbook entries for all openings/closings.</li>
</ul>

<h3>5.2 Survey on Proper Sealing</h3>
<h4>Bridge Indicators</h4>
<ul>
  <li>Required for <strong>all shell and loading doors</strong> that could cause major flooding.</li>
  <li>Indicator system is <strong>fail-safe</strong>: shows warning if not fully closed and secured.</li>
  <li>Powered by an <strong>independent power supply</strong>.</li>
</ul>

<h4>Television Surveillance and Water Leakage Detection</h4>
<ul>
  <li>Bow, stern, and cargo doors monitored by CCTV or water leakage detection systems to detect any leakage.</li>
  <li>Special category and ro-ro spaces are patrolled or monitored continuously for vehicle movement and unauthorized access.</li>
</ul>

<h4>Checking Seal Condition</h4>
<ul>
  <li>Visual inspection of rubber packing and sealing bar/steel edge for damage.</li>
  <li>Compression quality checked by <strong>chalk test</strong> or <strong>water hose test</strong>.</li>
</ul>

<h4>Testing Limit Switch Functionality</h4>
<p>Performed by two crew members:</p>
<ol>
  <li>One crew member operates the door/ramp mechanism.</li>
  <li>Second crew member monitors the corresponding panel light indicator in the wheelhouse.</li>
  <li>Confirm the indicator correctly shows open/closed status at all positions.</li>
</ol>
</div>',
'text', 5, 90, 1),

(157, 'RO-RO Deck Atmosphere and Monitoring',
'<div>
<h2>6. RO-RO Deck Atmosphere</h2>
<h3>6.1 Hazardous Gases in RO-RO Spaces</h3>
<p>Exhaust gases from vehicles are a significant hazard in enclosed ro-ro cargo spaces:</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Gas</th><th>Source</th><th>Hazard</th></tr>
  <tr><td><strong>Carbon Monoxide (CO)</strong></td><td>Petrol engines</td><td>Inhibits oxygen transport in the blood. Causes headaches, dizziness, nausea, and can be fatal.</td></tr>
  <tr><td><strong>Nitrogen Oxides (NOx)</strong></td><td>Diesel engines</td><td>NO oxidizes to NO2, affecting the respiratory system. Long-term exposure damages lungs.</td></tr>
</table>
<p><strong>Control measures:</strong> Reduce exhaust emissions, ensure adequate ventilation, prevent prolonged crew exposure to cargo spaces during and after vehicle operations.</p>

<h3>6.1.1 Ventilation Systems</h3>
<p>Two types of mechanical ventilation used on RO-RO ships:</p>
<ul>
  <li><strong>Exhaust Air Ventilation:</strong> Fans remove air from cargo spaces; outdoor air enters through openings. Creates sub-atmospheric pressure, preventing pollution from spreading to adjacent spaces.</li>
  <li><strong>Supply Air Ventilation:</strong> Fans deliver outdoor air into cargo spaces; air exhausts through openings. Creates slight pressurization. Risk: pollutants may mix with supply air and contaminate other decks if used exclusively.</li>
</ul>
<p>In practice, most ships <strong>combine both principles</strong> using reversible fans. Airflow is concentrated where emissions and personnel are highest.</p>

<h3>Airflow Measurement</h3>
<p>Anemometers measure airflow velocity in cargo spaces:</p>
<ul>
  <li><strong>Direct-reading electronic anemometer:</strong> Quick response, ideal for unstable airflow conditions.</li>
  <li><strong>Mechanical rotating vane anemometer:</strong> Compact and easy to read; requires correction factors.</li>
</ul>
<p>Sheltered or unventilated zones (behind objects, lower deck areas) must be identified on deck plans and painted/signed on bulkheads.</p>

<h3>6.1.2 Portable Atmospheric Testing Instruments</h3>
<p>SOLAS XI-1/7 requires portable atmosphere testing instruments for enclosed spaces, including cargo spaces. Instruments must test for:</p>
<ul>
  <li>Oxygen (O2) level</li>
  <li>Flammable gases and vapors (% LEL)</li>
  <li>Hydrogen Sulfide (H2S)</li>
  <li>Carbon Monoxide (CO)</li>
</ul>
<p>Portable detectors are small, handheld instruments for confined space testing, leak tracing, and early warning. They measure concentration in % volume, % LEL, ppm, or mg/m³. An integral alarm (audible and visual) is mandatory — the operator must be able to see and hear the alarm signal. A fault condition alarm is equally vital.</p>

<h3>6.2 Ventilation Procedures</h3>
<h4>During Loading and Discharging</h4>
<ul>
  <li>Longitudinal ventilation: <strong>forward supply air, aft exhaust</strong>.</li>
  <li>Minimum <strong>20 air changes per hour</strong>.</li>
  <li>Direction can be reversed if loading is via the bow (supply from aft, exhaust forward).</li>
</ul>
<h4>During the Voyage at Sea</h4>
<ul>
  <li>Longitudinal ventilation continues.</li>
  <li>Minimum <strong>10 air changes per hour</strong>.</li>
</ul>
<h4>In Emergencies</h4>
<ul>
  <li>Ventilation is <strong>automatically switched off</strong> when the emergency alarm is activated (e.g., fire alarm).</li>
  <li>Master may activate emergency procedures or authorize restart of ventilation after assessment.</li>
</ul>

<h3>Airflow Color Coding (ISO 5571)</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Color</th><th>Meaning</th></tr>
  <tr><td>Yellow</td><td>Supply air — natural ventilation</td></tr>
  <tr><td>Brown</td><td>Exhaust air — natural ventilation</td></tr>
  <tr><td>Green</td><td>Supply air — mechanical ventilation</td></tr>
  <tr><td>Grey</td><td>Exhaust air — mechanical ventilation</td></tr>
</table>

<h3>Evaluation and Certification</h3>
<p>Upon successful completion of the course examination, trainees receive a <strong>course completion certificate</strong> from the training center. The purpose of evaluation is to confirm that the learner has acquired the required skills and knowledge, identify strengths and weaknesses, and assess the effectiveness of the instructional strategy and curriculum.</p>
</div>',
'text', 6, 90, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (157,
  'Passenger Safety, Cargo Safety and Hull Integrity Training — Final Assessment',
  'Comprehensive evaluation covering RO-RO ship design and operations, loading and embarking procedures, carriage of dangerous goods, cargo securing, stability calculations, hull opening procedures, and atmospheric monitoring. Minimum passing score: 70%.',
  70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'How is a RO-RO passenger ship defined under SOLAS?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'Which maritime accidents most directly led to major SOLAS amendments for RO-RO passenger ship safety?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'What is the minimum number of air changes per hour required in RO-RO cargo spaces during loading and discharging operations?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'What does "closed-loop communication" require during RO-RO loading and discharging operations?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What is the "free surface effect" and how does it impact ship stability?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'What is the maximum permitted heel angle after flooding before equalization for RO-RO passenger ships built after April 29, 1990, per the "SOLAS 90" standard?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'Which STCW Regulation and Section governs the Proficiency in Passenger Safety, Cargo Safety and Hull Integrity Training?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'According to A.714(17), what is the minimum number of securing points required per side when securing road vehicles on RO-RO ships?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'Which hazardous gas produced by petrol engines inhibits oxygen transport in the blood and can be fatal in enclosed RO-RO cargo spaces?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'What is the function of "cross-flooding ducts" on RO-RO ships?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'What must a ship\'s approved Cargo Securing Manual contain?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'What is the minimum initial GM (metacentric height) required for intact stability of cargo ships?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'During a RO-RO voyage at sea, what is the minimum required ventilation rate for RO-RO cargo spaces?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'What is the "angle of loll"?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'According to SOLAS, bow, stern, and cargo loading doors must be closed and locked before the voyage begins and remain closed until:', 'multiple_choice', 1, 15, NOW()),
(@qid, 'What is the purpose of bridge indicators on RO-RO ships?', 'multiple_choice', 1, 16, NOW()),
(@qid, 'What is the minimum strength required for deck securing points on RO-RO ships?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'Which class of dangerous goods does NOT require a compliance document from the Administration for carriage on RO-RO passenger ships?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What is the standard longitudinal direction of ventilation airflow in a RO-RO cargo space?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'What general emergency alarm signal requires crew to go to emergency stations and passengers to muster stations on a RO-RO passenger ship?', 'multiple_choice', 1, 20, NOW());

SET @q1  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 1);
SET @q2  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 2);
SET @q3  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 3);
SET @q4  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 4);
SET @q5  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 5);
SET @q6  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 6);
SET @q7  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 7);
SET @q8  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 8);
SET @q9  = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 9);
SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 10);
SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 11);
SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 12);
SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 13);
SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 14);
SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 15);
SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 16);
SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 17);
SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 18);
SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 19);
SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 20);

INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'A ship that carries wheeled cargo using cranes for loading and unloading', 0, 1),
(@q1, 'A passenger ship with ro-ro cargo spaces or special category spaces where vehicles are driven on and off', 1, 2),
(@q1, 'A ship designed exclusively for passenger transport without cargo spaces', 0, 3),
(@q1, 'A vessel that carries vehicles only in sealed containers stacked on deck', 0, 4),

(@q2, 'The sinking of the Titanic (1912) and the loss of the Lusitania (1915)', 0, 1),
(@q2, 'The capsizing of the Herald of Free Enterprise (1987) and the loss of the Estonia (1994)', 1, 2),
(@q2, 'The grounding of the Costa Concordia (2012) and the Scandinavian Star fire (1990)', 0, 3),
(@q2, 'The collision of the Andrea Doria (1956) and the capsizing of the Sewol (2014)', 0, 4),

(@q3, '10 air changes per hour', 0, 1),
(@q3, '15 air changes per hour', 0, 2),
(@q3, '20 air changes per hour', 1, 3),
(@q3, '30 air changes per hour', 0, 4),

(@q4, 'All communication is done in writing to avoid verbal misunderstandings', 0, 1),
(@q4, 'The sender gives a message, the receiver repeats it back, and the sender confirms correctness', 1, 2),
(@q4, 'All communications are channeled through a single radio operator on the bridge only', 0, 3),
(@q4, 'A dedicated PA system broadcasts all operational announcements to the crew', 0, 4),

(@q5, 'It increases ship stability by redistributing weight from upper to lower decks', 0, 1),
(@q5, 'It refers to the wave action on the hull causing external stress and heel', 0, 2),
(@q5, 'Liquid movement in partially filled (slack) tanks significantly reduces GM and ship stability', 1, 3),
(@q5, 'It describes the effect of wind pressure on exposed deck surfaces', 0, 4),

(@q6, '5 degrees', 0, 1),
(@q6, '10 degrees', 0, 2),
(@q6, '15 degrees', 1, 3),
(@q6, '20 degrees', 0, 4),

(@q7, 'Regulation II/1, Section A-II/1', 0, 1),
(@q7, 'Regulation VI/1, Section A-VI/1', 0, 2),
(@q7, 'Regulation V/2, Section A-V/2', 1, 3),
(@q7, 'Regulation IV/2, Section A-IV/2', 0, 4),

(@q8, 'At least 1 securing point per side', 0, 1),
(@q8, 'Not less than 2 securing points per side', 1, 2),
(@q8, 'Not less than 4 securing points per side', 0, 3),
(@q8, 'At least 8 securing points per side', 0, 4),

(@q9, 'Nitrogen dioxide (NO2)', 0, 1),
(@q9, 'Carbon monoxide (CO)', 1, 2),
(@q9, 'Hydrogen sulfide (H2S)', 0, 3),
(@q9, 'Carbon dioxide (CO2)', 0, 4),

(@q10, 'Supplying fresh water to various decks during the voyage', 0, 1),
(@q10, 'Channeling exhaust gases from the cargo deck to the ventilation system', 0, 2),
(@q10, 'Equalizing water across the ship to decrease heel angle in flooding situations', 1, 3),
(@q10, 'Transferring fuel between port and starboard tanks', 0, 4),

(@q11, 'Only the maximum weight limits for each vehicle deck', 0, 1),
(@q11, 'A list of all cargo carried on the current voyage', 0, 2),
(@q11, 'Ship dimensions, hydrostatic properties, expected sea conditions, and approved cargo composition requirements', 1, 3),
(@q11, 'Names of all crew members authorized to oversee cargo securing operations', 0, 4),

(@q12, 'GM ≥ 0.10 m', 0, 1),
(@q12, 'GM ≥ 0.15 m', 1, 2),
(@q12, 'GM ≥ 0.20 m', 0, 3),
(@q12, 'GM ≥ 0.25 m', 0, 4),

(@q13, '5 air changes per hour', 0, 1),
(@q13, '10 air changes per hour', 1, 2),
(@q13, '15 air changes per hour', 0, 3),
(@q13, '20 air changes per hour', 0, 4),

(@q14, 'The maximum permissible heel angle before cargo securing must be re-inspected', 0, 1),
(@q14, 'The angle at which an unstable ship (negative GM) settles to find neutral equilibrium', 1, 2),
(@q14, 'The standard trim angle used in all stability calculations for RO-RO ships', 0, 3),
(@q14, 'A design heel angle built into the ship for drainage and water run-off', 0, 4),

(@q15, 'The ship has reached open sea beyond port limits', 0, 1),
(@q15, 'The captain authorizes opening for ventilation during the voyage', 0, 2),
(@q15, 'The next berth (port)', 1, 3),
(@q15, 'The watch officer has completed the security inspection round', 0, 4),

(@q16, 'To display heading and speed data on the bridge navigation console', 0, 1),
(@q16, 'To show water depth readings near hull openings', 0, 2),
(@q16, 'To indicate the open or closed/secured status of shell doors and cargo loading doors that could cause flooding', 1, 3),
(@q16, 'To monitor cargo weight distribution across all vehicle decks', 0, 4),

(@q17, '10 kN minimum strength', 0, 1),
(@q17, '20 kN minimum strength', 1, 2),
(@q17, '50 kN minimum strength', 0, 3),
(@q17, '120 kN minimum strength', 0, 4),

(@q18, 'Class 1 (Explosives)', 0, 1),
(@q18, 'Class 3 (Flammable Liquids)', 0, 2),
(@q18, 'Class 6.2 (Infectious Substances)', 1, 3),
(@q18, 'Class 8 (Corrosive Substances)', 0, 4),

(@q19, 'Aft supply, forward exhaust', 0, 1),
(@q19, 'Forward supply, aft exhaust', 1, 2),
(@q19, 'Downward supply from top vents, upward exhaust at deck level', 0, 3),
(@q19, 'Lateral cross-ventilation from port to starboard', 0, 4),

(@q20, '3 short blasts repeated continuously', 0, 1),
(@q20, '6 short blasts followed by 1 long blast', 0, 2),
(@q20, '7 short blasts followed by 1 long blast', 1, 3),
(@q20, '1 continuous blast lasting 10 seconds', 0, 4);

-- Verify
SELECT 'Lessons' AS item, COUNT(*) AS total FROM lms_lessons WHERE course_id = 157
UNION ALL
SELECT 'Quiz', COUNT(*) FROM lms_quizzes WHERE course_id = 157
UNION ALL
SELECT 'Questions', COUNT(*) FROM lms_questions WHERE quiz_id = @qid
UNION ALL
SELECT 'Options', COUNT(*) FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id = @qid);
