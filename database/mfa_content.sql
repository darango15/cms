-- Medical First Aid (MFA) - course_id=170
-- STCW Regulation VI/4, Section A-VI/4, paragraphs 1-3, Table VI/4-1
-- 6 lessons, 1 quiz, 20 questions, 80 options

UPDATE lms_courses SET
  course_code = 'MFA',
  title = 'Medical First Aid',
  status = 'published',
  category_id = 6,
  image = 'https://pamel.edu.pa/uploads/mfa/image1.jpeg',
  level = 'advanced',
  pass_percentage = 70,
  description = 'Medical First Aid (MFA) trains seafarers to provide immediate medical care in emergencies aboard vessels. Aligned with STCW Regulation VI/4, Sections A-VI/4 paragraphs 1-3, this course covers human anatomy, CPR, hemorrhage control, burns, fractures, hypothermia, toxicological risks, pharmacology, sterilization, cardiac emergencies, drowning, and psychological first aid. Duration: 32 hours (4 days).'
WHERE id = 170;

-- Clean existing content
DELETE FROM lms_question_options WHERE question_id IN (
  SELECT id FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 170));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id = 170);
DELETE FROM lms_quizzes WHERE course_id = 170;
DELETE FROM lms_lessons WHERE course_id = 170;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(170, 'General First Aid Principles and Body Structure',
'<div class="lesson-content">
<img src="https://pamel.edu.pa/uploads/mfa/image1.jpeg" alt="Medical First Aid" style="max-width:100%;margin-bottom:20px;">
<h2>General Principles of First Aid</h2>
<p>First aid is the initial medical care given to a sick or injured person before professional medical treatment is available. The primary goals are to preserve life, prevent the condition from worsening, and promote recovery.</p>
<h3>Immediate Action Steps</h3>
<ol>
<li>Ensure scene safety — protect yourself and the casualty from further harm.</li>
<li>Assess the casualty\'s responsiveness — call out and gently tap their shoulders.</li>
<li>Call for help — alert the ship\'s officer and request emergency assistance.</li>
<li>Provide appropriate first aid based on the casualty\'s condition.</li>
<li>Monitor and reassess the casualty continuously until help arrives.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/mfa/image2.png" alt="First Aid Kit" style="max-width:60%;display:block;margin:15px auto;">
<h2>The Human Body Structure</h2>
<h3>The Skeletal System</h3>
<p>The adult human skeleton consists of 206 bones. It provides structure and support, protects internal organs, enables movement in conjunction with muscles, and produces blood cells in the bone marrow.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image7.png" alt="Skeletal System" style="max-width:100%;margin:15px 0;">
<p>Key bone groups include the skull (cranium and facial bones), vertebral column (cervical, thoracic, lumbar, sacral vertebrae), ribcage (ribs and sternum), and the appendicular skeleton (arm and leg bones).</p>
<img src="https://pamel.edu.pa/uploads/mfa/image8.jpeg" alt="Head Skeleton" style="max-width:60%;display:inline-block;margin:10px;">
<img src="https://pamel.edu.pa/uploads/mfa/image9.jpeg" alt="Skeleton Detail" style="max-width:35%;display:inline-block;margin:10px;">
<img src="https://pamel.edu.pa/uploads/mfa/image10.jpeg" alt="Skeleton Detail 2" style="max-width:35%;display:inline-block;margin:10px;">
<h3>Muscles and Connective Tissue</h3>
<p>Muscles are the tissues that contract to produce movement. There are three types: skeletal (voluntary), cardiac (involuntary, heart only), and smooth (involuntary, internal organs). Tendons connect muscles to bones; ligaments connect bones to other bones at joints.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image11.jpeg" alt="Muscle System" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image12.jpeg" alt="Tendons" style="max-width:45%;display:inline-block;margin:10px;">
<img src="https://pamel.edu.pa/uploads/mfa/image13.jpeg" alt="Ligament" style="max-width:45%;display:inline-block;margin:10px;">
<h3>The Cardiovascular System</h3>
<p>The heart pumps blood through two circuits: pulmonary (heart to lungs and back) and systemic (heart to body and back). The heart has four chambers: right and left atria, and right and left ventricles. The right side receives deoxygenated blood; the left side pumps oxygenated blood to the body.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image14.png" alt="Heart Anatomy" style="max-width:80%;display:block;margin:15px auto;">
<h3>The Respiratory System</h3>
<p>The lungs are the primary respiratory organs. Oxygen-rich air enters through the airways, passes into the alveoli where gas exchange occurs, and carbon dioxide is expelled on exhalation. Normal adult respiratory rate is 12-20 breaths per minute.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image15.png" alt="Lung Anatomy" style="max-width:80%;display:block;margin:15px auto;">
<h3>The Nervous System</h3>
<p>The brain controls all body functions and consists of the cerebrum (thought, memory, voluntary movement), cerebellum (balance and coordination), and brain stem (vital functions: breathing, heart rate, blood pressure). The spinal cord transmits signals between the brain and body.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image16.jpeg" alt="Brain" style="max-width:80%;display:block;margin:15px auto;">
</div>',
'text', 1, 60, 1),

