-- Elementary First Aid (EFA) — course_id = 161
-- Source: PAM-MAE-EFA-09.docx
-- STCW Regulation VI/1, Section A-VI/1 and Table A-VI/1-3

UPDATE lms_courses SET
  course_code     = 'EFA',
  title           = 'Elementary First Aid',
  status          = 'published',
  category_id     = 6,
  image           = 'https://pamel.edu.pa/uploads/efa/image1.jpeg',
  level           = 'beginner',
  pass_percentage = 70,
  description     = 'This course provides the mandatory minimum standards of competence for Elementary First Aid in accordance with Regulation VI/1, Section A-VI/1 and Table A-VI/1-3 of the STCW Code. Topics include general principles of first aid, body structure and human anatomy, casualty assessment and positioning, airway management, CPR, bleeding control, shock treatment, burns and electrical injuries, rescue and transport of casualties, and common medical problems during navigation. The course is delivered over 17 contact hours (9 theoretical + 6 practical workshops + 2 exam).'
WHERE id = 161;

-- Clear existing content
DELETE FROM lms_question_options WHERE question_id IN (
  SELECT id FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 161
  )
);
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id = 161);
DELETE FROM lms_quizzes WHERE course_id = 161;
DELETE FROM lms_lessons WHERE course_id = 161;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active) VALUES

(161, 'General Principles and Body Structure',
'<div>
<img src="https://pamel.edu.pa/uploads/efa/image1.jpeg" alt="Elementary First Aid" style="max-width:100%;margin-bottom:16px;"/>
<h2>General Principles of First Aid</h2>
<p>First aid consists of simple, urgent medical procedures applied to victims of accidents or sudden illnesses to save lives, typically performed by non-medical personnel. Its purpose is to alleviate pain and anxiety and to prevent the worsening of the victim\'s condition until medical help arrives.</p>
<p>It is crucial for all crew members to be trained in first aid, as the absence of timely care can reduce survival chances by <strong>30% to 50%</strong>. Ships must have the necessary material and logistical resources to adequately handle medical emergencies.</p>
<img src="https://pamel.edu.pa/uploads/efa/image2.png" alt="First Aid Kit" style="max-width:100%;margin:16px 0;"/>
<p>A first aid kit is mandatory on board and must suit the type of journey. Maintaining up-to-date medical records for everyone on board is essential — these should include personal data such as blood type, allergies, and medical history.</p>

<h3>Objectives of First Aid</h3>
<ul>
  <li><strong>Preserve life.</strong></li>
  <li><strong>Limb and functionality salvage.</strong></li>
  <li><strong>Avoid physical and psychological complications.</strong></li>
  <li><strong>Ensure transfer of the injured to a hospital.</strong></li>
</ul>

<h3>Procedure to Provide First Aid</h3>
<ol>
  <li>Create space around the injured to allow adequate air.</li>
  <li>Ask witnesses if they have first aid knowledge.</li>
  <li>Attend immediately in order of priority: life signal absent → profuse bleeding → serious burns → fractures → minor injuries.</li>
  <li>Once first aid is rendered, transport the injured to the nearest health center if necessary.</li>
</ol>

<h3>Key Principles for the Responder</h3>
<ul>
  <li><strong>Seek consent and communicate clearly:</strong> Always ask permission to help. Speak slowly to persons who may be hearing impaired.</li>
  <li><strong>Remain calm:</strong> Your composure reassures the injured and prevents panic.</li>
  <li><strong>Never leave the victim alone</strong> unless absolutely necessary to call for help.</li>
  <li><strong>Do not administer medications</strong> or liquids to an injured person. No alcoholic beverages.</li>
  <li><strong>Do not move the injured</strong> unless a fracture has been immobilized first, or there is imminent danger.</li>
</ul>

<h2>Body Structure and Functions of the Human Body</h2>
<p>Treatment of disease aboard ships requires knowledge of the anatomy and physiology of the human body. The human body has three main parts: Head, Trunk, and Limbs.</p>

<h3>The Skeletal System</h3>
<img src="https://pamel.edu.pa/uploads/efa/image7.png" alt="Skeletal System" style="max-width:100%;margin:16px 0;"/>
<p>The skeleton is composed of approximately <strong>200 bones</strong> divided into head, trunk, and extremities. Bones support and protect muscles and internal organs such as the brain, heart, and lungs.</p>
<ul>
  <li><strong>Head:</strong> Skull bones and facial bones protect the brain.</li>
  <li><strong>Trunk:</strong> Rib cage (protects lungs and heart), spine, and pelvis.</li>
  <li><strong>Upper extremities:</strong> Shoulder, arm, forearm, and hand bones.</li>
  <li><strong>Lower extremities:</strong> Thigh, leg, and foot bones.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/efa/image8.jpeg" alt="Head Skeleton" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image9.jpeg" alt="Joints" style="max-width:100%;margin:16px 0;"/>

<h3>Joints, Muscles and Tendons</h3>
<p>The musculoskeletal system consists of bones, muscles, tendons, and ligaments working together to enable movement.</p>
<ul>
  <li><strong>Movable Joints (ball-and-socket):</strong> Hip and shoulder — allow free movement in all directions.</li>
  <li><strong>Hinge Joints:</strong> Elbows, knees, fingers — movement in one direction only.</li>
  <li><strong>Pivot Joints:</strong> Neck vertebrae — allow rotation.</li>
  <li><strong>Sliding Joints:</strong> Wrist and ankle — slight sliding movement.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/efa/image11.jpeg" alt="Muscles" style="max-width:100%;margin:16px 0;"/>
<p>There are three types of muscle:</p>
<ul>
  <li><strong>Skeletal (voluntary):</strong> Allow conscious movement; enable sitting, standing, and running.</li>
  <li><strong>Smooth (involuntary):</strong> Control blood circulation and digestion automatically.</li>
  <li><strong>Cardiac:</strong> Specialized muscle that forms the heart; continuously beats and pumps blood.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/efa/image12.jpeg" alt="Tendons" style="max-width:100%;margin:16px 0;"/>
<p><strong>Tendons</strong> connect muscles to bones. <strong>Ligaments</strong> connect adjacent bones at joints, enabling movement while restricting anatomically abnormal directions to prevent injury.</p>
<img src="https://pamel.edu.pa/uploads/efa/image13.jpeg" alt="Ligament" style="max-width:100%;margin:16px 0;"/>

<h3>Main Organs</h3>
<h4>The Heart</h4>
<img src="https://pamel.edu.pa/uploads/efa/image14.png" alt="Heart and Circulatory System" style="max-width:100%;margin:16px 0;"/>
<p>The heart has four chambers: two upper (atria) and two lower (ventricles). The atria fill with blood and pass it to the ventricles, which pump blood out of the heart. A resting heart rate is approximately <strong>70 beats per minute</strong>, with the complete circulation cycle taking about 60 seconds.</p>
<ul>
  <li><strong>Arteries:</strong> Carry oxygenated blood away from the heart.</li>
  <li><strong>Veins:</strong> Carry deoxygenated blood back to the heart.</li>
  <li><strong>Right side:</strong> Receives blood from the body and sends it to the lungs.</li>
  <li><strong>Left side:</strong> Receives blood from the lungs and pumps it to the rest of the body.</li>
</ul>

<h4>The Lungs</h4>
<img src="https://pamel.edu.pa/uploads/efa/image15.png" alt="Human Lungs" style="max-width:100%;margin:16px 0;"/>
<p>The lungs are responsible for gas exchange — blood receives oxygen and expels carbon dioxide through the alveoli. The right lung has three lobes; the left has two. Each lung weighs about 800 grams.</p>

<h4>The Brain</h4>
<img src="https://pamel.edu.pa/uploads/efa/image16.jpeg" alt="Human Brain" style="max-width:100%;margin:16px 0;"/>
<p>The brain is the central organ directing all body functions, weighing approximately 1,200 grams and divided into two hemispheres. <strong>Brain cells can suffer irreversible damage after just 3 minutes without oxygen</strong> — this makes rapid CPR response critical in cardiac or respiratory emergencies.</p>
</div>',
'text', 1, 180, 1),

