-- Medical Care (MC) Course Content
-- course_id=171, code=MC
-- STCW Regulation VI/4, Section A-VI/4, paragraphs 4-6, Table A-VI/4-2
-- 47.5 total hours

UPDATE lms_courses SET
  course_code='MC',
  title='Medical Care',
  status='published',
  category_id=6,
  image='https://pamel.edu.pa/uploads/mc/image1.jpeg',
  level='advanced',
  pass_percentage=70,
  description='Medical Care (MC) is an advanced STCW medical course complying with Regulation VI/4, Section A-VI/4, paragraphs 4-6 and Table A-VI/4-2. This 47.5-hour program trains designated seafarers in comprehensive medical care on board vessels, covering care of casualties, advanced wound management, nursing care, disease prevention and treatment, environmental health, pharmacology, sterilization, surgical instruments, medical recordkeeping, and coordination of medical assistance including radio medical advice and patient evacuation procedures.'
WHERE id=171;

DELETE FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=171));
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id=171);
DELETE FROM lms_quizzes WHERE course_id=171;
DELETE FROM lms_lessons WHERE course_id=171;

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(171, 'First Aid Review and Care of Head, Spinal and ENT/Eye Injuries', '<h2>Course Overview</h2>
<p>The Medical Care (MC) course provides comprehensive medical training for designated seafarers who will assume responsibility for medical care on board vessels. The course complies with STCW Regulation VI/4, Section A-VI/4, paragraphs 4-6, and Table A-VI/4-2.</p>
<ul>
<li><strong>Course Code:</strong> MC</li>
<li><strong>Total Duration:</strong> 47.5 hours</li>
<li><strong>STCW Reference:</strong> Regulation VI/4, paragraphs 4-6</li>
<li><strong>Level:</strong> Advanced Medical Care</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image1.jpeg" alt="Medical Care Course Cover" style="max-width:100%;"><figcaption>Medical Care — Advanced STCW Training</figcaption></figure>

<h2>1. First Aid Review</h2>
<h3>1.1 The Human Body Structure</h3>
<p>A thorough understanding of human anatomy is essential for effective medical care. The body is organized into systems, each with specific functions that must be maintained for overall health.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image2.png" alt="Body Systems Overview" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image3.png" alt="Anatomy Diagram" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image4.png" alt="Body Structure" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image5.png" alt="Anatomical Reference" style="max-width:100%;"></figure>
<p><strong>Key Body Systems:</strong></p>
<ul>
<li><strong>Skeletal System:</strong> 206 bones providing structure, protection, and movement</li>
<li><strong>Muscular System:</strong> Over 600 muscles enabling movement and posture</li>
<li><strong>Circulatory System:</strong> Heart, blood vessels, and blood — transporting oxygen and nutrients</li>
<li><strong>Respiratory System:</strong> Lungs, trachea, bronchi — gas exchange</li>
<li><strong>Nervous System:</strong> Brain, spinal cord, peripheral nerves — coordination and sensation</li>
<li><strong>Digestive System:</strong> Processing food and absorbing nutrients</li>
<li><strong>Urinary System:</strong> Filtering blood and eliminating waste</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image7.png" alt="Circulatory System" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image8.png" alt="Respiratory System" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image9.png" alt="Nervous System" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image10.png" alt="Body System Diagram" style="max-width:100%;"></figure>

<h3>1.2 Toxicological Hazards and Poisoning</h3>
<p>Seafarers may be exposed to a variety of toxic substances on board. Recognition and initial management of poisoning is a critical skill.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image12.png" alt="Toxicological Hazards" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image13.png" alt="Poisoning Types" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image14.png" alt="Toxicology Reference" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image15.png" alt="Chemical Hazards" style="max-width:100%;"></figure>
<p><strong>Types of Poisoning:</strong></p>
<ul>
<li><strong>Ingested:</strong> Toxic substances swallowed — detergents, chemicals, drugs</li>
<li><strong>Inhaled:</strong> Toxic gases or vapors — paint fumes, engine exhaust, hydrogen sulfide</li>
<li><strong>Absorbed:</strong> Through skin contact with chemicals or pesticides</li>
<li><strong>Injected:</strong> Venom from insects, marine animals, or contaminated needles</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image16.png" alt="Poisoning Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image17.png" alt="Antidote Reference" style="max-width:100%;"></figure>

<h3>1.3 Carbon Monoxide (CO) Poisoning</h3>
<p>Carbon monoxide is an odorless, colorless gas produced by incomplete combustion. It is highly dangerous in confined spaces on vessels.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image18.png" alt="CO Poisoning" style="max-width:100%;"></figure>
<ul>
<li><strong>Symptoms:</strong> Headache, dizziness, confusion, cherry-red skin, loss of consciousness</li>
<li><strong>First Aid:</strong> Remove from source immediately, fresh air, administer 100% oxygen, CPR if needed</li>
<li><strong>Prevention:</strong> Adequate ventilation, CO detectors in enclosed spaces</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image19.png" alt="CO Prevention" style="max-width:100%;"></figure>

<h2>2. Care of Casualties</h2>
<h3>2.1 Head and Spinal Injuries</h3>
<p>Head and spinal injuries require careful assessment and immobilization to prevent secondary damage to the nervous system.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image20.png" alt="Head Injury Assessment" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image21.png" alt="Spinal Immobilization" style="max-width:100%;"></figure>
<p><strong>Signs of Head Injury:</strong></p>
<ul>
<li>Loss of consciousness (brief or prolonged)</li>
<li>Confusion, disorientation, amnesia</li>
<li>Unequal pupils (anisocoria)</li>
<li>Blood or clear fluid from ears or nose</li>
<li>Vomiting, severe headache</li>
<li>Raccoon eyes or Battle\'s sign (delayed bruising)</li>
</ul>
<p><strong>Spinal Injury Precautions:</strong></p>
<ul>
<li>Assume spinal injury in any trauma patient with neck/back pain or mechanism of injury</li>
<li>Apply rigid cervical collar</li>
<li>Log-roll technique for repositioning — minimum 3 rescuers</li>
<li>Immobilize on a spinal board</li>
<li>Do NOT flex, extend, or rotate the neck</li>
</ul>

<h3>2.2 Ear, Nose, Throat and Eye Injuries</h3>
<p>Injuries to the head\'s sensory organs require specific assessment and management to preserve function.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image22.png" alt="ENT Injuries" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image23.png" alt="Eye Anatomy" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image24.png" alt="Eye Injury Assessment" style="max-width:100%;"></figure>
<p><strong>Ear Injuries:</strong></p>
<ul>
<li>Barotrauma (pressure injury): seen in divers and after explosions</li>
<li>Foreign bodies: do NOT attempt removal with sharp instruments</li>
<li>Ruptured eardrum: protect from water, no ear drops without medical advice</li>
<li>Bleeding from ear after head trauma: possible skull fracture — do NOT pack</li>
</ul>
<p><strong>Nose Injuries and Nosebleeds (Epistaxis):</strong></p>
<ul>
<li>Seat patient upright, lean forward</li>
<li>Pinch the soft part of the nose for 10-15 minutes</li>
<li>Apply cold compress to the bridge of the nose</li>
<li>Do NOT tilt head back (swallowed blood causes nausea)</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image25.png" alt="Nose Injury Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image26.png" alt="Eye Injury Types" style="max-width:100%;"></figure>
<p><strong>Eye Injuries:</strong></p>
<ul>
<li><strong>Chemical burns:</strong> Irrigate immediately with copious water for at least 15-20 minutes; do NOT neutralize with opposite chemical</li>
<li><strong>Foreign body:</strong> Do NOT rub; irrigate with sterile saline; refer to medical officer</li>
<li><strong>Blunt trauma:</strong> Ice pack to reduce swelling; assess for hyphema (blood in anterior chamber)</li>
<li><strong>Penetrating injury:</strong> Cover with sterile pad — do NOT press or remove object; urgent evacuation</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image27.png" alt="Eye First Aid" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image28.png" alt="Eye Protection" style="max-width:100%;"></figure>', 'text', 1, 480, 1),

(171, 'Hemorrhage, Burns, Fractures, and Musculoskeletal Injuries', '<h2>2.3 External and Internal Bleeding</h2>
<p>Hemorrhage control is a life-saving priority. Recognition of the type and severity of bleeding guides the appropriate intervention.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image29.png" alt="Hemorrhage Types" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image30.png" alt="Bleeding Control" style="max-width:100%;"></figure>
<p><strong>Types of External Bleeding:</strong></p>
<ul>
<li><strong>Arterial:</strong> Bright red, spurting — most dangerous; requires immediate pressure</li>
<li><strong>Venous:</strong> Dark red, steady flow — controlled with sustained pressure</li>
<li><strong>Capillary:</strong> Oozing from small vessels — usually self-limiting</li>
</ul>
<p><strong>Control of External Bleeding:</strong></p>
<ol>
<li>Apply direct pressure with a clean dressing — maintain for at least 10 minutes</li>
<li>Elevate the injured limb above heart level (if no fracture suspected)</li>
<li>Add more dressings if saturated — do NOT remove original dressing</li>
<li>Apply a tourniquet only as last resort for life-threatening limb hemorrhage</li>
<li>Secure dressing with a bandage once bleeding is controlled</li>
</ol>
<figure><img src="https://pamel.edu.pa/uploads/mc/image31.png" alt="Pressure Points" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image32.png" alt="Tourniquet Application" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image33.png" alt="Wound Dressing" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image34.png" alt="Bleeding Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image35.png" alt="Hemorrhage Control Steps" style="max-width:100%;"></figure>
<p><strong>Internal Bleeding — Signs and Symptoms:</strong></p>
<ul>
<li>Rapid, weak pulse; falling blood pressure</li>
<li>Cold, clammy, pale skin — signs of shock</li>
<li>Abdominal rigidity or distension</li>
<li>Coughing or vomiting blood</li>
<li>Blood in urine or black tarry stools</li>
</ul>
<p><strong>Management of Internal Bleeding:</strong></p>
<ul>
<li>Lay patient flat, elevate legs if no spinal injury</li>
<li>Keep warm to prevent hypothermia</li>
<li>Withhold oral fluids</li>
<li>Monitor vital signs every 5 minutes</li>
<li>Obtain urgent radio medical advice and arrange evacuation</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image36.png" alt="Shock Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image37.png" alt="Internal Bleeding Signs" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image38.png" alt="Patient Positioning" style="max-width:100%;"></figure>

<h2>2.4 Burns, Scalds and Frostbite</h2>
<p>Burns are a significant hazard at sea. Correct classification and initial treatment are critical to reduce morbidity.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image39.png" alt="Burn Classification" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image40.png" alt="Burn Depth" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image41.png" alt="Rule of Nines" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image42.png" alt="Burn Area Assessment" style="max-width:100%;"></figure>
<p><strong>Classification of Burns by Depth:</strong></p>
<ul>
<li><strong>Superficial (1st Degree):</strong> Epidermis only — red, painful, dry; heals in 3-5 days (e.g., sunburn)</li>
<li><strong>Partial Thickness (2nd Degree):</strong> Epidermis and dermis — blistering, moist, very painful; heals in 2-3 weeks</li>
<li><strong>Full Thickness (3rd Degree):</strong> All skin layers destroyed — leathery, dry, painless (nerve damage); requires grafting</li>
</ul>
<p><strong>Assessment — Rule of Nines (Adults):</strong></p>
<ul>
<li>Head and neck: 9%</li>
<li>Each arm: 9%</li>
<li>Chest (front): 9% | Abdomen (front): 9%</li>
<li>Upper back: 9% | Lower back: 9%</li>
<li>Each leg: 18% (front 9% + back 9%)</li>
<li>Genitalia: 1%</li>
</ul>
<p><strong>Burns First Aid:</strong></p>
<ol>
<li>Remove from source; extinguish flames with water/fire blanket — stop, drop, roll</li>
<li>Cool with running water for 10-20 minutes (NOT ice)</li>
<li>Remove clothing and jewelry (unless stuck to burn)</li>
<li>Cover with sterile non-adherent dressing or cling film (clean)</li>
<li>Do NOT burst blisters</li>
<li>Give analgesia; fluids if burns &gt;15% body surface area</li>
<li>Evacuate if serious burns (&gt;10% BSA or any full-thickness burn)</li>
</ol>
<figure><img src="https://pamel.edu.pa/uploads/mc/image43.png" alt="Burn First Aid" style="max-width:100%;"></figure>
<p><strong>Frostbite:</strong></p>
<p>Freezing of tissue due to extreme cold. Affects extremities — fingers, toes, ears, nose.</p>
<ul>
<li>Symptoms: white/grey skin, hard and numb, blistering after rewarming</li>
<li>Treatment: Move to warm environment; rewarm in 40°C water; do NOT rub or walk on frostbitten feet; cover with sterile dressings</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image44.png" alt="Frostbite Management" style="max-width:100%;"></figure>

<h2>2.5 Fractures, Dislocations and Muscular Injuries</h2>
<p>Musculoskeletal injuries are common at sea. Proper immobilization reduces pain, bleeding, and risk of fat embolism.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image45.png" alt="Fracture Types" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image46.png" alt="Bone Anatomy" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image47.png" alt="Fracture Classification" style="max-width:100%;"></figure>
<p><strong>Types of Fractures:</strong></p>
<ul>
<li><strong>Closed (Simple):</strong> Bone broken, skin intact</li>
<li><strong>Open (Compound):</strong> Bone breaks through skin — high infection risk</li>
<li><strong>Greenstick:</strong> Incomplete fracture — common in children</li>
<li><strong>Comminuted:</strong> Bone shattered into multiple fragments</li>
<li><strong>Stress/Hairline:</strong> Incomplete crack from repetitive force</li>
</ul>
<p><strong>Signs of Fracture:</strong></p>
<ul>
<li>Deformity, swelling, bruising</li>
<li>Pain on movement and point tenderness</li>
<li>Loss of function; abnormal movement</li>
<li>Audible crack or felt crepitus</li>
</ul>
<p><strong>Immobilization (RICE Principle):</strong></p>
<ul>
<li><strong>R</strong>est — stop activity</li>
<li><strong>I</strong>ce — apply cold pack wrapped in cloth for 15-20 minutes</li>
<li><strong>C</strong>ompression — apply elastic bandage to reduce swelling</li>
<li><strong>E</strong>levation — raise injured limb above heart level</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image48.png" alt="Splinting Technique" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image49.png" alt="Arm Immobilization" style="max-width:100%;"></figure>
<p><strong>Splinting Principles:</strong></p>
<ul>
<li>Immobilize the joint above and below the fracture</li>
<li>Pad bony prominences before applying splint</li>
<li>Check circulation (CMS) — Circulation, Movement, Sensation — before and after splinting</li>
<li>Open fractures: cover wound with sterile dressing before splinting; do NOT reduce</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image50.png" alt="Leg Splinting" style="max-width:100%;"></figure>
<p><strong>Dislocations:</strong></p>
<ul>
<li>Shoulder dislocation most common — visibly deformed, patient holds arm in abnormal position</li>
<li>Do NOT attempt to reduce a dislocation at sea unless trained</li>
<li>Immobilize in position found; obtain radio medical advice</li>
</ul>
<p><strong>Muscular Injuries:</strong></p>
<ul>
<li><strong>Strain:</strong> Overstretching of muscle — treat with RICE and analgesia</li>
<li><strong>Sprain:</strong> Ligament injury — same treatment; check for underlying fracture</li>
<li><strong>Contusion:</strong> Bruising from blunt force — RICE; monitor for compartment syndrome</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image51.png" alt="Muscle Injury Types" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image52.png" alt="Sprain Management" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image53.png" alt="Musculoskeletal Anatomy" style="max-width:100%;"></figure>', 'text', 2, 540, 1),

(171, 'Wound Care, Suturing, Bandaging, and Nursing', '<h2>2.6 Wound Healing and Infection</h2>
<p>Understanding the wound healing process helps guide proper wound management and prevent complications.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image54.png" alt="Wound Healing Stages" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image55.png" alt="Wound Types" style="max-width:100%;"></figure>
<p><strong>Phases of Wound Healing:</strong></p>
<ol>
<li><strong>Hemostasis (0-24 hours):</strong> Bleeding stops; platelets form a clot; fibrin scaffold forms</li>
<li><strong>Inflammation (1-4 days):</strong> Redness, heat, swelling, pain — immune cells clean the wound</li>
<li><strong>Proliferation (4-21 days):</strong> New tissue grows; collagen laid down; wound contracts</li>
<li><strong>Remodeling (21 days to 2 years):</strong> Scar tissue matures and strengthens</li>
</ol>
<p><strong>Signs of Wound Infection:</strong></p>
<ul>
<li>Increased redness, warmth, swelling after 48 hours</li>
<li>Purulent (pus) discharge</li>
<li>Increasing pain rather than decreasing</li>
<li>Fever, elevated heart rate</li>
<li>Red streaks (lymphangitis) spreading from wound — serious sign</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image56.png" alt="Wound Infection Signs" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image57.png" alt="Wound Cleaning" style="max-width:100%;"></figure>
<p><strong>Wound Cleaning Principles:</strong></p>
<ul>
<li>Irrigate with sterile saline under pressure to remove debris</li>
<li>Remove foreign bodies under good lighting</li>
<li>Clean from center outward to prevent contamination of wound</li>
<li>Apply antiseptic (povidone-iodine) to surrounding skin, not inside wound</li>
<li>Cover with appropriate sterile dressing</li>
</ul>

<h2>2.7 Pain Relief</h2>
<p>Effective analgesia improves patient outcomes and cooperation during treatment.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image58.png" alt="Pain Assessment Scale" style="max-width:100%;"></figure>
<p><strong>WHO Pain Ladder:</strong></p>
<ul>
<li><strong>Step 1 (Mild Pain):</strong> Non-opioid analgesics — paracetamol, NSAIDs (ibuprofen, diclofenac)</li>
<li><strong>Step 2 (Moderate Pain):</strong> Weak opioids — codeine, tramadol ± non-opioids</li>
<li><strong>Step 3 (Severe Pain):</strong> Strong opioids — morphine with medical authorization</li>
</ul>

<h2>2.8 Techniques of Suturing and Clamping</h2>
<p>Suturing is used to close wounds to promote healing and reduce infection risk. Proper technique is essential.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image59.png" alt="Suture Materials" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image60.png" alt="Suture Techniques" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image61.png" alt="Suturing Steps" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image62.png" alt="Wound Closure Methods" style="max-width:100%;"></figure>
<p><strong>Suture Materials:</strong></p>
<ul>
<li><strong>Absorbable:</strong> Dissolve naturally — used for deep tissues (Vicryl, Dexon, catgut)</li>
<li><strong>Non-absorbable:</strong> Must be removed — used for skin closure (nylon, polypropylene, silk)</li>
</ul>
<p><strong>Common Suture Techniques:</strong></p>
<ul>
<li><strong>Simple Interrupted:</strong> Individual stitches — most common for skin; easy to adjust tension</li>
<li><strong>Continuous (Running):</strong> Single thread through entire wound length — faster but tension distributed across all</li>
<li><strong>Mattress Suture (Vertical/Horizontal):</strong> Better eversion, used for high-tension areas</li>
<li><strong>Subcutaneous:</strong> Buried sutures to close deep tissue and reduce dead space</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image66.png" alt="Suture Knot Tying" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image67.jpeg" alt="Suture Detail" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image69.jpeg" alt="Wound Closure" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image71.jpeg" alt="Suturing Technique" style="max-width:100%;"></figure>
<p><strong>Wound Closure Alternatives:</strong></p>
<ul>
<li>Steri-strips (adhesive strips) for small, low-tension wounds</li>
<li>Staples for scalp wounds</li>
<li>Tissue adhesive (cyanoacrylate glue) for minor lacerations</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image73.png" alt="Clamping Technique" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image74.png" alt="Hemostatic Clamping" style="max-width:100%;"></figure>

<h2>2.9 Management of Acute Abdominal Conditions</h2>
<p>Abdominal emergencies on board can be life-threatening. Rapid assessment, pain management, and medical advice are critical.</p>
<p><strong>Common Acute Abdominal Conditions:</strong></p>
<ul>
<li><strong>Appendicitis:</strong> Right lower quadrant pain, nausea, fever, rebound tenderness at McBurney\'s point</li>
<li><strong>Peptic Ulcer:</strong> Epigastric pain, worse after meals or on empty stomach; possible perforation</li>
<li><strong>Intestinal Obstruction:</strong> Colicky pain, distension, vomiting, absent bowel sounds</li>
<li><strong>Acute Pancreatitis:</strong> Severe epigastric pain radiating to back, elevated amylase</li>
<li><strong>Cholecystitis:</strong> Right upper quadrant pain after fatty meals, fever, Murphy\'s sign positive</li>
</ul>
<p><strong>Management:</strong></p>
<ul>
<li>Withhold oral food and fluids (NPO) — possible surgery required</li>
<li>IV access if available; monitor vital signs</li>
<li>Analgesia (cautiously — do not mask signs)</li>
<li>Contact radio medical advice immediately</li>
<li>Prepare for urgent evacuation</li>
</ul>

<h2>2.10 Minor Surgical Treatment</h2>
<p>Trained personnel may need to perform minor surgical procedures in the absence of medical evacuation.</p>
<ul>
<li>Incision and drainage of superficial abscesses</li>
<li>Removal of superficial foreign bodies</li>
<li>Nail trephination for subungual hematoma</li>
<li>Wound debridement</li>
</ul>

<h2>2.11 Dressing and Bandaging</h2>
<p>Proper dressing and bandaging protects wounds from contamination and supports healing.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image75.png" alt="Bandaging Types" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image76.png" alt="Roller Bandage" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image77.png" alt="Triangular Bandage Arm Sling" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image78.png" alt="Figure-8 Bandage" style="max-width:100%;"></figure>
<p><strong>Types of Dressings:</strong></p>
<ul>
<li><strong>Non-adherent:</strong> Paraffin gauze or foam — for burns and raw wounds</li>
<li><strong>Absorbent:</strong> Cotton wool/gauze — for heavily exuding wounds</li>
<li><strong>Hydrocolloid:</strong> For chronic wounds, promotes moist healing</li>
<li><strong>Alginate:</strong> Highly absorbent; for heavily bleeding wounds</li>
</ul>
<p><strong>Bandaging Techniques:</strong></p>
<ul>
<li><strong>Circular:</strong> For cylindrical parts — wrists, ankles</li>
<li><strong>Spiral:</strong> For limbs — each turn overlaps by two-thirds</li>
<li><strong>Figure-of-8:</strong> For joints — elbow, knee, ankle</li>
<li><strong>Triangular (Sling):</strong> Arm sling or head bandage</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image79.png" alt="Head Bandage" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image80.png" alt="Bandaging Reference" style="max-width:100%;"></figure>

<h2>3. Nursing Aspects</h2>
<h3>3.1 General Nursing Principles</h3>
<p>Good nursing care maintains patient comfort, monitors deterioration, and supports recovery.</p>
<p><strong>Vital Signs Monitoring:</strong></p>
<ul>
<li><strong>Pulse:</strong> Normal adult 60-100 bpm; note rate, rhythm, strength</li>
<li><strong>Respiration:</strong> Normal adult 12-20 breaths/min</li>
<li><strong>Blood Pressure:</strong> Normal 120/80 mmHg; hypertension &gt;140/90; hypotension &lt;90/60</li>
<li><strong>Temperature:</strong> Normal 36.5-37.5°C; fever &gt;38°C; hypothermia &lt;35°C</li>
<li><strong>Oxygen Saturation (SpO2):</strong> Normal &gt;95%</li>
</ul>

<h3>3.2 Nursing Care</h3>
<p>Ongoing nursing care includes positioning, nutrition, hygiene, monitoring, and medication administration.</p>
<ul>
<li><strong>Patient positioning:</strong> Recovery position for unconscious patients; semi-recumbent for respiratory problems; flat with legs elevated for shock</li>
<li><strong>Oral hygiene:</strong> Regular mouth care for bedridden patients</li>
<li><strong>Pressure sore prevention:</strong> Reposition every 2 hours; use padding; keep skin dry</li>
<li><strong>Fluid balance:</strong> Record intake (oral/IV) and output (urine, vomiting) accurately</li>
<li><strong>Catheter care:</strong> Maintain closed sterile drainage system; check for kinks and blockages</li>
</ul>', 'text', 3, 480, 1),

(171, 'Diseases, Psychiatric Problems, Dental Care, and Gynecology', '<h2>4. Diseases</h2>
<h3>4.1 Medical Emergencies</h3>
<p>Rapid recognition and response to medical emergencies can prevent death or permanent disability.</p>
<p><strong>Common Medical Emergencies at Sea:</strong></p>
<ul>
<li><strong>Cardiac Arrest:</strong> No pulse, no breathing — begin CPR immediately</li>
<li><strong>Anaphylaxis:</strong> Severe allergic reaction — epinephrine injection, oxygen, antihistamines</li>
<li><strong>Stroke (CVA):</strong> FAST assessment — Face drooping, Arm weakness, Speech difficulty, Time to call</li>
<li><strong>Diabetic Emergency:</strong> Hypoglycemia (low blood sugar) — give oral glucose if conscious; IV dextrose if not</li>
<li><strong>Seizures/Epilepsy:</strong> Protect from injury; recovery position after; do NOT restrain; seek medical advice</li>
<li><strong>Acute MI (Heart Attack):</strong> Crushing chest pain radiating to arm/jaw — aspirin 300mg, oxygen, nitroglycerin if available, urgent evacuation</li>
</ul>

<h3>4.2 Reanimation (CPR)</h3>
<p>Cardiopulmonary resuscitation (CPR) is the most important life-saving skill for any seafarer. Early CPR dramatically increases survival from cardiac arrest.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image81.png" alt="CPR Position" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image82.png" alt="Chest Compressions" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image83.png" alt="Airway Opening" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image84.png" alt="Rescue Breaths" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image85.png" alt="CPR Technique" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image86.png" alt="AED Use" style="max-width:100%;"></figure>
<p><strong>Adult CPR Protocol (ERC Guidelines):</strong></p>
<ol>
<li>Ensure scene safety; check for response (shout, tap shoulders)</li>
<li>Call for help; send for AED</li>
<li>Open airway: head-tilt, chin-lift</li>
<li>Check for normal breathing for no more than 10 seconds</li>
<li>Begin chest compressions: 30 compressions at 100-120/min, depth 5-6 cm</li>
<li>Give 2 rescue breaths (1 second each, visible chest rise)</li>
<li>Continue 30:2 ratio until AED available or advanced help arrives</li>
<li>Use AED as soon as available: power on, follow voice prompts, deliver shock if advised</li>
</ol>
<p><strong>Choking (Airway Obstruction):</strong></p>
<ul>
<li>Mild obstruction: encourage coughing</li>
<li>Severe obstruction (cannot speak/breathe): 5 back blows between shoulder blades, then 5 abdominal thrusts (Heimlich maneuver)</li>
<li>Unconscious patient: begin CPR — each time airway is opened, look for object before giving breaths</li>
</ul>

<h3>4.3 Sexually Transmitted Diseases (STDs)</h3>
<p>STDs are a significant health risk for seafarers visiting multiple ports. Prevention, recognition, and early treatment are essential.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image87.png" alt="STD Prevention" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image88.png" alt="STD Types" style="max-width:100%;"></figure>
<p><strong>Common STDs and their Signs:</strong></p>
<ul>
<li><strong>Gonorrhea:</strong> Purulent urethral discharge, dysuria; treated with antibiotics</li>
<li><strong>Syphilis:</strong> Primary: painless genital ulcer (chancre); Secondary: rash; Tertiary: systemic damage</li>
<li><strong>Chlamydia:</strong> Often asymptomatic; urethral discharge; if untreated — epididymitis</li>
<li><strong>Genital Herpes (HSV-2):</strong> Painful vesicles; recurrent; no cure but antiviral treatment available</li>
<li><strong>HIV/AIDS:</strong> Transmitted via blood, sexual contact, breast milk; weakens immune system; untreatable but manageable with antiretroviral therapy</li>
</ul>
<p><strong>Prevention:</strong></p>
<ul>
<li>Consistent and correct use of condoms</li>
<li>Reduce number of sexual partners</li>
<li>Vaccination for Hepatitis B and HPV</li>
<li>Regular health screenings</li>
</ul>

<h3>4.4 Tropical and Infectious Diseases</h3>
<p>Seafarers visiting tropical ports are at risk of diseases rare in their home countries.</p>
<p><strong>Malaria:</strong></p>
<ul>
<li>Caused by Plasmodium parasites; transmitted by Anopheles mosquito bites</li>
<li>Symptoms: cyclic fever, chills, headache, muscle pain, sweating</li>
<li>Prevention: antimalarial prophylaxis, mosquito repellent, long-sleeved clothing, bed nets</li>
<li>Treatment: antimalarial drugs (chloroquine, artemisinin combinations) — radio medical advice essential</li>
</ul>
<p><strong>Other Important Tropical/Infectious Diseases:</strong></p>
<ul>
<li><strong>Cholera:</strong> Profuse watery diarrhea ("rice water stools"), severe dehydration; oral rehydration therapy; antibiotics</li>
<li><strong>Typhoid:</strong> Sustained fever, headache, rose spots; antibiotic treatment</li>
<li><strong>Hepatitis A &amp; E:</strong> Fecal-oral transmission; jaundice, dark urine; supportive treatment</li>
<li><strong>Yellow Fever:</strong> Mosquito-borne viral hemorrhagic fever; vaccination required for many tropical ports</li>
<li><strong>Influenza:</strong> Fever, myalgia, cough; isolation to prevent spread; antiviral treatment</li>
<li><strong>Dysentery:</strong> Bloody diarrhea with mucus; may be bacterial (Shigella) or amoebic; antibiotics</li>
</ul>

<h3>4.5 Alcohol and Drug Abuse</h3>
<p>Substance abuse is a significant problem in maritime environments. Recognition and management are important for crew safety.</p>
<p><strong>Acute Alcohol Intoxication:</strong></p>
<ul>
<li>Slurred speech, coordination loss, impaired judgment, combativeness</li>
<li>Severe: vomiting, loss of consciousness, respiratory depression, aspiration risk</li>
<li>Treatment: recovery position, monitor airway, keep warm, hydrate when conscious</li>
</ul>
<p><strong>Drug Withdrawal Emergencies:</strong></p>
<ul>
<li>Alcohol withdrawal: tremors, sweating, seizures (delirium tremens) — 24-72 hours after last drink; medical emergency</li>
<li>Opioid withdrawal: severe but rarely life-threatening; supportive care</li>
</ul>

<h3>4.6 Psychiatric Problems</h3>
<p>Mental health emergencies require calm, non-confrontational management and protection of the patient and crew.</p>
<ul>
<li><strong>Acute Psychosis:</strong> Hallucinations, delusions, bizarre behavior — remain calm; do not argue with delusions; contact shore medical support</li>
<li><strong>Suicidal Crisis:</strong> Take all threats seriously; one-to-one supervision; remove means; urgent evacuation</li>
<li><strong>Severe Anxiety/Panic Attack:</strong> Breathe slowly with patient; reassure; controlled environment</li>
<li><strong>Aggressive Behavior:</strong> Do not confront alone; maintain distance; follow ship\'s security procedures</li>
</ul>

<h3>4.7 Dental Care</h3>
<p>Dental problems are a common cause of pain and disability at sea. Basic dental first aid can relieve suffering until port is reached.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image89.png" alt="Dental Anatomy" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image90.png" alt="Dental Emergency Management" style="max-width:100%;"></figure>
<ul>
<li><strong>Toothache:</strong> Analgesics (ibuprofen, paracetamol); oil of cloves (eugenol) for temporary relief; dental referral at next port</li>
<li><strong>Dental Abscess:</strong> Antibiotics (amoxicillin); analgesics; hot salt water rinses; urgent dental care</li>
<li><strong>Fractured Tooth:</strong> Cover sharp edges with dental wax; analgesics</li>
<li><strong>Knocked-out Tooth:</strong> Handle by crown only; rinse gently; store in milk or saliva; replant if possible within 1 hour; dental referral urgently</li>
<li><strong>Lost Filling:</strong> Temporary filling material from first aid kit</li>
</ul>

<h3>4.8 Gynecology and Pregnancy</h3>
<p>Female crew members may experience gynecological emergencies that require prompt assessment and management.</p>
<ul>
<li><strong>Ectopic Pregnancy:</strong> Severe one-sided lower abdominal pain, vaginal bleeding, shoulder tip pain; life-threatening emergency — urgent evacuation</li>
<li><strong>Miscarriage (Threatened):</strong> Vaginal bleeding in early pregnancy; bedrest; emotional support; medical evacuation</li>
<li><strong>Delivery at Sea:</strong> If birth is imminent, prepare clean environment; support perineum; clamp and cut cord after pulsation stops; deliver placenta; monitor for postpartum hemorrhage</li>
<li><strong>Severe Morning Sickness (Hyperemesis Gravidarum):</strong> IV fluids, antiemetics, nutritional support</li>
</ul>', 'text', 4, 480, 1),

(171, 'Hypothermia, Death at Sea, Environmental Hygiene, and Disease Prevention', '<h2>5. Medical Care of Rescued Persons and Hypothermia at Sea</h2>
<h3>5.1 Medical Care of Rescued Persons</h3>
<p>Survivors rescued from the sea present unique medical challenges. Initial assessment must address hypothermia, near-drowning, exhaustion, and trauma simultaneously.</p>
<p><strong>Primary Assessment of Rescued Persons:</strong></p>
<ul>
<li>Airway: clear airway of water, vomit, or debris</li>
<li>Breathing: check for spontaneous breathing; rescue breaths if absent</li>
<li>Circulation: check pulse; begin CPR if cardiac arrest (hypothermic patients may survive after prolonged CPR)</li>
<li>Disability: level of consciousness (AVPU scale: Alert, Voice response, Pain response, Unresponsive)</li>
<li>Exposure: undress carefully; assess body temperature</li>
</ul>
<p><strong>Near-Drowning:</strong></p>
<ul>
<li>Remove from water; lay flat on stable surface</li>
<li>Do NOT perform abdominal thrusts to remove water — ineffective and harmful</li>
<li>Open airway; begin rescue breathing if not breathing</li>
<li>Treat as hypothermic patient; monitor for delayed pulmonary edema</li>
<li>All near-drowning victims should be evacuated for hospital assessment even if asymptomatic initially</li>
</ul>

<h3>5.2 Hypothermia at Sea</h3>
<p>Hypothermia occurs when core body temperature falls below 35°C. At sea, it can develop rapidly, particularly in cold water.</p>
<p><strong>Classification of Hypothermia:</strong></p>
<ul>
<li><strong>Mild (32-35°C):</strong> Shivering, confusion, clumsiness, slurred speech</li>
<li><strong>Moderate (28-32°C):</strong> Shivering stops, muscle rigidity, bradycardia, arrhythmias possible</li>
<li><strong>Severe (&lt;28°C):</strong> Unconsciousness, dilated pupils, ventricular fibrillation risk, apparent death</li>
</ul>
<p><strong>Rewarming Principles:</strong></p>
<ul>
<li>Handle gently — do NOT rub limbs; cardiac arrhythmias may be triggered by movement</li>
<li>Remove wet clothing (cut off if necessary); dry the patient</li>
<li>Passive rewarming: cover with blankets, insulate from cold surface</li>
<li>Active external rewarming: warm packs to armpits, neck, and groin (NOT directly on skin)</li>
<li>Warm humidified oxygen via mask if available</li>
<li>Warm fluids orally only if patient is conscious and can swallow</li>
<li>CPR must be continued in hypothermic cardiac arrest — "not dead until warm and dead"</li>
</ul>

<h2>6. Death at Sea</h2>
<h3>6.1 Signs of Death</h3>
<p>On board, the ship\'s officer responsible for medical care must recognize death and follow proper documentation procedures.</p>
<p><strong>Signs of Real (True) Death:</strong></p>
<ul>
<li>Absence of breathing (confirmed by mirror test)</li>
<li>Absence of heartbeat and pulse</li>
<li>Progressive drop in body temperature (Newton\'s cooling curve)</li>
<li>Cadaveric rigidity (rigor mortis) — begins 2-4 hours after death</li>
<li>Skin lividity (livor mortis) — purple discoloration in dependent areas</li>
<li>Pupillary dilation followed by contraction</li>
</ul>
<p><strong>Types of Death:</strong></p>
<ul>
<li><strong>Natural Death:</strong> Due to disease or physiological process</li>
<li><strong>Unnatural Death:</strong> Due to accident, suicide, or homicide — requires special documentation and police notification at port</li>
</ul>
<p><strong>What to Do After Death is Diagnosed:</strong></p>
<ol>
<li>Distinguish between natural and violent/suspicious circumstances</li>
<li>If suspicious: touch as little as possible; photograph scene from multiple angles; preserve clothing and objects</li>
<li>Complete death certificate with: date/time/place, witnesses, circumstances, body inspection results</li>
<li>Record in the ship\'s logbook</li>
<li>Retain body on board until arrival at port</li>
</ol>

<h3>6.2 Conservation of the Body</h3>
<p>Proper body preservation is required when the vessel cannot reach port immediately.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image91.png" alt="Body Preparation" style="max-width:100%;"></figure>
<ul>
<li>Wash and dry the body (unless suspicious death)</li>
<li>Close eyes and mouth; plug nostrils and rectum with cotton</li>
<li>Cross hands on chest; secure wrists and ankles</li>
<li>Wrap in a blanket and place in a mortuary bag</li>
<li>Store in cold room at 4-8°C (refrigeration, not freezing)</li>
</ul>

<h2>7. Environmental Control on Board</h2>
<h3>7.1 Personal Hygiene</h3>
<p>Good personal hygiene prevents disease transmission and maintains crew health on extended voyages.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image93.png" alt="Foot Hygiene" style="max-width:100%;"></figure>
<ul>
<li><strong>Skin and Hair:</strong> Daily shower; special attention to armpits, groin, and genitals; personal towels only</li>
<li><strong>Hands:</strong> Wash with soap and water before meals and after toilet; brush under nails</li>
<li><strong>Feet:</strong> Wash daily; cut nails straight; use antifungal powder if prone to sweating</li>
<li><strong>Mouth:</strong> Brush after every meal; personal toothbrush replaced every 3 months; regular dental checks before long voyages</li>
<li><strong>Eyes:</strong> Correct vision defects; use protective goggles for chemical/mechanical hazards; treat conjunctivitis promptly (very contagious)</li>
<li><strong>Ears:</strong> Clean daily; avoid cotton swabs in ear canal; use hearing protection when noise exceeds 85 dB</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image94.png" alt="Hearing Protectors" style="max-width:100%;"></figure>
<figure><img src="https://pamel.edu.pa/uploads/mc/image95.png" alt="Fitting Hearing Protection" style="max-width:100%;"></figure>

<h2>8. Disease Prevention</h2>
<h3>8.1 Disinfection, Disinfestation, and Derating</h3>
<p>Environmental hygiene on board is the collective responsibility of all crew members.</p>
<p><strong>Chain of Infection:</strong></p>
<ul>
<li>Source of infection → Means of transmission → Susceptible host</li>
<li>Breaking any link prevents disease spread</li>
</ul>
<p><strong>Disinfection:</strong></p>
<ul>
<li>Use 1/5000 bleach solution for surfaces and clothing</li>
<li>Methods: immersion, lotion/wetting, spraying, fumigation</li>
<li>Disinfect fecal waste, sputum, and skin secretions according to route of germ elimination</li>
</ul>
<p><strong>Disinfestation (Insect Control):</strong></p>
<ul>
<li>Lice: weekly insecticide shampoo/lotion (lindane, malathion) — treat all contacts</li>
<li>Mosquitoes: drain stagnant water; spray insecticides on ceilings and bulkheads; use repellent and bed nets</li>
<li>Cockroaches: lacquer insecticide in corners, sinks, lockers</li>
<li>Fleas: treat animals and premises</li>
</ul>
<p><strong>Derating (Rodent Control):</strong></p>
<ul>
<li>Rats carry disease and contaminate food supplies</li>
<li>Store food in sealed containers; keep bilges and holds clean</li>
<li>Set traps and use rodenticides under international health regulations</li>
</ul>

<h3>8.2 Vaccinations</h3>
<p>Vaccination is a critical preventive measure for seafarers visiting endemic disease areas.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image96.png" alt="Vaccination Schedule" style="max-width:100%;"></figure>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%;">
<thead>
<tr style="background-color:#f0f0f0;"><th>Vaccine</th><th>Schedule</th><th>Duration</th><th>Notes</th></tr>
</thead>
<tbody>
<tr><td>Tetanus</td><td>3 doses; booster every 10 years</td><td>10 years</td><td>Recommended for all seafarers</td></tr>
<tr><td>Yellow Fever</td><td>1 dose</td><td>1-3 years</td><td>Mandatory for all</td></tr>
<tr><td>Hepatitis A</td><td>2-3 doses; 1 month apart</td><td>~10 years</td><td>Recommended for travel to developing countries</td></tr>
<tr><td>Hepatitis B</td><td>3 doses</td><td>Long-term</td><td>Recommended for extended stays</td></tr>
<tr><td>Typhoid</td><td>Oral or injectable</td><td>1-3 years</td><td>Travel to endemic areas</td></tr>
<tr><td>Malaria</td><td>Prophylaxis (not vaccination)</td><td>While at risk</td><td>Chloroquine or alternatives depending on region</td></tr>
<tr><td>Influenza</td><td>Annual</td><td>1 year</td><td>Especially in tropics year-round; N. hemisphere Nov-Feb</td></tr>
<tr><td>Rabies</td><td>3 doses pre-exposure</td><td>2-3 years</td><td>High-risk professions</td></tr>
</tbody>
</table>', 'text', 5, 420, 1),

(171, 'Medical Records, Medicines, Sterilization, and Emergency Coordination', '<h2>9. Keeping Medical Records</h2>
<h3>9.1 Clinical History on Board</h3>
<p>Accurate medical records are essential for continuity of care, radio medical consultations, and medicolegal purposes.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image97.png" alt="Clinical History Form" style="max-width:100%;"></figure>
<p><strong>Components of a Complete Clinical History:</strong></p>
<ul>
<li><strong>Demographics:</strong> Name, date and place of birth, position on board</li>
<li><strong>Chief Complaint:</strong> Main symptom in the patient\'s own words</li>
<li><strong>History of Present Illness:</strong> Onset, duration, character, location, radiation, aggravating/relieving factors</li>
<li><strong>Past Medical History:</strong> Previous illnesses, surgeries, hospitalizations</li>
<li><strong>Known Allergies:</strong> Medications, foods, environmental</li>
<li><strong>Current Medications:</strong> Name, dose, frequency, indication</li>
<li><strong>Social History:</strong> Alcohol, tobacco, drug use</li>
</ul>
<p><strong>Vital Signs to Record:</strong></p>
<ul>
<li>Temperature, pulse rate and rhythm, respiratory rate, blood pressure</li>
<li>Oxygen saturation if available</li>
<li>Level of consciousness (GCS or AVPU)</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image98.jpeg" alt="Medical Records System" style="max-width:100%;"></figure>
<p><strong>Accident Documentation:</strong></p>
<ul>
<li>How and where the accident occurred; date and time</li>
<li>Body part affected and type of injury</li>
<li>Accompanying symptoms: pain, loss of consciousness, breathing difficulty</li>
<li>Treatment given and response</li>
</ul>

<h2>10. Medicines and Medical Equipment</h2>
<h3>10.1 Inventory Control of Medicines</h3>
<p>The ship\'s medicine chest is the responsibility of the captain. Maintaining an accurate inventory and replacing expired or depleted medicines is mandatory.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image100.png" alt="Medicine Chest" style="max-width:100%;"></figure>
<p><strong>Medicine Chest Contents — Main Categories:</strong></p>
<ul>
<li><strong>Analgesics/Antipyretics:</strong> Paracetamol, ibuprofen (anti-inflammatory)</li>
<li><strong>Antibiotics:</strong> Amoxicillin, tetracycline (for infections)</li>
<li><strong>Antiemetics:</strong> Metoclopramide (for vomiting and nausea)</li>
<li><strong>Antidiarrheals:</strong> Loperamide</li>
<li><strong>Antihistamines:</strong> Chlorphenamine (allergies, seasickness)</li>
<li><strong>Glucocorticoids:</strong> Dexamethasone injection (for anaphylaxis, severe asthma)</li>
<li><strong>Antiseptics:</strong> Povidone-iodine solution and cream</li>
<li><strong>Eye/Ear Drops:</strong> Decongestant and antibiotic formulations</li>
<li><strong>Antifungals:</strong> Clotrimazole cream for skin/nail fungal infections</li>
<li><strong>Anticinetótics:</strong> Scopolamine patch, dimenhydrinate (for seasickness)</li>
</ul>
<figure><img src="https://pamel.edu.pa/uploads/mc/image101.png" alt="Medicine Categories" style="max-width:100%;"></figure>
<p><strong>General Medical Equipment:</strong></p>
<ul>
<li>Digital thermometer, blood pressure cuff, stethoscope</li>
<li>Disposable syringes and needles; IV access equipment</li>
<li>Sterile gloves (latex/nitrile), sterile dressings and bandages</li>
<li>Cervical collar; vacuum splints; stretcher</li>
<li>Oxygen cylinder with mask (if available)</li>
<li>Urinary catheter and drainage bag</li>
<li>Guedel airway (oral airway adjunct)</li>
<li>Resuscitation face mask</li>
</ul>
<p><strong>Pharmacokinetics — Dosing Principles:</strong></p>
<ul>
<li>Therapeutic index = ratio of toxic plasma concentration to minimum effective concentration</li>
<li>High therapeutic index: safer drugs (e.g., amoxicillin)</li>
<li>Low therapeutic index: narrow safety margin — requires careful dosing (e.g., digoxin)</li>
<li>Always follow prescribed dosage and intervals to maintain effective blood levels</li>
<li>Adjust dose for renal impairment — many drugs excreted by kidneys</li>
</ul>
<p><strong>Medicine Storage and Disposal:</strong></p>
<ul>
<li>Store in cool, dry, dark place — not in bathroom (humidity degrades medicines)</li>
<li>Keep in original containers with legible labels</li>
<li>Check expiry dates regularly; replace immediately on expiry</li>
<li>Do NOT share prescriptions between crew members</li>
<li>Dispose of expired medicines according to regulations: mix with undesirable substance; seal in bag; do NOT flush at sea</li>
</ul>

<h2>11. Sterilization of Surgical Equipment</h2>
<h3>11.1 Physical Methods</h3>
<p>Sterilization destroys all microorganisms including spores. Correct technique is critical to prevent post-procedural infection.</p>
<p><strong>Steam Sterilization (Autoclave):</strong></p>
<ul>
<li>Temperature: 121°C at 15 psi pressure for 15 minutes</li>
<li>Suitable for: surgical instruments, dressings, rubber, aqueous solutions, stainless steel</li>
<li>NOT suitable for: oils, powders, heat-sensitive materials</li>
<li>Advantages: rapid, no toxic residue, kills spores</li>
</ul>
<p><strong>Dry Heat Sterilization (Oven):</strong></p>
<ul>
<li>Temperature: 160-170°C for 2 hours (or 140°C for 5 hours)</li>
<li>Suitable for: glass, oils, powders, petroleum jelly, chrome surgical instruments</li>
<li>NOT suitable for: rubber, textiles, synthetic materials</li>
</ul>

<h3>11.2 Chemical Methods of Disinfection</h3>
<p>Chemical disinfectants are used for surfaces and instruments that cannot tolerate heat.</p>
<p><strong>Categories of Chemical Disinfectants:</strong></p>
<ul>
<li><strong>Alcohols:</strong> 70% ethyl or isopropyl alcohol — rapid action on surfaces and skin</li>
<li><strong>Chlorine compounds:</strong> Bleach (sodium hypochlorite) — general surface disinfection</li>
<li><strong>Iodine:</strong> Povidone-iodine — wound antisepsis</li>
<li><strong>Phenols:</strong> Carbolic acid derivatives — general disinfectants</li>
<li><strong>Hydrogen Peroxide:</strong> Oxidizing agent — wound irrigation and surface disinfection</li>
<li><strong>Formaldehyde:</strong> Gas/solution — high-level disinfection of equipment</li>
</ul>

<h3>11.3 Surgical Instruments</h3>
<p>Knowledge of surgical instruments enables their correct use and sterilization on board.</p>
<ul>
<li><strong>Cutting instruments:</strong> Scalpel (sizes 10, 11, 15), surgical scissors (Mayo and Metzenbaum)</li>
<li><strong>Hemostatic clamps:</strong> Kelly and Crile clamps, Kocher forceps</li>
<li><strong>Tissue forceps:</strong> Anatomical (smooth) and surgical (toothed) — choose appropriate type for tissue</li>
<li><strong>Needle holders:</strong> Mayo-Hegar — most common; hold needle at 2/3 from eye</li>
<li><strong>Retractors:</strong> Manual (Farabeuf, Deaver) and self-retaining (Balfour) — to expose surgical field</li>
<li><strong>Probes and curettes:</strong> For exploring fistulas and removing tissue</li>
</ul>

<h2>12. Coordination of Medical Assistance</h2>
<h3>12.1 Radio Medical Assistance</h3>
<p>The Global Maritime Distress and Safety System (GMDSS) provides access to emergency and medical support worldwide.</p>
<p><strong>Distress Call Procedure (MAYDAY):</strong></p>
<ol>
<li>Activate DSC (Digital Selective Call) distress button on radio</li>
<li>On VHF Channel 16 or 2182 kHz (MF), transmit: "MAYDAY, MAYDAY, MAYDAY"</li>
<li>Identify vessel: "This is [vessel name]" (repeat 3 times)</li>
<li>State position (latitude and longitude or bearing/distance from known point)</li>
<li>State nature of emergency: "REQUIRE IMMEDIATE ASSISTANCE DUE TO [cause]"</li>
<li>State number of persons on board</li>
<li>Activate EPIRB (Emergency Position Indicating Radio Beacon)</li>
</ol>
<p><strong>Urgency Call (PAN-PAN) for Medical Assistance:</strong></p>
<ul>
<li>Use when situation is serious but not immediately life-threatening</li>
<li>Prefix: "PAN-PAN, PAN-PAN, PAN-PAN" on Channel 16</li>
<li>Describe medical situation and request radio medical advice</li>
</ul>
<p><strong>Radio Medical Consultation:</strong></p>
<ul>
<li>Prepare patient information before calling: demographics, vital signs, symptoms, history</li>
<li>Have medications available for reference</li>
<li>Write down instructions received; read back to confirm</li>
<li>Maintain communication schedule as instructed</li>
</ul>

<h3>12.2 Transport of the Sick and Injured</h3>
<p>Patient transport at sea involves unique challenges related to space constraints, motion, and the effects of altitude if air evacuation is required.</p>
<figure><img src="https://pamel.edu.pa/uploads/mc/image102.png" alt="Stretcher Use" style="max-width:100%;"></figure>
<p><strong>Stretcher/Backboard Use:</strong></p>
<ul>
<li>Rigid backboard (spinal board): for suspected spinal injuries — lightweight, radiolucent, washable</li>
<li>Vacuum mattress: conforms to body shape; provides excellent immobilization; can be used as stretcher in narrow spaces</li>
<li>Carry patient horizontal; minimum 4 rescuers for stair descents</li>
</ul>
<p><strong>Helicopter Evacuation (MEDEVAC):</strong></p>
<ul>
<li>Follow all instructions from helicopter crew</li>
<li>Clear all loose equipment from the deck</li>
<li>Orient ship so wind is 30° to port bow; hoisting area normally on weather side</li>
<li>Allow wire to ground before grabbing (static electricity discharge)</li>
<li>Do NOT attach winch line to any part of the vessel</li>
<li>Rescue swimmer assumes command of hoisting operations</li>
</ul>
<p><strong>Air Transport Considerations:</strong></p>
<ul>
<li>Altitude increases hypoxia — use supplemental oxygen</li>
<li>Gas expansion at altitude: watch pneumothorax, ileus, sinusitis, IV glass containers</li>
<li>Pneumatic splints and ETT cuffs increase pressure with altitude — monitor and adjust</li>
</ul>

<h3>12.3 Cooperation with Port Health Authorities</h3>
<ul>
<li>Notify port health authority of any serious illness or death before arrival</li>
<li>Prepare Maritime Health Declaration for vessels arriving internationally</li>
<li>Cooperate with port health inspection if required</li>
<li>Facilitate transfer of sick crew to ambulance or medical facility at dock</li>
<li>Provide complete medical records and history to receiving medical team</li>
</ul>', 'text', 6, 450, 1);

-- Insert quiz
INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (171, 'Medical Care — Final Assessment', 'This assessment evaluates your understanding of the Medical Care (MC) course, covering casualty care, diseases, nursing, environmental health, pharmacology, sterilization, and emergency coordination as required by STCW Regulation VI/4.', 70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'When a patient has a suspected cervical spine injury after trauma, what is the correct initial action?', 1, 1, 1, NOW()),
(@qid, 'What is the correct classification for a burn that destroys all skin layers and underlying tissue, appears leathery and dry, and is painless due to nerve damage?', 1, 1, 2, NOW()),
(@qid, 'Which principle describes the four-step approach to treating sprains, strains, and contusions?', 1, 1, 3, NOW()),
(@qid, 'What is the correct adult CPR compression-to-ventilation ratio according to ERC guidelines?', 1, 1, 4, NOW()),
(@qid, 'A wound showing increased redness, swelling, warmth, and purulent discharge 48 hours after injury is most likely showing signs of:', 1, 1, 5, NOW()),
(@qid, 'In the management of acute abdominal conditions at sea, what is the FIRST priority while arranging radio medical advice?', 1, 1, 6, NOW()),
(@qid, 'What is the normal adult respiratory rate?', 1, 1, 7, NOW()),
(@qid, 'Which suture material is classified as absorbable and used for closing deep tissue layers?', 1, 1, 8, NOW()),
(@qid, 'What is the correct immediate first aid for a chemical eye burn?', 1, 1, 9, NOW()),
(@qid, 'Which infectious disease is caused by the Plasmodium parasite and transmitted by Anopheles mosquito bites?', 1, 1, 10, NOW()),
(@qid, 'A patient rescued from cold water has a core body temperature of 30°C, muscle rigidity, and bradycardia. This indicates:', 1, 1, 11, NOW()),
(@qid, 'What temperature should the cold store be maintained at for body preservation at sea?', 1, 1, 12, NOW()),
(@qid, 'Which vaccine is described in the MC manual as mandatory for all seafarers?', 1, 1, 13, NOW()),
(@qid, 'In autoclave sterilization, what is the standard temperature and minimum time for effective sterilization?', 1, 1, 14, NOW()),
(@qid, 'What radio channel and signal should be used for a maritime distress call?', 1, 1, 15, NOW()),
(@qid, 'What is the therapeutic index in pharmacology?', 1, 1, 16, NOW()),
(@qid, 'Which technique is used to safely move a patient with a suspected spinal injury?', 1, 1, 17, NOW()),
(@qid, 'What is the FAST acronym used to recognize a stroke?', 1, 1, 18, NOW()),
(@qid, 'When should a tourniquet be applied for bleeding control?', 1, 1, 19, NOW()),
(@qid, 'In helicopter evacuation (MEDEVAC), what must be done with the winch wire BEFORE handling it?', 1, 1, 20, NOW());

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
(@q1, 'Place the patient in the recovery position immediately', 0, 1),
(@q1, 'Apply a rigid cervical collar and immobilize on a spinal board using log-roll technique', 1, 2),
(@q1, 'Help the patient sit upright to improve airway', 0, 3),
(@q1, 'Flex the neck forward to open the airway', 0, 4),

(@q2, 'First-degree (superficial) burn', 0, 1),
(@q2, 'Second-degree (partial thickness) burn', 0, 2),
(@q2, 'Third-degree (full thickness) burn', 1, 3),
(@q2, 'Chemical burn', 0, 4),

(@q3, 'SAMPLE — Symptoms, Allergies, Medications, Past history, Last meal, Events', 0, 1),
(@q3, 'RICE — Rest, Ice, Compression, Elevation', 1, 2),
(@q3, 'AVPU — Alert, Voice, Pain, Unresponsive', 0, 3),
(@q3, 'FAST — Face, Arm, Speech, Time', 0, 4),

(@q4, '15:2', 0, 1),
(@q4, '5:1', 0, 2),
(@q4, '30:2', 1, 3),
(@q4, '20:2', 0, 4),

(@q5, 'Normal wound healing', 0, 1),
(@q5, 'Wound infection', 1, 2),
(@q5, 'Allergic reaction to dressing', 0, 3),
(@q5, 'Hematoma formation', 0, 4),

(@q6, 'Withhold oral food and fluids (NPO) and monitor vital signs', 1, 1),
(@q6, 'Give oral fluids to prevent dehydration', 0, 2),
(@q6, 'Administer maximum dose analgesics immediately', 0, 3),
(@q6, 'Apply heat pad to the abdomen', 0, 4),

(@q7, '5-8 breaths per minute', 0, 1),
(@q7, '12-20 breaths per minute', 1, 2),
(@q7, '25-30 breaths per minute', 0, 3),
(@q7, '35-40 breaths per minute', 0, 4),

(@q8, 'Nylon monofilament', 0, 1),
(@q8, 'Absorbable multifilament (Vicryl/Dexon)', 1, 2),
(@q8, 'Stainless steel wire', 0, 3),
(@q8, 'Polypropylene suture', 0, 4),

(@q9, 'Neutralize with an opposite chemical (acid for alkali)', 0, 1),
(@q9, 'Irrigate immediately with copious water for at least 15-20 minutes', 1, 2),
(@q9, 'Apply antibiotic eye drops and patch the eye', 0, 3),
(@q9, 'Rub the eye gently to remove the chemical', 0, 4),

(@q10, 'Cholera', 0, 1),
(@q10, 'Typhoid fever', 0, 2),
(@q10, 'Malaria', 1, 3),
(@q10, 'Yellow fever', 0, 4),

(@q11, 'Mild hypothermia (32-35°C)', 0, 1),
(@q11, 'Moderate hypothermia (28-32°C)', 1, 2),
(@q11, 'Severe hypothermia (below 28°C)', 0, 3),
(@q11, 'Normal physiological response to cold water', 0, 4),

(@q12, '0-2°C (freezing point)', 0, 1),
(@q12, '4-8°C (refrigeration temperature)', 1, 2),
(@q12, '10-15°C (cool room temperature)', 0, 3),
(@q12, '-5°C (sub-zero)', 0, 4),

(@q13, 'Hepatitis A', 0, 1),
(@q13, 'Yellow fever', 1, 2),
(@q13, 'Cholera', 0, 3),
(@q13, 'Japanese encephalitis', 0, 4),

(@q14, '100°C for 30 minutes', 0, 1),
(@q14, '121°C for at least 15 minutes at 15 psi', 1, 2),
(@q14, '160°C for 1 hour', 0, 3),
(@q14, '80°C for 20 minutes', 0, 4),

(@q15, 'VHF Channel 22 — "SECURITE, SECURITE, SECURITE"', 0, 1),
(@q15, 'VHF Channel 16 — "MAYDAY, MAYDAY, MAYDAY"', 1, 2),
(@q15, 'VHF Channel 70 — "PAN-PAN, PAN-PAN, PAN-PAN"', 0, 3),
(@q15, 'VHF Channel 14 — "BRAVO, BRAVO, BRAVO"', 0, 4),

(@q16, 'The speed at which a drug is absorbed into the bloodstream', 0, 1),
(@q16, 'The ratio of the toxic plasma concentration to the minimum effective concentration', 1, 2),
(@q16, 'The half-life of a medication in the body', 0, 3),
(@q16, 'The time required to reach peak drug effect', 0, 4),

(@q17, 'Drag the patient by the legs to a safe area', 0, 1),
(@q17, 'Log-roll with a minimum of 3 rescuers maintaining spinal alignment', 1, 2),
(@q17, 'Lift by the arms and legs simultaneously to reduce bending', 0, 3),
(@q17, 'Place in the recovery position before moving', 0, 4),

(@q18, 'Face symmetry, Airway patency, Skin color, Temperature', 0, 1),
(@q18, 'Face drooping, Arm weakness, Speech difficulty, Time to call', 1, 2),
(@q18, 'Fever, Altered consciousness, Stiff neck, Tachycardia', 0, 3),
(@q18, 'Fast breathing, Altered consciousness, Sweating, Tremors', 0, 4),

(@q19, 'For any wound showing active bleeding', 0, 1),
(@q19, 'Only as a last resort for life-threatening limb hemorrhage not controlled by direct pressure', 1, 2),
(@q19, 'Whenever a fracture is suspected in a limb', 0, 3),
(@q19, 'For all venous bleeding as a first step', 0, 4),

(@q20, 'Use gloves to grip it firmly and pull quickly', 0, 1),
(@q20, 'Allow the wire to touch the sea or deck to discharge static electricity before handling', 1, 2),
(@q20, 'Attach it to the vessel to stabilize it during hoisting', 0, 3),
(@q20, 'Wrap it in an insulating cloth before touching', 0, 4);