(170, 'Toxicological Risks and Casualty Assessment',
'<div class="lesson-content">
<h2>Toxicological Risks Aboard Ships</h2>
<p>Seafarers may be exposed to a variety of toxic gases in confined spaces, cargo holds, and machinery spaces. Early recognition of exposure is critical for timely intervention.</p>
<h3>Common Toxic Gases</h3>
<ul>
<li><strong>Hydrogen Sulfide (H<sub>2</sub>S):</strong> Smells of rotten eggs at low concentrations; odorless at high (dangerous) concentrations. Produced in cargo holds and sewage tanks. Highly toxic — causes rapid unconsciousness.</li>
<li><strong>Carbon Monoxide (CO):</strong> Odorless, colorless — the "silent killer." Produced by incomplete combustion. Binds to hemoglobin preventing oxygen transport.</li>
<li><strong>Methane (CH<sub>4</sub>):</strong> Flammable gas found in cargo holds carrying grain, coal, or organic matter. Displaces oxygen.</li>
<li><strong>LPG (Liquefied Petroleum Gas):</strong> Heavier than air; accumulates in bilges and enclosed spaces. Highly flammable and can cause asphyxiation.</li>
<li><strong>Carbon Dioxide (CO<sub>2</sub>):</strong> Colorless and heavier than air. Found in refrigerated cargo spaces and after CO<sub>2</sub> system activation. Displaces oxygen rapidly in enclosed spaces.</li>
<li><strong>Cyanide:</strong> Present in some industrial cargoes. Interferes with cellular respiration. Extremely toxic even in small doses.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/mfa/image17.jpeg" alt="Gas Detector" style="max-width:80%;display:block;margin:15px auto;">
<p>Always test the atmosphere with a calibrated gas detector before entering any confined space. Never enter a space with an oxygen level below 19.5% or above 23.5%, or any detectable toxic gas concentration above permissible exposure limits.</p>
<h2>Casualty Assessment</h2>
<p>A systematic assessment ensures no injuries are missed. Use the DRABC approach:</p>
<h3>Step 1: Check for Danger</h3>
<img src="https://pamel.edu.pa/uploads/mfa/image3.png" alt="Check for Danger" style="max-width:70%;display:block;margin:15px auto;">
<p>Ensure the scene is safe for you and the casualty. Remove any ongoing hazards or move the casualty only if absolutely necessary.</p>
<h3>Step 2: Check for Response</h3>
<img src="https://pamel.edu.pa/uploads/mfa/image4.png" alt="Check Response" style="max-width:70%;display:block;margin:15px auto;">
<p>Call out loudly and tap the casualty\'s shoulders. If they respond, assess for injuries. If no response, shout for help immediately.</p>
<h3>Step 3: Open the Airway</h3>
<img src="https://pamel.edu.pa/uploads/mfa/image5.png" alt="Open Airway" style="max-width:70%;display:block;margin:15px auto;">
<p>Tilt the head back and lift the chin to open the airway. Look, listen, and feel for normal breathing for no more than 10 seconds.</p>
<h3>Step 4: Assess Breathing and Circulation</h3>
<img src="https://pamel.edu.pa/uploads/mfa/image6.png" alt="Check Breathing" style="max-width:70%;display:block;margin:15px auto;">
<p>If breathing is absent or abnormal, begin CPR. Check for major bleeding and treat immediately.</p>
<h2>Managing the Unconscious Casualty</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image18.jpeg" alt="Unconscious Casualty" style="max-width:80%;display:block;margin:15px auto;">
<p>An unconscious casualty who is breathing should be placed in the recovery position to protect the airway. Monitor breathing continuously. Do not leave them unattended.</p>
<h2>Airway Obstruction — Heimlich Maneuver</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image19.png" alt="Airway Obstruction" style="max-width:70%;display:block;margin:15px auto;">
<p>If a conscious person is choking and cannot cough effectively:</p>
<ol>
<li>Give up to 5 firm back blows between the shoulder blades.</li>
<li>If unsuccessful, give up to 5 abdominal thrusts (Heimlich maneuver): stand behind the casualty, place a fist just above the navel, grasp with the other hand, and pull sharply inward and upward.</li>
<li>Alternate back blows and abdominal thrusts until the object is dislodged or the casualty loses consciousness.</li>
<li>If the casualty becomes unconscious, begin CPR immediately.</li>
</ol>
</div>',
'text', 2, 55, 1),