(161, 'Casualty Assessment, Airway Management and CPR',
'<div>
<h2>Positioning of the Casualty</h2>
<img src="https://pamel.edu.pa/uploads/efa/image17.jpeg" alt="Casualty Positioning" style="max-width:100%;margin:16px 0;"/>
<p>Proper casualty positioning minimizes further harm and supports effective treatment. When performing a general assessment:</p>
<ul>
  <li>Avoid unnecessary movement — <strong>DO NOT MOVE</strong> unless there is imminent danger.</li>
  <li>If the victim is conscious, ask them to move each limb to assess sensitivity and mobility.</li>
  <li>Place the victim in a sideways (recovery) position to prevent accumulation of secretions or airway obstruction.</li>
  <li>Cover the injured to maintain body temperature.</li>
  <li>Provide emotional support and reassurance.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/efa/image3.png" alt="Emergency Assessment" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image4.png" alt="Checking Victim" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image5.png" alt="Recovery Position" style="max-width:100%;margin:16px 0;"/>

<h2>The Unconscious Casualty</h2>
<img src="https://pamel.edu.pa/uploads/efa/image18.jpeg" alt="Unconscious Casualty" style="max-width:100%;margin:16px 0;"/>
<p>Unconsciousness is when a person is unable to respond to people and activities. Any sudden change in mental status must be treated as a medical emergency. Being asleep is NOT the same as being unconscious — a sleeping person responds to gentle shaking; an unconscious person will not.</p>

<h3>Common Causes</h3>
<ul>
  <li>Nearly any major illness or injury, drug and alcohol use.</li>
  <li>Brief unconsciousness (fainting): dehydration, low blood sugar, temporary hypotension.</li>
  <li>Other causes: straining during defecation, coughing very hard, hyperventilating.</li>
</ul>

<h3>First Aid for the Unconscious</h3>
<ul>
  <li><strong>Check airway and breathing</strong> frequently. Perform CPR or rescue breaths if necessary.</li>
  <li>If no spinal injury suspected: lay face up, gently tilt head back to open airway.</li>
  <li>If spinal injury suspected: keep in position and roll to the side only if they vomit.</li>
  <li>Keep the person warm until medical help arrives.</li>
</ul>

<h3>What NOT to Do</h3>
<ul>
  <li>DO NOT give food or drink to an unconscious person.</li>
  <li>DO NOT leave the person alone.</li>
  <li>DO NOT place a pillow under the head.</li>
  <li>DO NOT splash water on the face to try to revive.</li>
</ul>

<h2>Airway Obstruction — Heimlich Maneuver</h2>
<img src="https://pamel.edu.pa/uploads/efa/image19.png" alt="Airway Obstruction" style="max-width:100%;margin:16px 0;"/>
<p>The most effective mechanism to expel a foreign body is coughing. If the victim breathes, encourage coughing. If coughing is ineffective, weak, or the victim loses consciousness, proceed as follows:</p>

<h4>If the Victim is Conscious</h4>
<ol>
  <li>Encourage coughing. If the foreign body is not expelled, perform the Heimlich maneuver.</li>
  <li>Stand behind the victim and pass arms under armpits, surrounding the thorax.</li>
  <li>Place hands on the abdomen and make <strong>5 upward and backward thrusts</strong>.</li>
  <li>Repeat until the foreign body is expelled.</li>
</ol>

<h4>If the Victim is Unconscious</h4>
<ol>
  <li>Examine the mouth and remove any accessible foreign body.</li>
  <li>Open the airway and check for respiration.</li>
  <li>If not breathing, give <strong>5 rescue breaths</strong>.</li>
  <li>If the thorax does not move, perform 5 abdominal thrusts (Heimlich).</li>
  <li>Repeat the entire sequence until the obstruction is fully removed.</li>
</ol>
<p><strong>Never</strong> blindly extract or manually remove the foreign object. If the victim is coughing, do NOT give back blows.</p>

<h2>Resuscitation Procedures — CPR</h2>
<img src="https://pamel.edu.pa/uploads/efa/image20.jpeg" alt="CPR Step 1" style="max-width:100%;margin:16px 0;"/>
<p>Cardiopulmonary Resuscitation (CPR) keeps someone alive until emergency assistance arrives. Brain cells suffer irreversible damage after <strong>3 minutes without oxygen</strong>. Properly performed CPR significantly improves recovery outcomes.</p>

<h3>CPR Steps</h3>
<ol>
  <li><strong>Call for emergency help.</strong></li>
  <li><strong>Check responsiveness:</strong> Speak to or gently shake the victim.</li>
  <li><strong>Open the airway:</strong> Tilt the head back and clear any obstructions.</li>
  <li><strong>Breathing check:</strong> Look for chest rise, listen for breath sounds.</li>
  <li><strong>If breathing:</strong> Place in recovery position.</li>
  <li><strong>If not breathing:</strong> Begin artificial respiration (mouth-to-mouth or mouth-to-nose).</li>
  <li><strong>Chest compressions:</strong> Compress the sternum at <strong>100–120 per minute</strong>. Give <strong>30 compressions</strong> followed by 2 rescue breaths.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/efa/image21.jpeg" alt="CPR Step 2" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image22.jpeg" alt="CPR Step 3" style="max-width:100%;margin:16px 0;"/>

<h3>Respiratory vs Cardiac Arrest</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Condition</th><th>Common Causes</th></tr>
  <tr><td><strong>Respiratory Arrest</strong></td><td>Drowning, severe asthma attacks, airway obstructions</td></tr>
  <tr><td><strong>Cardiac Arrest</strong></td><td>Heart attack, severe arrhythmias (often preceded by chest pain or shortness of breath)</td></tr>
</table>
<p>Note: Respiratory arrest can lead to cardiac arrest and vice versa — both require immediate CPR response.</p>
</div>',
'text', 2, 180, 1),

(161, 'Bleeding, Shock, Burns and Electrical Injuries',
'<div>
<h2>Bleeding</h2>
<h3>Types of Bleeding</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Type</th><th>Characteristics</th><th>Control</th></tr>
  <tr><td><strong>Arterial</strong></td><td>Bright red, spurting blood; most difficult to control</td><td>Arterial compression point; direct pressure; elevation</td></tr>
  <tr><td><strong>Venous</strong></td><td>Darker blood, flows steadily; easier to control</td><td>Direct pressure and elevation</td></tr>
  <tr><td><strong>Capillary</strong></td><td>Oozing blood; minor injuries</td><td>Clean pressure; usually self-sealing</td></tr>
</table>

<h3>Actions for External Bleeding</h3>
<ol>
  <li><strong>Apply direct pressure</strong> with a clean cloth or gauze over the wound.</li>
  <li><strong>Elevate the injured area</strong> above the level of the heart.</li>
  <li>If bleeding persists, apply arterial compression at the appropriate pressure point.</li>
  <li>Do not remove gauze once applied — add more on top if soaked through.</li>
</ol>

<h3>Internal Bleeding</h3>
<ul>
  <li>Seek immediate medical attention.</li>
  <li>Position the victim lying down with legs elevated.</li>
  <li>Monitor consciousness and breathing continuously.</li>
</ul>

<h2>Management of Shock</h2>
<img src="https://pamel.edu.pa/uploads/efa/image23.png" alt="Shock Management" style="max-width:100%;margin:16px 0;"/>
<p>Shock is a life-threatening condition where the body cannot maintain sufficient blood flow to vital organs.</p>

<h3>Causes</h3>
<p>Blood loss, severe trauma, severe allergic reactions (anaphylaxis), heart attack, severe infection.</p>

<h3>Symptoms</h3>
<ul>
  <li>Decreased or altered consciousness</li>
  <li>Rapid, weak pulse (tachycardia)</li>
  <li>Cold and clammy skin</li>
  <li>Pale or grayish skin color</li>
  <li>Rapid, shallow breathing</li>
</ul>

<h3>Actions for Shock</h3>
<ol>
  <li>Call for emergency help immediately.</li>
  <li>Keep the victim calm and warm.</li>
  <li><strong>Position: lying flat with legs elevated approximately 50 cm</strong>.</li>
  <li>Monitor consciousness and breathing.</li>
  <li>Do not give food or liquids.</li>
</ol>
<img src="https://pamel.edu.pa/uploads/efa/image24.png" alt="Allergic Shock" style="max-width:100%;margin:16px 0;"/>
<p>In case of severe allergic reaction (anaphylaxis): flushed and blotchy skin, swelling of the tongue and throat. Administer adrenaline if available, lay in a position facilitating breathing, and monitor until medical professionals arrive.</p>

<h2>Burns, Scalds and Electrical Injuries</h2>
<h3>Classification of Burns</h3>
<img src="https://pamel.edu.pa/uploads/efa/image25.jpeg" alt="Burns Classification" style="max-width:100%;margin:16px 0;"/>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Degree</th><th>Layers Affected</th><th>Symptoms</th></tr>
  <tr><td><strong>1st Degree</strong></td><td>Epidermis (surface layer only)</td><td>Redness, severe pain, no lasting damage</td></tr>
  <tr><td><strong>2nd Degree</strong></td><td>Epidermis and part of dermis</td><td>Swelling, blistering, severe pain</td></tr>
  <tr><td><strong>3rd Degree</strong></td><td>All layers of skin</td><td>Dry, white, or charred appearance; <strong>no pain</strong> due to nerve damage</td></tr>
</table>

<h3>First Aid for Burns</h3>
<ol>
  <li><strong>Stop the burning process — remove the cause</strong> without forgetting your own safety.</li>
  <li>Lay the affected area lower than the body.</li>
  <li>Evaluate and maintain vital signs.</li>
  <li>Search for other injuries (bleeding, shock, fractures).</li>
  <li>Soak clothing with abundant clean water before undressing the affected area.</li>
  <li>Wrap burns in clean gauze moistened with water. The bandage should be loose.</li>
  <li>Seek medical attention for 2nd and 3rd degree burns.</li>
</ol>

<h3>What NOT to Do for Burns</h3>
<ul>
  <li>Do NOT apply ointments, creams, or break blisters.</li>
  <li>Do NOT cool the burn excessively.</li>
  <li>Do NOT leave the victim alone.</li>
  <li>Do NOT delay medical transport for severe or extensive burns.</li>
</ul>

<h3>Electrical Injuries</h3>
<ol>
  <li><strong>Ensure power is turned off before approaching the victim.</strong></li>
  <li>Use insulating materials to separate the victim from the source if power cannot be shut off.</li>
  <li>Perform CPR if necessary after ensuring safety.</li>
</ol>

<h3>Temperature-Related Conditions</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Condition</th><th>Definition</th><th>Treatment</th></tr>
  <tr><td><strong>Hypothermia</strong></td><td>Body temperature drops below 35°C</td><td>Clear airway, insulate, warm gradually, seek medical help</td></tr>
  <tr><td><strong>Frostbite</strong></td><td>Affects extremities: numbness, color changes</td><td>Remove jewelry, warm gradually, avoid rubbing</td></tr>
  <tr><td><strong>Heat Exhaustion</strong></td><td>Water and salt loss; confusion, pale skin</td><td>Move to cool area, hydrate, seek medical advice</td></tr>
  <tr><td><strong>Heat Stroke</strong></td><td>Body cannot cool down; hot dry skin, confusion</td><td>Move to cool place, cool with wet sheets, call emergency help</td></tr>
</table>

<h3>Scalds</h3>
<p>Caused by wet heat (boiling liquids or steam). Treatment is similar to burns — cool with water, apply clean gauze, and seek medical advice for serious scalds.</p>
</div>',
'text', 3, 180, 1),