(170, 'CPR, Hemorrhage Control and Spinal Injuries',
'<div class="lesson-content">
<h2>Cardiopulmonary Resuscitation (CPR)</h2>
<p>CPR is an emergency procedure combining chest compressions and rescue breaths to maintain circulation and oxygenation when the heart has stopped.</p>
<h3>Adult CPR Technique</h3>
<ol>
<li>Place the casualty on their back on a firm, flat surface.</li>
<li>Kneel beside the casualty and place the heel of one hand on the center of the chest (lower half of the sternum).</li>
<li>Place the other hand on top, interlocking fingers, keeping arms straight.</li>
<li>Press down at least 5 cm (2 inches) at a rate of 100–120 compressions per minute.</li>
<li>Allow full chest recoil between compressions without removing hands.</li>
<li>After 30 compressions, give 2 rescue breaths if trained to do so.</li>
<li>Continue CPR (30:2 ratio) until the casualty shows signs of life, an AED is available, or professional help takes over.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/mfa/image20.jpeg" alt="CPR Step 1" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image21.jpeg" alt="CPR Step 2" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image22.jpeg" alt="CPR Step 3" style="max-width:80%;display:block;margin:15px auto;">
<h2>Hemorrhage Control</h2>
<p>Bleeding (hemorrhage) must be controlled rapidly as severe blood loss leads to shock and death. Blood volume in an adult is approximately 5–6 liters; loss of more than 1.5 liters is life-threatening.</p>
<h3>Types of Bleeding</h3>
<ul>
<li><strong>Arterial:</strong> Bright red blood spurting in pulses synchronized with the heartbeat. Most serious — can be fatal within minutes.</li>
<li><strong>Venous:</strong> Dark red blood flowing steadily. Less immediately dangerous but still requires prompt control.</li>
<li><strong>Capillary:</strong> Slow oozing from small cuts. Usually stops with minimal treatment.</li>
</ul>
<h3>Treatment of External Bleeding</h3>
<ol>
<li>Apply direct pressure to the wound using a clean dressing or cloth. Maintain firm pressure for at least 10 minutes.</li>
<li>Elevate the injured limb above heart level if possible and no fracture is suspected.</li>
<li>Add more dressings on top if blood soaks through — do not remove the original dressing.</li>
<li>For severe limb bleeding, consider a tourniquet as a last resort, noting the time of application.</li>
</ol>
<h3>Specialized Bleeding Situations</h3>
<ul>
<li><strong>Nosebleed:</strong> Lean forward, pinch the soft part of the nose for 10 minutes. Do not tilt the head back.</li>
<li><strong>Ear bleeding after head injury:</strong> Tilt the head to allow drainage — may indicate skull fracture. Seek urgent medical help.</li>
<li><strong>Internal bleeding:</strong> Signs include distended abdomen, bruising, signs of shock (pale, cold, clammy skin, rapid weak pulse). Do not give food or drink. Seek immediate medical help.</li>
</ul>
<h2>Spinal Injuries</h2>
<p>Suspect a spinal injury in any casualty who has suffered a fall from height, diving accident, vehicle collision, or direct blow to the neck or back. Incorrect handling can cause permanent paralysis.</p>
<h3>Treatment Principles</h3>
<ol>
<li>Keep the casualty as still as possible — do not move unless in immediate danger.</li>
<li>Support the head in the position found, keeping head, neck, and spine in alignment.</li>
<li>If the casualty must be moved, use the jaw thrust technique to open the airway without tilting the head.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/mfa/image24.jpeg" alt="Spinal Injury Treatment" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image25.jpeg" alt="Spinal Support" style="max-width:80%;display:block;margin:15px auto;">
<h3>Log Roll Technique</h3>
<p>If the casualty with a suspected spinal injury must be turned (e.g., to protect their airway or if vomiting), use the log roll. This requires at least three helpers:</p>
<ol>
<li>One person supports and controls the head at all times, directing the movement.</li>
<li>Helpers kneel along one side and gently straighten the casualty\'s arms and legs.</li>
<li>On the count of three, helpers roll the casualty toward themselves as one unit while the head controller moves the head in alignment with the body.</li>
<li>Maintain head, neck, body, and legs in a straight line throughout.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/mfa/image26.jpeg" alt="Log Roll Technique" style="max-width:100%;margin:15px 0;">
<h3>Recovery Position for Spinal Injuries</h3>
<p>If you are alone and must turn the casualty to protect their airway, keep the head, neck, and body in line as best as possible, and use padding to support the head once on their side.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image27.jpeg" alt="Recovery Position" style="max-width:80%;display:block;margin:15px auto;">
</div>',
'text', 3, 60, 1),