(161, 'Rescue and Transport of Casualty',
'<div>
<h2>Rescue and Transport of Casualty</h2>
<p><strong>Minimize Movement:</strong> Unnecessary movement of injured or seriously ill victims can worsen injuries. Move a casualty <strong>only if there is imminent danger</strong> (e.g., fire, building collapse). Prioritize the safety of both the victim and rescuer.</p>

<h3>Single-Rescuer Methods</h3>
<h4>Drag Method (up to 10 meters, on smooth surfaces)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image27.jpeg" alt="Drag Method" style="max-width:100%;margin:16px 0;"/>
<p>Suitable for removing a victim from danger when alone. Do NOT use on uneven surfaces (stones, glass, stairs).</p>
<ul>
  <li><strong>Pulling by ankles:</strong> Grasp both ankles and the edge of the pants. Use your legs for movement, keeping your back straight.</li>
  <li><strong>Pulling by shoulders:</strong> Grab the victim\'s clothing below the shoulders and crouch to pull.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/efa/image28.jpeg" alt="Drag by Ankles" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image29.jpeg" alt="Pull Shoulders" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image30.jpeg" alt="Hold Head Method" style="max-width:100%;margin:16px 0;"/>

<h4>Moving with a Blanket (short to medium distances)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image31.jpeg" alt="Blanket Method 1" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image32.jpeg" alt="Blanket Method 2" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image33.jpeg" alt="Blanket Method 3" style="max-width:100%;margin:16px 0;"/>
<ol>
  <li>Place a blanket on the floor as close to the victim as possible.</li>
  <li>Roll or lift the victim toward the blanket carefully, keeping head and neck aligned.</li>
  <li>Position the victim\'s head about 2 feet (61 cm) from the corner of the blanket.</li>
  <li>Fold both corners around the head and pull, keeping your back straight.</li>
</ol>

<h4>Lifting a Person (for any distance, one rescuer)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image34.jpeg" alt="Lifting" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image35.jpeg" alt="Walking with Victim" style="max-width:100%;margin:16px 0;"/>
<p>Place one arm around the victim\'s back and the other under their knees. Lift using your legs. Have the victim place one arm around your shoulders while walking, if possible.</p>

<h4>Firefighter Carry (long distances)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image36.jpeg" alt="Firefighter Carry 1" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image37.jpeg" alt="Firefighter Carry 2" style="max-width:100%;margin:16px 0;"/>
<ol>
  <li>Crouch and put one arm of the victim over your shoulder.</li>
  <li>Pass your arm around the victim\'s legs and take the other arm.</li>
  <li>Raise the person using your legs and move to safety.</li>
</ol>
<p><strong>Note:</strong> The rescuer must be very strong for this method. Not advisable for victims with spinal injuries.</p>

<h4>Loaded Backpack Carry (medium to long distances)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image38.jpeg" alt="Backpack Method 1" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image39.jpeg" alt="Backpack Method 2" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image40.jpeg" alt="Backpack Method 3" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image41.jpeg" alt="Backpack Method 4" style="max-width:100%;margin:16px 0;"/>
<ol>
  <li>Crouch in front of the victim and put both arms over your shoulders.</li>
  <li>Cross the victim\'s arms and hold opposite wrists (left wrist with right hand, vice versa).</li>
  <li>Keep victim\'s arms close to your chest and squat slightly.</li>
  <li>Move hips toward the victim while leaning slightly forward, balancing weight on your hips.</li>
</ol>

<h3>Two or More Rescuers</h3>
<h4>The Human Crutch</h4>
<img src="https://pamel.edu.pa/uploads/efa/image43.jpeg" alt="Human Crutch 1" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image44.jpeg" alt="Human Crutch 2" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image45.jpeg" alt="Human Crutch 3" style="max-width:100%;margin:16px 0;"/>
<p>Stand beside the victim, facing each other. Pick up the victim\'s wrist with the hand nearest the victim\'s feet. Help the victim to their feet, placing their arm around your shoulders. Put your other hand on the victim\'s waist and establish a walking pace.</p>

<h4>Four-Hand Chair Carry (alert victims only)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image49.jpeg" alt="Chair Four Hands" style="max-width:100%;margin:16px 0;"/>
<p>Stand facing your partner. Grasp your own right wrist with your left hand, then grasp your partner\'s left wrist with your right hand — creating an interlocked knot seat. Both rescuers bend knees so the victim can sit, then stand up together, keeping backs straight. The victim may place arms around rescuers\' shoulders for balance.</p>

<h4>Two-Hand Chair Carry (for longer distances or unconscious victims)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image52.jpeg" alt="Two-Hand Chair Carry" style="max-width:100%;margin:16px 0;"/>
<p>Kneel on either side of the victim. One arm goes around the shoulders, the other under the knees. Hold partner\'s wrists tightly together. Rise slowly using leg strength and walk in a coordinated direction.</p>

<h4>Using a Chair (for narrow spaces)</h4>
<img src="https://pamel.edu.pa/uploads/efa/image56.jpeg" alt="Chair Method" style="max-width:100%;margin:16px 0;"/>
<p>Seat the victim in a sturdy chair. Secure unconscious victims to the back of the chair with a blanket. Tilt the chair back on its rear legs and walk through the narrow space.</p>

<h4>Improvised Stretcher</h4>
<img src="https://pamel.edu.pa/uploads/efa/image57.jpeg" alt="Improvised Stretcher 1" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image58.jpeg" alt="Improvised Stretcher 2" style="max-width:100%;margin:16px 0;"/>
<img src="https://pamel.edu.pa/uploads/efa/image60.jpeg" alt="Improvised Stretcher 3" style="max-width:100%;margin:16px 0;"/>
<ol>
  <li>Place two sturdy poles (or hard wood) on the ground.</li>
  <li>Lay a blanket or canvas on the floor and fold it over the poles.</li>
  <li>Place the victim on the stretcher and raise from both ends simultaneously.</li>
</ol>

<h3>Bandages</h3>
<p>Bandages are applied to cover skin lesions and immobilize injuries. Applications include: limiting movement, fixing casts, applying compression, and promoting venous return.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Type</th><th>Use</th></tr>
  <tr><td>Soft / containing</td><td>Hold dressings in place</td></tr>
  <tr><td>Compression</td><td>Promote venous return, reduce swelling</td></tr>
  <tr><td>Rigid</td><td>Complete immobilization of fractures</td></tr>
  <tr><td>Elastic adhesive</td><td>Joint support; not for direct skin use</td></tr>
</table>
</div>',
'text', 4, 180, 1),