(170, 'Burns, Temperature Effects and Musculoskeletal Injuries',
'<div class="lesson-content">
<h2>Burns and Scalds</h2>
<p>Burns are lesions of the skin and soft tissue caused by fire, heat, electricity, chemicals, cold, or radiation. The severity depends on the temperature, duration of exposure, location, size, and the casualty\'s age and physical condition.</p>
<h3>Classification by Depth</h3>
<ul>
<li><strong>First Degree:</strong> Destroys only the epidermis (outer skin layer). Causes redness, pain, and no lasting scarring.</li>
<li><strong>Second Degree:</strong> Destroys the epidermis and part of the dermis. Produces blisters, swelling, and severe pain.</li>
<li><strong>Third Degree:</strong> Affects all skin layers. Presents as dry, white, or charred skin. No pain because nerve endings are destroyed.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/mfa/image28.jpeg" alt="Burn Classification" style="max-width:80%;display:block;margin:15px auto;">
<h3>First Aid for Burns</h3>
<ol>
<li>Stop the burning process — remove the casualty from the source.</li>
<li>Cool the burn with cool (not ice cold) running water for at least 10–20 minutes.</li>
<li>Remove clothing and jewelry near the burn after soaking with water — never pull off stuck clothing.</li>
<li>Cover loosely with a clean, moist dressing.</li>
</ol>
<p><strong>Do NOT:</strong> Apply ointments, creams, or toothpaste. Break blisters. Give alcohol. Leave the casualty alone.</p>
<h3>Electrical Burns</h3>
<p>Disconnect the power source before approaching the casualty. Use insulating materials (rubber gloves, dry wood) if the power cannot be turned off. Electrocution may cause cardiac arrest — be prepared to start CPR immediately after safe rescue.</p>
<h2>Effects of Temperature</h2>
<h3>Hypothermia</h3>
<p>Hypothermia occurs when core body temperature falls below 35°C. Causes include cold water immersion, inadequate clothing, and prolonged exposure to cold environments.</p>
<ul>
<li><strong>Mild (35–32°C):</strong> Shivering, impaired judgment, slowed movement.</li>
<li><strong>Moderate (32–28°C):</strong> Reduced consciousness, slowed heart rate and breathing, muscle rigidity.</li>
<li><strong>Profound (below 28°C):</strong> Coma, potential cardiac arrest. Below 22°C — breathing ceases.</li>
</ul>
<p><strong>Treatment:</strong> Move to shelter, remove wet clothing, insulate with blankets (including the head), give warm drinks if conscious. Handle gently — the slightest jolt can trigger ventricular fibrillation.</p>
<h3>Frostbite</h3>
<p>Affects extremities (fingers, toes, ears). Ice crystals form in cells, causing them to rupture. Do not rub the affected area. Rewarm in warm water (38–42°C) only if there is no risk of refreezing. Transport to hospital.</p>
<h3>Heat Exhaustion</h3>
<p>Results from excessive sweating and fluid/salt loss. Signs: pale sweaty skin, weakness, fast weak pulse, nausea. Treatment: cool area, remove excess clothing, give oral rehydration fluids, seek medical advice.</p>
<h3>Heat Stroke</h3>
<p>A life-threatening emergency — the hypothalamus fails and sweating stops. Signs: flushed dry skin, strong fast pulse, confusion, high body temperature (above 40°C). Treatment: call for emergency help, cool rapidly with wet sheets and fanning, do not give fluids if unconscious.</p>
<h2>Fractures</h2>
<p>A fracture is a break or crack in a bone. Types include closed (skin intact), open/compound (bone pierces skin), complete (bone in two pieces), and incomplete (partial crack).</p>
<img src="https://pamel.edu.pa/uploads/mfa/image30.jpeg" alt="Fracture Types" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image31.jpeg" alt="Fracture Classification" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image32.jpeg" alt="Fracture Patterns" style="max-width:80%;display:block;margin:15px auto;">
<h3>Signs and Symptoms</h3>
<p>Deformity, swelling, bruising, point tenderness, inability to move the limb, shortening or angulation, grating sensation (crepitus).</p>
<h3>First Aid for Fractures (RICE)</h3>
<img src="https://pamel.edu.pa/uploads/mfa/image33.jpeg" alt="Fracture First Aid" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image34.jpeg" alt="Apply Pressure on Wound" style="max-width:80%;display:block;margin:15px auto;">
<img src="https://pamel.edu.pa/uploads/mfa/image35.jpeg" alt="RICE Method" style="max-width:80%;display:block;margin:15px auto;">
<ul>
<li><strong>R — Rest:</strong> Keep the casualty still; support the injured part.</li>
<li><strong>I — Immobilize:</strong> Splint the limb above and below the fracture using padded splints or bandage the injured leg to the uninjured one.</li>
<li><strong>C — Cold:</strong> Apply a cold pack wrapped in cloth to reduce swelling. Do not apply directly to skin or on open fractures.</li>
<li><strong>E — Elevate:</strong> Raise the injured part above heart level if possible and if doing so does not cause pain.</li>
</ul>
<p>Do not allow the casualty to eat, drink, or smoke as surgery may be needed. Do not try to straighten broken bones.</p>
<h2>Dislocations, Sprains and Strains</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image36.jpeg" alt="Dislocation" style="max-width:80%;display:block;margin:15px auto;">
<p>A <strong>dislocation</strong> occurs when a bone becomes dislodged from its joint (commonly jaw, shoulder, finger, kneecap). Never attempt to manipulate a dislocated joint back into place — this is for medical professionals only. Immobilize in the position found and transport to hospital.</p>
<p>A <strong>sprain</strong> is an injury to a ligament; a <strong>strain</strong> is an injury to a muscle. Both present similarly to a minor fracture. When in doubt, treat as a fracture. Apply RICE and seek medical evaluation.</p>
</div>',
'text', 4, 65, 1),