(161, 'Common Medical Problems and First Aid Kit',
'<div>
<h2>Common Medical Problems During Navigation</h2>
<p>Medical problems during navigation vary in severity. Training in first aid and CPR is essential for long trips, along with maintaining communication with a doctor and preventing health issues proactively.</p>

<h3>Simple and Common Problems</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Problem</th><th>Symptoms</th><th>First Aid</th></tr>
  <tr><td><strong>Dizziness / Seasickness</strong></td><td>Loss of balance, nausea, loss of strength</td><td>Breathe deeply, look at the horizon. If severe: lie down with eyes closed. Marine Dramamine® every 8–12 hours.</td></tr>
  <tr><td><strong>Diarrhea</strong></td><td>Frequent watery stools</td><td>Hydration: abundant liquids (tea, broth, water). Suprasec® if necessary.</td></tr>
  <tr><td><strong>Dehydration</strong></td><td>Cramps, dizziness, headache, nausea, tachycardia, intense thirst</td><td>Move to shade. Oral rehydration salts (WHO), juices, mineral water, water with salt and sugar.</td></tr>
  <tr><td><strong>Heat Stroke / Insolation</strong></td><td>Loss of power, cramps, dizziness, headache, nausea, tachycardia</td><td>Cool head, place cold water bags in armpits, moisturize.</td></tr>
  <tr><td><strong>Hypotension</strong></td><td>Dizziness, nausea, pallor, possible loss of consciousness</td><td>Lay on back (dorsal decubitus) and elevate legs 50 cm. This often restores blood pressure very quickly.</td></tr>
  <tr><td><strong>Fever</strong></td><td>Elevated body temperature</td><td>Aspirin, Paracetamol, or Ibuprofen — 1 tablet every 6–8 hours.</td></tr>
  <tr><td><strong>Sunburn (mild)</strong></td><td>Mild skin redness</td><td>Cool skin, analgesic. Cover with protective cream. Do NOT open blisters. Prevention: light clothing, hat, SPF 60 sunscreen.</td></tr>
  <tr><td><strong>Nosebleed (epistaxis)</strong></td><td>Bleeding from nose</td><td>Compress nose for several minutes. If persistent, place gauze inside nasal cavity with forceps.</td></tr>
  <tr><td><strong>Sprains</strong></td><td>Joint pain, swelling, hematoma</td><td>Anti-inflammatories, immobilization bandage.</td></tr>
  <tr><td><strong>Foreign body in eye</strong></td><td>Pain, severe lacrimation</td><td>Wash with cold water profusely. Gently try to remove with corner of clean cloth. Apply eye drops. Patch the eye with gauze and tape.</td></tr>
  <tr><td><strong>Small burns / scalds</strong></td><td>Redness, blisters, pain</td><td>Refresh skin, analgesics. Cover with Furacina gauze or antiseptic dressing.</td></tr>
</table>

<h3>Severe and Rare Problems</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Problem</th><th>Symptoms</th><th>First Aid / Action</th></tr>
  <tr><td><strong>Cardiac Arrest</strong></td><td>Sudden loss of consciousness, no pulse</td><td>Cardiopulmonary resuscitation (CPR). Evacuation.</td></tr>
  <tr><td><strong>Stroke</strong></td><td>Loss of consciousness, slurred speech, movement disorders one side, mouth deviation</td><td>Maintain open airway. Do NOT give food or liquids. Evacuation.</td></tr>
  <tr><td><strong>Fractures (closed)</strong></td><td>Pain, loss of alignment, functional impotence</td><td>Analgesics. Stabilize with a splint bound above and below fracture. Evacuation.</td></tr>
  <tr><td><strong>Open Fractures</strong></td><td>Wound with bone exposure</td><td>Antisepsis and sterile wound dressing. Splint. Analgesics. Evacuation.</td></tr>
  <tr><td><strong>Drowning</strong></td><td>Unconsciousness, bluish skin, respiratory and/or cardiac arrest</td><td>Evacuate airway. If no breathing or pulse: CPR immediately.</td></tr>
  <tr><td><strong>Hypothermia</strong></td><td>Slow pulse, very cold skin, purplish skin and lips</td><td>Shelter without undressing; hot drinks; warm water bottle in armpits; change wet clothing gradually.</td></tr>
  <tr><td><strong>Severe bleeding</strong></td><td>Pulsatile jet bleeding</td><td>Compress with gauze and tight bandage (hemostasis). Evacuation. Use latex gloves.</td></tr>
  <tr><td><strong>Extensive burns</strong></td><td>Burned area larger than 5 times hand area, or deep burns</td><td>Hydration. Cover with Furacina dressings and bandages. Evacuation.</td></tr>
</table>

<h3>Chronic Illnesses That May Be Exacerbated</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Condition</th><th>Symptoms</th><th>Action</th></tr>
  <tr><td><strong>Hypertension</strong></td><td>Headache, dizziness; BP above 160/100</td><td>Specific medication. Salt-free diet. Monitor frequently on long journeys.</td></tr>
  <tr><td><strong>Acute Asthma</strong></td><td>Difficulty breathing</td><td>Bronchodilators (aerosol), IM corticosteroids.</td></tr>
  <tr><td><strong>Hypoglycemia (diabetics)</strong></td><td>Dizziness and fainting</td><td>Provide sugary foods with carbohydrates.</td></tr>
  <tr><td><strong>Seizures</strong></td><td>Loss of consciousness, seizures</td><td>Keep airway open. Evacuation.</td></tr>
</table>

<h2>The First Aid Kit</h2>
<h3>Basic Kit</h3>
<p><strong>Medications:</strong> Anti-spasmodics, anti-diarrhoeals, pain relievers/fever reducers (Aspirin, Paracetamol), anti-inflammatories, anti-allergics (tablet and injectable), anti-nausea, seasickness tablets, eye drops, burn cream.</p>
<p><strong>Equipment:</strong> Sterile gauze (5, 7, 10 cm bandages), elastic bandages, adhesive dressings, antiseptic (hydrogen peroxide, Pervinox®), latex gloves (sterile and non-sterile), scalpel blade, scissors, splints (various sizes), thermometer, Philadelphia collar.</p>

<h3>Advanced Kit (adds to basic)</h3>
<p>Injectable analgesics and antispasmodics, antibiotics, syringes and needles, sphygmomanometer and stethoscope, suture instruments (forceps, needle holders, suture thread, local anesthetic), IV serums and hydration guides, Ambu resuscitation mask, oropharyngeal cannula, oxygen mask, pneumatic splints.</p>

<h3>Specific Kit</h3>
<p>Medications for crew members with chronic diseases (diabetes, hypertension, arrhythmias, coronary disease, epilepsy, asthma) as directed by their physician.</p>

<h3>Important Reminders</h3>
<ul>
  <li>Check medication expiration dates periodically and replace outdated items.</li>
  <li>Administer the correct dose per posology guides.</li>
  <li>Quantity of each item depends on voyage length and number of crew.</li>
  <li><strong>Always use latex gloves</strong> (biosafety) to avoid bloodborne disease transmission.</li>
</ul>

<h2>Evacuation of the Sick</h2>
<p>Evacuation depends on urgency, crew skills, distance to port, and available transport. Coordinate with a port health physician. Categories:</p>
<ul>
  <li><strong>Simple:</strong> Easily manageable onboard.</li>
  <li><strong>Serious:</strong> Require hospital care — evacuate promptly.</li>
  <li><strong>Chronic:</strong> May vary based on the condition and medications available.</li>
</ul>
</div>',
'text', 5, 180, 1);

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (161, 'Elementary First Aid — Final Assessment',
'Comprehensive evaluation covering general first aid principles, human anatomy, casualty assessment, CPR, bleeding and shock management, burns, rescue techniques, and common onboard medical problems. Minimum passing score: 70%.',
70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, points, order_num, created_at) VALUES
(@qid, 'What is the primary purpose of first aid?', 'multiple_choice', 1, 1, NOW()),
(@qid, 'After how many minutes without oxygen can brain cells suffer irreversible damage?', 'multiple_choice', 1, 2, NOW()),
(@qid, 'What is the correct rate for chest compressions during adult CPR?', 'multiple_choice', 1, 3, NOW()),
(@qid, 'Which type of bleeding is characterized by bright red spurting blood and is the most difficult to control?', 'multiple_choice', 1, 4, NOW()),
(@qid, 'What is the FIRST step when approaching a victim of an electrical shock?', 'multiple_choice', 1, 5, NOW()),
(@qid, 'Which burn degree affects all layers of the skin and causes no pain due to nerve damage?', 'multiple_choice', 1, 6, NOW()),
(@qid, 'What position should a conscious victim in shock be placed in?', 'multiple_choice', 1, 7, NOW()),
(@qid, 'The Heimlich maneuver is used to:', 'multiple_choice', 1, 8, NOW()),
(@qid, 'Which of the following should NOT be done for a burn victim?', 'multiple_choice', 1, 9, NOW()),
(@qid, 'How many chambers does the human heart have?', 'multiple_choice', 1, 10, NOW()),
(@qid, 'What is the recommended method to check if an unconscious person is breathing?', 'multiple_choice', 1, 11, NOW()),
(@qid, 'Which are the correct symptoms of shock?', 'multiple_choice', 1, 12, NOW()),
(@qid, 'Which type of muscle controls involuntary functions such as digestion and blood circulation?', 'multiple_choice', 1, 13, NOW()),
(@qid, 'When is it appropriate to move an injured person at the scene of an accident?', 'multiple_choice', 1, 14, NOW()),
(@qid, 'What is the correct first aid action for external bleeding?', 'multiple_choice', 1, 15, NOW()),
(@qid, 'Hypothermia is defined as body temperature dropping below:', 'multiple_choice', 1, 16, NOW()),
(@qid, 'During CPR, rescue breaths are given after every set of how many chest compressions?', 'multiple_choice', 1, 17, NOW()),
(@qid, 'Which of the following is a symptom of heat stroke?', 'multiple_choice', 1, 18, NOW()),
(@qid, 'What should an unconscious person NEVER be given?', 'multiple_choice', 1, 19, NOW()),
(@qid, 'According to STCW, the Elementary First Aid course is governed by which Regulation and Table?', 'multiple_choice', 1, 20, NOW());

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
(@q1, 'To replace the need for professional medical care', 0, 1),
(@q1, 'To save life, alleviate pain, and prevent the worsening of the victim\'s condition until medical help arrives', 1, 2),
(@q1, 'To diagnose illnesses and prescribe medications onboard', 0, 3),
(@q1, 'To perform surgical procedures when a doctor is unavailable', 0, 4),