(170, 'Rescue Operations, Hypothermia at Sea and Radio Medical Advice',
'<div class="lesson-content">
<h2>Medical Care of Rescued Persons</h2>
<p>During a voyage, crew members may be required to recover people in distress at sea — a person overboard, survivors from an abandoned vessel, or victims of a maritime accident. Prior planning and knowledge of recovery procedures are essential.</p>
<h3>Recovery Operations from Water</h3>
<p>Factors to consider during a rescue operation include:</p>
<ul>
<li>Ship\'s maneuverability and freeboard.</li>
<li>Equipment limitations (nets, scramble nets, rescue boats).</li>
<li>Available crew and personal protective equipment (PPE).</li>
<li>Sea conditions: wind force, wave height, swell, and spray.</li>
</ul>
<h2>Hypothermia at Sea</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image37.jpeg" alt="Hypothermia at Sea" style="max-width:80%;display:block;margin:15px auto;">
<p>Hypothermia is a leading cause of death in man overboard situations. Cold water conducts heat away from the body 25 times faster than cold air. The time to hypothermia depends on water temperature:</p>
<ul>
<li><strong>Mild (35–32°C):</strong> Shivering, slowed movement, impaired decision-making.</li>
<li><strong>Moderate (32–28°C):</strong> Suppressed consciousness, slowed heartbeat, organ dysfunction.</li>
<li><strong>Profound (below 28°C):</strong> Coma, cardiac and respiratory failure. Below 20°C — cardiac arrest.</li>
</ul>
<h3>Actions for Man Overboard — Hypothermia</h3>
<ol>
<li>Remove the person from the water as quickly as possible.</li>
<li>Provide a Thermal Protective Aid (TPA) immediately.</li>
<li>If respiratory function is affected, begin CPR with 5 initial rescue breaths (compared to the standard 2) to clear airway obstruction from water.</li>
<li>If cardiac arrest is present, perform chest compressions at 100–120 per minute and use an AED if available.</li>
<li>Once CPR achieves cardiopulmonary recovery, insulate the body with blankets and TPAs.</li>
<li>Transfer to a shore hospital if the condition requires it.</li>
</ol>
<h3>Prevention of Hypothermia</h3>
<ul>
<li>Always wear thermal protective gear when working on deck in cold weather.</li>
<li>Use an immersion suit when abandoning ship in cold conditions.</li>
<li>Rescue persons from cold water as quickly as possible and provide thermal insulation.</li>
</ul>
<h2>Radio Medical Advice (Radio Medico)</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image38.jpeg" alt="Radio Medical Advice" style="max-width:80%;display:block;margin:15px auto;">
<p>Most merchant vessels do not carry a doctor. The Radio Medical Advice system (Radio Medico) allows seafarers to request medical guidance from shore-based medical professionals via radio or satellite communication.</p>
<h3>Communication Channels</h3>
<ul>
<li><strong>Terrestrial (VHF/MF/HF):</strong> Range limited to ~30 nautical miles for VHF; MF/HF provides greater range. Uses Digital Selective Call (DSC).</li>
<li><strong>Satellite (INMARSAT):</strong> Available from virtually anywhere. Uses Fleet77 or other terminals.</li>
</ul>
<h3>INMARSAT Medical Service Codes</h3>
<ul>
<li><strong>Code 32:</strong> Medical advice (Radio Medico)</li>
<li><strong>Code 38:</strong> Medical assistance via the Rescue Coordinating Centre (RCC)</li>
</ul>
<p>These services are generally free of charge for safety/urgency calls.</p>
<h3>Radio Procedure</h3>
<p>A medical urgency call uses the <strong>PAN-PAN MEDICO</strong> prefix in radio communication. Before making contact, prepare:</p>
<ol>
<li>Patient\'s name, age, sex, and nationality.</li>
<li>Description of symptoms (onset, duration, severity).</li>
<li>Vital signs: pulse, respiration, temperature, blood pressure.</li>
<li>List of medications available on board.</li>
<li>Any treatment already given.</li>
<li>Ship\'s position, next port, and estimated time of arrival.</li>
</ol>
<p>Communicate in English where possible. Record all advice received in the ship\'s log. The International Medical Guide for Ships (WHO) standardized forms should be used to ensure all critical information is captured.</p>
</div>',
'text', 5, 50, 1),