(@q2, '1 minute', 0, 1),
(@q2, '3 minutes', 1, 2),
(@q2, '5 minutes', 0, 3),
(@q2, '10 minutes', 0, 4),

(@q3, '60–80 compressions per minute', 0, 1),
(@q3, '80–100 compressions per minute', 0, 2),
(@q3, '100–120 compressions per minute', 1, 3),
(@q3, '120–140 compressions per minute', 0, 4),

(@q4, 'Venous bleeding', 0, 1),
(@q4, 'Capillary bleeding', 0, 2),
(@q4, 'Arterial bleeding', 1, 3),
(@q4, 'Internal bleeding', 0, 4),

(@q5, 'Begin CPR immediately without delay', 0, 1),
(@q5, 'Ensure the power source has been turned off before approaching the victim', 1, 2),
(@q5, 'Move the victim away from the source with your bare hands', 0, 3),
(@q5, 'Call for help and then touch the victim to assess consciousness', 0, 4),

(@q6, 'First-degree burn', 0, 1),
(@q6, 'Second-degree burn', 0, 2),
(@q6, 'Third-degree burn', 1, 3),
(@q6, 'Chemical burn', 0, 4),

(@q7, 'Sitting upright with legs dangling', 0, 1),
(@q7, 'Lying flat with legs elevated approximately 50 cm', 1, 2),
(@q7, 'Recovery position on their side', 0, 3),
(@q7, 'Face down with head turned to one side', 0, 4),

(@q8, 'Stop arterial bleeding at a pressure point', 0, 1),
(@q8, 'Restore a heartbeat after cardiac arrest', 0, 2),
(@q8, 'Expel a foreign body obstructing the airway', 1, 3),
(@q8, 'Treat electrical shock by separating victim from the source', 0, 4),

(@q9, 'Apply clean gauze moistened with water', 0, 1),
(@q9, 'Apply ointments or creams to the burned area', 1, 2),
(@q9, 'Remove the victim from the source of heat', 0, 3),
(@q9, 'Evaluate for other injuries such as bleeding or shock', 0, 4),

(@q10, 'Two chambers', 0, 1),
(@q10, 'Three chambers', 0, 2),
(@q10, 'Four chambers', 1, 3),
(@q10, 'Five chambers', 0, 4),

(@q11, 'Check for eye movement and pupil response', 0, 1),
(@q11, 'Look for chest rise, listen for breath sounds', 1, 2),
(@q11, 'Feel for pulse at the wrist only', 0, 3),
(@q11, 'Observe skin color changes only', 0, 4),

(@q12, 'High blood pressure and strong pulse', 0, 1),
(@q12, 'Fever, redness, and warm skin', 0, 2),
(@q12, 'Decreased consciousness, tachycardia, cold and clammy skin, weak pulse', 1, 3),
(@q12, 'Severe joint pain and muscle spasms', 0, 4),