(170, 'Pharmacology, Sterilization and Medical Emergencies',
'<div class="lesson-content">
<h2>Pharmacology</h2>
<p>Pharmacology is the study of how drugs interact with living organisms. On board ships, a basic understanding enables officers to correctly administer medicines from the ship\'s medical chest.</p>
<h3>Key Pharmacological Concepts</h3>
<ul>
<li><strong>Pharmacokinetics:</strong> What the body does to the drug — absorption, distribution, metabolism, and excretion (ADME).</li>
<li><strong>Pharmacodynamics:</strong> What the drug does to the body — mechanism of action, therapeutic effects, and toxicity.</li>
</ul>
<h3>Antibiotics and Antiseptics</h3>
<p>Antibiotics are used only for confirmed or suspected bacterial infections. Overuse contributes to antimicrobial resistance (AMR). Always prescribe based on diagnosis and use the correct dose and duration. Common antiseptics used on vessels include iodine (povidone-iodine), chlorhexidine, alcohols (ethanol, isopropanol), and hydrogen peroxide.</p>
<h3>Principles of Analgesics</h3>
<p>Follow the WHO analgesic ladder:</p>
<ol>
<li>Mild pain: paracetamol (acetaminophen) or NSAIDs.</li>
<li>Moderate pain: weak opioids (e.g., codeine) combined with non-opioids.</li>
<li>Severe pain: strong opioids (e.g., morphine) — record in the controlled drugs register.</li>
</ol>
<p>Use oral analgesics whenever possible. Administer on a regular schedule for ongoing pain, not only on demand. Reduce doses in elderly patients and those with renal or hepatic impairment.</p>
<h2>Sterilization and Disinfection</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image39.jpeg" alt="Sterilization" style="max-width:80%;display:block;margin:15px auto;">
<ul>
<li><strong>Sterilization:</strong> Complete removal of all microbial life including spores. Achieved by steam (autoclave), dry heat, ethylene oxide, or chemical sterilants. Required for items contacting sterile tissue (critical items).</li>
<li><strong>High-Level Disinfection:</strong> Eliminates all pathogens and all viruses but may leave some spores. Required for semi-critical items (mucous membrane contact).</li>
<li><strong>Intermediate/Low-Level Disinfection:</strong> Eliminates most pathogens. Sufficient for non-critical items (intact skin contact).</li>
</ul>
<p>Use Spaulding\'s classification to determine the required level: critical (tissue contact) → sterilization; semi-critical (mucous membrane) → high-level disinfection; non-critical (intact skin) → intermediate/low disinfection.</p>
<h2>Cardiac Failure and Cardiac Arrest</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image40.png" alt="Cardiac Failure" style="max-width:80%;display:block;margin:15px auto;">
<p>Cardiac failure occurs when the heart cannot pump blood effectively. Signs include shortness of breath, fatigue, swelling in legs and ankles, rapid heartbeat, and persistent cough. Cardiac arrest is a sudden cessation of heart function requiring immediate CPR.</p>
<img src="https://pamel.edu.pa/uploads/mfa/image41.jpeg" alt="CPR and AED" style="max-width:80%;display:block;margin:15px auto;">
<h3>Response to Cardiac Arrest</h3>
<ol>
<li>Ensure scene safety and check for response.</li>
<li>Call for emergency assistance and request an AED.</li>
<li>Begin high-quality CPR — 30 chest compressions followed by 2 rescue breaths.</li>
<li>Use the AED as soon as it arrives — turn it on and follow the voice prompts.</li>
<li>Continue CPR until the casualty begins breathing/moving or emergency services take over.</li>
</ol>
<h2>Drowning</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image42.png" alt="Drowning First Aid" style="max-width:80%;display:block;margin:15px auto;">
<h3>First Aid for Drowning</h3>
<ol>
<li>Remove the person from the water carefully — they may have a spinal injury.</li>
<li>Check responsiveness and breathing.</li>
<li>If not breathing: give 5 initial rescue breaths (not the standard 2) to clear airway obstruction.</li>
<li>Begin CPR (30 compressions : 2 breaths) until the casualty recovers or emergency services arrive.</li>
<li>If breathing resumes, place in recovery position and keep warm — remove wet clothing and cover with blankets.</li>
</ol>
<h2>Asphyxiation</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image43.png" alt="Asphyxiation" style="max-width:80%;display:block;margin:15px auto;">
<p>Asphyxiation is oxygen deprivation that can lead to unconsciousness, brain damage, and death. Causes include drowning, toxic gas inhalation (chemical asphyxia), choking, anaphylaxis, severe asthma, strangulation, and drug overdose. Treatment depends on cause: CPR for cardiac arrest, Heimlich maneuver for choking, oxygen therapy, epinephrine for anaphylaxis.</p>
<h2>Psychiatric and Psychological First Aid</h2>
<img src="https://pamel.edu.pa/uploads/mfa/image44.jpeg" alt="Psychological First Aid" style="max-width:80%;display:block;margin:15px auto;">
<p>Psychological First Aid (PFA) reduces stress symptoms following traumatic events. It is built on the concept of human resilience and aims to create an environment of safety, calm, connectedness, self-empowerment, and hope.</p>
<h3>How to Provide PFA</h3>
<ul>
<li>Approach the person in a comfortable, private setting. Use "I" statements: "I have noticed..." "I am concerned..."</li>
<li>Listen attentively and show empathy — do not judge, blame, or dismiss their feelings.</li>
<li>Provide practical information about normal stress reactions.</li>
<li>Encourage professional help if symptoms are severe or persistent.</li>
<li>For someone who is suicidal: ask directly, do not leave them alone, and immediately connect them with professional support.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/mfa/image45.jpeg" alt="Supportive Care" style="max-width:80%;display:block;margin:15px auto;">
</div>',
'text', 6, 55, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (170, 'Medical First Aid Assessment', 'Comprehensive assessment covering all Medical First Aid topics including CPR, bleeding control, burns, fractures, hypothermia, toxicological risks, pharmacology, and emergency procedures.', 70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'What is the primary goal of first aid?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'What does CPR stand for?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'How many bones does the adult human skeleton have?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'Which gas is called the "silent killer" because it is odorless and colorless?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What is the recovery position used for?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'The Heimlich maneuver is used to treat:', 'multiple_choice', 1, 6, NOW()),
(@qid, 'Which type of bleeding is characterized by bright red blood spurting in pulses with the heartbeat?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'What is the first action when treating a burn?', 'multiple_choice', 1, 8, NOW()),
(@qid, 'A third-degree burn is characterized by:', 'multiple_choice', 1, 9, NOW()),
(@qid, 'Hypothermia occurs when core body temperature falls below:', 'multiple_choice', 1, 10, NOW()),
(@qid, 'In the RICE method, what does "I" stand for?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'The log roll technique is primarily used when:', 'multiple_choice', 1, 12, NOW()),
(@qid, 'What is the recommended chest compression rate for adult CPR?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'How does sterilization differ from disinfection?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What radio prefix is used when requesting urgent medical advice at sea?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'Psychological First Aid (PFA) is designed primarily to:', 'multiple_choice', 1, 16, NOW()),
(@qid, 'Frostbite most commonly affects:', 'multiple_choice', 1, 17, NOW()),
(@qid, 'In drowning first aid, how many initial rescue breaths should be given before starting CPR?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What is the correct chest compression depth for adult CPR?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'Which INMARSAT service code is used to request medical advice?', 'multiple_choice', 1, 20, NOW());

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
(@q1, 'Replace professional medical treatment', 0, 1),
(@q1, 'Preserve life, prevent worsening, and promote recovery', 1, 2),
(@q1, 'Diagnose the medical condition', 0, 3),
(@q1, 'Administer prescription medication', 0, 4),

(@q2, 'Cardiac Pressure Response', 0, 1),
(@q2, 'Critical Patient Recovery', 0, 2),
(@q2, 'Cardiopulmonary Resuscitation', 1, 3),
(@q2, 'Chest Percussion Routine', 0, 4),

(@q3, '150 bones', 0, 1),
(@q3, '180 bones', 0, 2),
(@q3, '206 bones', 1, 3),
(@q3, '260 bones', 0, 4),

(@q4, 'Hydrogen sulfide (H2S)', 0, 1),
(@q4, 'Carbon monoxide (CO)', 1, 2),
(@q4, 'Methane (CH4)', 0, 3),
(@q4, 'Carbon dioxide (CO2)', 0, 4),

(@q5, 'To treat fractures in the field', 0, 1),
(@q5, 'To perform CPR more effectively', 0, 2),
(@q5, 'To protect an unconscious breathing casualty\'s airway', 1, 3),
(@q5, 'To cool a casualty with heat stroke', 0, 4),

(@q6, 'Cardiac arrest', 0, 1),
(@q6, 'Severe external bleeding', 0, 2),
(@q6, 'Airway obstruction by a foreign object', 1, 3),
(@q6, 'Suspected spinal injury', 0, 4),

(@q7, 'Venous bleeding', 0, 1),
(@q7, 'Capillary bleeding', 0, 2),
(@q7, 'Internal bleeding', 0, 3),
(@q7, 'Arterial bleeding', 1, 4),

(@q8, 'Apply an antiseptic ointment immediately', 0, 1),
(@q8, 'Stop the burning process and remove the casualty from the source', 1, 2),
(@q8, 'Break any blisters to release fluid', 0, 3),
(@q8, 'Wrap tightly with a dry bandage', 0, 4),

(@q9, 'Redness and severe pain in the outer skin layer', 0, 1),
(@q9, 'Blistering and swelling with severe pain', 0, 2),
(@q9, 'Dry, charred skin with no pain due to nerve destruction', 1, 3),
(@q9, 'Sunburn-like appearance with mild discomfort', 0, 4),

(@q10, 'Below 37°C', 0, 1),
(@q10, 'Below 36°C', 0, 2),
(@q10, 'Below 35°C', 1, 3),
(@q10, 'Below 30°C', 0, 4),

(@q11, 'Inspect', 0, 1),
(@q11, 'Immobilize', 1, 2),
(@q11, 'Ice pack only', 0, 3),
(@q11, 'Irrigate with water', 0, 4),

(@q12, 'When performing CPR on a casualty', 0, 1),
(@q12, 'When a spinal injury is suspected and the casualty must be moved', 1, 2),
(@q12, 'When treating severe burn injuries', 0, 3),
(@q12, 'When managing a casualty with a fracture', 0, 4),

(@q13, '60–80 compressions per minute', 0, 1),
(@q13, '80–100 compressions per minute', 0, 2),
(@q13, '100–120 compressions per minute', 1, 3),
(@q13, '120–150 compressions per minute', 0, 4),

(@q14, 'Sterilization is faster than disinfection', 0, 1),
(@q14, 'Sterilization eliminates all microbial life including spores', 1, 2),
(@q14, 'Sterilization only works on non-living surfaces', 0, 3),
(@q14, 'Sterilization requires fewer chemical agents', 0, 4),

(@q15, 'MAYDAY MEDICO', 0, 1),
(@q15, 'SECURITE MEDICO', 0, 2),
(@q15, 'PAN-PAN MEDICO', 1, 3),
(@q15, 'DISTRESS MEDICAL', 0, 4),

(@q16, 'Replace psychiatric medication and therapy', 0, 1),
(@q16, 'Diagnose mental health disorders at sea', 0, 2),
(@q16, 'Reduce stress symptoms and assist healthy recovery after trauma', 1, 3),
(@q16, 'Provide long-term counseling for seafarers', 0, 4),

(@q17, 'The trunk and abdomen', 0, 1),
(@q17, 'Extremities such as fingers, toes, and ears', 1, 2),
(@q17, 'The face and scalp only', 0, 3),
(@q17, 'Internal organs', 0, 4),

(@q18, '2 breaths', 0, 1),
(@q18, '3 breaths', 0, 2),
(@q18, '5 breaths', 1, 3),
(@q18, '10 breaths', 0, 4),

(@q19, 'At least 1 inch (2.5 cm)', 0, 1),
(@q19, 'At least 2 inches (5 cm)', 1, 2),
(@q19, 'At least 3 inches (7.5 cm)', 0, 3),
(@q19, 'At least 4 inches (10 cm)', 0, 4),

(@q20, 'Code 16', 0, 1),
(@q20, 'Code 32', 1, 2),
(@q20, 'Code 38', 0, 3),
(@q20, 'Code 70', 0, 4);