(@q13, 'Skeletal muscle', 0, 1),
(@q13, 'Smooth muscle', 1, 2),
(@q13, 'Cardiac muscle', 0, 3),
(@q13, 'Voluntary muscle', 0, 4),

(@q14, 'Always, to make the victim more comfortable', 0, 1),
(@q14, 'Only when there is imminent danger such as fire or building collapse', 1, 2),
(@q14, 'Whenever the victim requests to be moved', 0, 3),
(@q14, 'Every time CPR needs to be performed', 0, 4),

(@q15, 'Remove any foreign object, then apply pressure and cover', 0, 1),
(@q15, 'Apply direct pressure and elevate the injured area above the level of the heart', 1, 2),
(@q15, 'Apply a tourniquet immediately above the wound in all cases', 0, 3),
(@q15, 'Apply cold water and wait for medical help without touching', 0, 4),

(@q16, 'Below 37°C', 0, 1),
(@q16, 'Below 36°C', 0, 2),
(@q16, 'Below 35°C', 1, 3),
(@q16, 'Below 34°C', 0, 4),

(@q17, '10 compressions', 0, 1),
(@q17, '15 compressions', 0, 2),
(@q17, '30 compressions', 1, 3),
(@q17, '50 compressions', 0, 4),

(@q18, 'Pale, cool, and moist skin with shivering', 0, 1),
(@q18, 'Hot, dry skin and confusion', 1, 2),
(@q18, 'Shivering and very slow pulse', 0, 3),
(@q18, 'Blue lips and unconsciousness due to cold', 0, 4),

(@q19, 'First aid treatment and wound dressing', 0, 1),
(@q19, 'Food or drink of any kind', 1, 2),
(@q19, 'Placement on a firm, flat surface', 0, 3),
(@q19, 'Warmth with a blanket', 0, 4),

(@q20, 'Regulation II/1 and Table A-II/1-3', 0, 1),
(@q20, 'Regulation VI/1 and Table A-VI/1-3', 1, 2),
(@q20, 'Regulation V/1 and Table A-V/1-3', 0, 3),
(@q20, 'Regulation IV/2 and Table A-IV/2-3', 0, 4);

-- Verify
SELECT 'Lessons' AS item, COUNT(*) AS total FROM lms_lessons WHERE course_id = 161
UNION ALL
SELECT 'Quiz', COUNT(*) FROM lms_quizzes WHERE course_id = 161
UNION ALL
SELECT 'Questions', COUNT(*) FROM lms_questions WHERE quiz_id = @qid
UNION ALL
SELECT 'Options', COUNT(*) FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id = @qid);
