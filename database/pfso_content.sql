-- PFSO Course Content — Course ID=8, Port Facility Security Officer
-- ISPS Code Prescriptions 2.1.8 and 11, Part A
-- Run against: cms_db2

USE cms_db2;

-- Update course code
UPDATE lms_courses SET course_code = 'PFSO' WHERE id = 8;

-- Delete existing lessons and quizzes
DELETE FROM lms_lesson_progress WHERE lesson_id IN (
    SELECT id FROM lms_lessons WHERE course_id = 8
);
DELETE FROM lms_lessons WHERE course_id = 8;

DELETE FROM lms_quiz_answers WHERE attempt_id IN (
    SELECT id FROM lms_quiz_attempts WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 8
    )
);
DELETE FROM lms_quiz_attempts WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 8
);
DELETE FROM lms_question_options WHERE question_id IN (
    SELECT id FROM lms_questions WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 8
    )
);
DELETE FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 8
);
DELETE FROM lms_quizzes WHERE course_id = 8;

-- ─── Lessons ─────────────────────────────────────────────────────────────────

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active, created_at) VALUES
(8, '1. Introduction', '<img src="/uploads/pfso/image1.jpeg" alt="Port Facility Security Officer" style="max-width:100%;margin-bottom:1.5rem;">
<h2>1. Introduction</h2>
<p>Shipping routes are the primary arteries of the global economy. Over 80% of all goods are transported by water. With this in mind, it is imperative to identify risk-relevant developments at an early stage and raise security awareness in this industry.</p>

<h3>1.1 Course Overview</h3>
<p>This course provides participants with the knowledge, understanding, and proficiencies required by the ISPS Code to undertake the tasks, duties, and responsibilities of a Port Facility Security Officer (PFSO). Practical case studies, exercises, and videos illustrate measures to comply with maritime security requirements. Achievement of competencies is assessed by a final exam.</p>

<h3>1.2 Competencies to Be Achieved</h3>
<p>Every person designated as a Port Facility Security Officer (PFSO) should be able to demonstrate competence to:</p>
<ul>
  <li>Develop, maintain, and supervise the implementation of a Port Facility Security Plan.</li>
  <li>Ensure security equipment and systems, if any, are properly operated.</li>
  <li>Assess security risk, threat, and vulnerability.</li>
  <li>Ensure appropriate security measures are implemented and maintained.</li>
  <li>Encourage security awareness and vigilance.</li>
</ul>

<h3>1.3 Historical Perspective</h3>
<p>The biggest challenge facing the world today is fighting terrorism. Historical attacks relevant to maritime security include:</p>
<ul>
  <li>The Achille Lauro hijacking in 1985.</li>
  <li>Pan Am Flight 103 bombing in 1988.</li>
  <li>The Mumbai bomb blasts of 1993.</li>
  <li>The hijackings of the M.T. Petro Ranger in 1998 and M.V. Alondra Rainbow in 1999.</li>
  <li>The bomb attack on the USS Cole in 2000.</li>
  <li>The explosion of the Limburg in 2002.</li>
  <li>The September 11, 2001 attacks on the World Trade Center and Pentagon.</li>
</ul>
<p>Although maritime terrorist attacks remain relatively rare (approximately 1.9% of all international incidents over the last 30 years), incidents are rising. In response, the IMO under the SOLAS Convention Chapter XI-2 developed the International Ship and Port Facility Security (ISPS) Code, implemented on July 1, 2004.</p>
<p>The ISPS Code applies to ships engaged in international voyages including passenger ships and cargo ships of 500 GT and above.</p>

<h3>1.4 Current Security Threats and Patterns</h3>
<p>Contemporary maritime security threats include:</p>
<ul>
  <li><strong>Piracy in the Horn of Africa and Indian Ocean:</strong> Heavily armed mother ships carry smaller high-speed pirate boats. Pirates have upgraded their weaponry and ransom demands regularly exceed USD 5 million.</li>
  <li><strong>Kidnapping in the Gulf of Guinea:</strong> Nigeria accounts for the highest recorded levels of maritime crime, with kidnap-for-ransom as the primary criminal model.</li>
  <li><strong>Abu Sayyaf Group (Philippines):</strong> Islamist extremist group shifted from onshore to offshore abductions of crew from commercial vessels in the Sulu and Celebes Seas.</li>
  <li><strong>Maritime Terrorism in the Middle East:</strong> Houthi militants in Yemen have attacked naval and commercial vessels using vessel-borne improvised explosive devices (VBIEDs) in the Red Sea/Bab-el-Mandeb region.</li>
  <li><strong>Anchorage Crime:</strong> Theft from anchored vessels continues at ports in Nigeria, Congo, Ghana, Guinea, Indonesia, and Peru.</li>
</ul>
<p>Terrorism involves violence or threats of violence by extremist groups seeking political objectives by non-democratic means, increasingly by suicidal extremist religious sects.</p>

<h3>1.5 Port and Ship Operations Conditions</h3>
<p>Port activities include vessel operation, cargo handling, storage, warehousing, and transportation infrastructure. Dock workers face stressful conditions including shift work, noise, vibrations, dust, and physical labor risks. Port security must be integrated into national transportation planning from the earliest design phases.</p>
<p>The goal of port security is to establish an environment where trade is conducted free from criminal exploitation. Security operations must be proactive—deterring, preventing, detecting, and reducing criminal activity through intelligence coordination with law enforcement agencies.</p>', 'text', 1, 90, 1, NOW()),

(8, '2. Maritime Security Policy', '<h2>2. Maritime Security Policy</h2>
<p>This chapter covers the international framework, government legislation, key definitions, and the legal implications governing port facility security.</p>

<h3>2.1 International Framework</h3>
<ul>
  <li><strong>UN Resolutions:</strong> Crucial for combating piracy. Resolution 1851 allows land-based actions (e.g., Operation Atalanta by the EU).</li>
  <li><strong>IMO, WFP, UNODC Anti-Piracy Operation (2011):</strong> Addresses root causes through political, security, and socio-economic measures.</li>
  <li><strong>Djibouti Code of Conduct (2009):</strong> Signed by 18 riparian states to fight piracy through improved coordination, information exchange, legal and technical training, and strengthening national legal systems.</li>
</ul>

<h3>2.2 Relevant Government Legislation and Regulations</h3>
<ul>
  <li><strong>IMO Resolutions:</strong> Various resolutions since 1983 to prevent piracy and unlawful acts against ships and passengers (e.g., A.545(13), A.584(14), MSC/Circ.443).</li>
  <li><strong>SUA Convention (1988):</strong> The Convention for the Suppression of Unlawful Acts against the Safety of Maritime Navigation obliges governments to extradite or prosecute offenders for ship seizure, violence on board, or placing destructive devices.</li>
  <li><strong>Post-9/11 SOLAS Amendments (effective July 1, 2004):</strong>
    <ul>
      <li>Chapter V: Automated Identification System (AIS).</li>
      <li>Chapter XI-1: Ship Identification Number and Continuous Synopsis Record (CSR).</li>
      <li>Chapter XI-2: Measures to enhance maritime security and the ISPS Code.</li>
    </ul>
  </li>
  <li><strong>ISPS Code:</strong> Part A is mandatory; Part B provides guidance for compliance. Implemented through the IMO Diplomatic Conference of December 2002.</li>
</ul>

<h3>2.3 Maritime Transportation Security Act of 2002 (MTSA) — United States</h3>
<p>The U.S. implementation of the ISPS Code, effective July 1, 2004. Key features include:</p>
<ul>
  <li>Vulnerability assessments and security plans for vessels and port facilities.</li>
  <li>Area Maritime Security Committees for coordination.</li>
  <li>Transportation Security Cards and enhanced seafarer identification.</li>
  <li>Electronic shipment data requirements and professional training standards.</li>
  <li>Extended seaward jurisdiction, U.S. Coast Guard Sea Marshall program.</li>
</ul>

<h3>2.4 Customs-Trade Partnership Against Terrorism (C-TPAT)</h3>
<p>A voluntary public-private partnership by U.S. Customs and Border Protection (CBP) to strengthen international supply chains and border security. Members agree to protect the supply chain, identify security gaps, and implement security measures. Benefits include:</p>
<ul>
  <li>Reduced CBP examinations and faster inspections.</li>
  <li>Access to FAST Lanes.</li>
  <li>Recognition as a trusted trade partner.</li>
</ul>

<h3>2.5 Container Security Initiative (CSI)</h3>
<p>Developed by U.S. Customs Service after 9/11 to address the threat of terrorist use of maritime containers. Core elements:</p>
<ul>
  <li>Identifying high-risk containers using automated targeting tools.</li>
  <li>Pre-screening and evaluating containers at foreign ports before shipment to the U.S.</li>
  <li>Using technology (X-ray, gamma ray, radiation detection) for rapid screening.</li>
  <li>Operational in 58 ports globally, pre-screening over 80% of maritime containerized cargo imported into the U.S.</li>
</ul>

<h3>2.6 Key Definitions</h3>
<p>Trainees need a working knowledge of terms from SOLAS Chapter XI-2 Regulation 1 and ISPS Code Part A Section 2, with emphasis on distinguishing roles such as Ship Security Officer (SSO) and Port Facility Security Officer (PFSO).</p>

<h3>2.7 Legal Implications</h3>
<p>Security personnel actions — or inactions — carry legal implications that vary by jurisdiction and require continuous monitoring of local and international developments. Certain security information is sensitive, and its classification level can change with security levels 1, 2, and 3. Personnel must appreciate the risk of security leaks through improper communication.</p>', 'text', 2, 90, 1, NOW()),

(8, '3. Security Responsibilities', '<h2>3. Security Responsibilities</h2>
<p>This chapter provides a clear picture of the IMO maritime security system and how various entities work together.</p>

<h3>3.1 Contracting Governments</h3>
<p>Contracting Governments bear roles and obligations under SOLAS Chapters XI-1 and XI-2, including port state control. They are responsible for setting and communicating security levels, and for approving Port Facility Security Plans and Assessments.</p>

<h3>3.2 Recognized Security Organizations (RSOs)</h3>
<p>An RSO may undertake security activities on behalf of a Contracting Government, including conducting Port Facility Security Assessments. Understanding when and how an RSO is authorized to act is particularly important for PFSOs.</p>

<h3>3.3 The Company</h3>
<p>Defined by SOLAS Chapter XI-1, the company has numerous obligations under Chapter XI-2 and the ISPS Code, including designating a Company Security Officer (CSO) and ensuring the Ship Security Plan is implemented.</p>

<h3>3.4 The Ship</h3>
<p>Ships engaged in international voyages must comply with SOLAS Chapter XI and the ISPS Code with respect to persons, activities, plans, and documentation, including maintaining an International Ship Security Certificate (ISSC).</p>

<h3>3.5 The Port Facility</h3>
<p>Defined in SOLAS Chapter XI-2 Regulation 1 as the location of the ship/port interface. Port facilities have numerous assigned duties and activities under the ISPS Code, all coordinated through the Port Facility Security Officer.</p>

<h3>3.6 Personnel Roles and Responsibilities</h3>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr>
      <th>Role</th>
      <th>Key Responsibilities</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Ship Security Officer (SSO)</strong></td>
      <td>Implements and maintains the Ship Security Plan; reports to the CSO; liaises with the PFSO.</td>
    </tr>
    <tr>
      <td><strong>Company Security Officer (CSO)</strong></td>
      <td>Ensures Ship Security Assessments and Plans are prepared, submitted, and maintained; sets security levels in liaison with government.</td>
    </tr>
    <tr>
      <td><strong>Port Facility Security Officer (PFSO)</strong></td>
      <td>Develops, implements, and maintains the Port Facility Security Plan; conducts regular security inspections; liaises with SSOs and CSOs.</td>
    </tr>
    <tr>
      <td><strong>Shipboard Personnel with Security Duties</strong></td>
      <td>Trained and certified to perform specific security tasks defined in the Ship Security Plan.</td>
    </tr>
    <tr>
      <td><strong>Port Facility Personnel with Security Duties</strong></td>
      <td>Trained to perform specific security tasks defined in the Port Facility Security Plan.</td>
    </tr>
  </tbody>
</table>
<p>Each role has defined authority, responsibilities, and training requirements as set out in the ISPS Code and STCW Convention.</p>', 'text', 3, 120, 1, NOW()),

(8, '4. Port Facility Security Assessment and On-Site Inspections', '<h2>4. Port Facility Security Assessment and On-Site Inspections</h2>

<h3>4.1 Risk Assessment Methodology</h3>
<p>A Port Facility Security Assessment is an essential part of developing and updating the Port Facility Security Plan. Risk-based decision-making is crucial for assessing security conditions and determining appropriate measures.</p>
<p>The assessment is a systematic process to evaluate the likelihood of a security breach and identify actions to reduce vulnerability and mitigate consequences. Guidance is found in ISPS Code Part B and USCG NVIC 10-02.</p>

<h3>4.2 Security Assessment Process</h3>
<p>The assessment identifies weaknesses in:</p>
<ul>
  <li>Physical structures and infrastructure.</li>
  <li>Personnel protection systems.</li>
  <li>Operational processes and procedures.</li>
</ul>
<p>For each identified weakness, mitigation options are proposed and evaluated.</p>

<h3>4.3 Evaluation Tools</h3>
<p>Systematic approaches to evaluating security conditions include checklists covering:</p>
<ul>
  <li>General layout of the port facility and interface areas.</li>
  <li>Location and control of restricted access areas.</li>
  <li>Access points, gates, and perimeter security.</li>
  <li>Emergency equipment locations and availability.</li>
  <li>Personnel strength, reliability, and assigned security duties.</li>
  <li>Existing security and safety equipment.</li>
  <li>Agreements with private security companies.</li>
  <li>Protective measures: inspection, control, monitoring, identification, access control, and surveillance.</li>
</ul>

<h3>4.4 On-Site Security Surveys</h3>
<p>On-site surveys are an integral part of any Port Facility Security Assessment. Their functions include:</p>
<ul>
  <li>Identifying existing security measures, procedures, and operations.</li>
  <li>Evaluating key operations to protect.</li>
  <li>Identifying threats and their likelihood to prioritize security measures.</li>
  <li>Identifying weaknesses (including human factors) in infrastructure, policies, and procedures.</li>
</ul>
<p>Evaluation focus areas include:</p>
<ul>
  <li>Performing all port facility security duties.</li>
  <li>Monitoring restricted areas.</li>
  <li>Controlling access to the facility and identification systems.</li>
  <li>Monitoring dock areas and vessel interfaces.</li>
  <li>Controlling embarkation of persons and their effects.</li>
  <li>Supervising cargo handling and ship''s stores delivery.</li>
  <li>Ensuring availability of security communications, information, and equipment.</li>
</ul>

<h3>4.5 Security Assessment Documentation</h3>
<p>The Port Facility Security Assessment must be documented, reviewed, accepted, and retained by the port facility. A report summarizing:</p>
<ul>
  <li>The assessment findings.</li>
  <li>Identified vulnerabilities.</li>
  <li>Proposed countermeasures.</li>
</ul>
<p>This report must be protected from unauthorized access or disclosure.</p>', 'text', 4, 120, 1, NOW()),

(8, '5. Security Equipment', '<h2>5. Security Equipment</h2>
<img src="/uploads/pfso/image2.png" alt="Security Equipment" style="max-width:200px;margin:0.5rem 0 1rem 0;">

<h3>5.1 Security Equipment and Systems</h3>
<p>PFSOs should be aware of equipment useful for enhancing maritime security both ashore and afloat. Key examples include:</p>
<ul>
  <li><strong>Ship Security Alert System (SSAS)</strong></li>
  <li>Physical security: locks, barriers, lighting, fencing.</li>
  <li>Communication: handheld radios, GMDSS equipment.</li>
  <li>Surveillance: CCTV cameras and recording systems.</li>
  <li>Detection: Automatic Intrusion Detection Devices, metal detectors, explosive detectors.</li>
  <li>Screening: baggage screening equipment, container X-ray devices.</li>
  <li>General alarm systems.</li>
</ul>
<p>The focus is on familiarity with capabilities and proper deployment — not detailed technical knowledge. PFSOs may influence equipment purchase and installation decisions.</p>

<h3>5.2 Operational Limitations</h3>
<p>PFSOs must understand the functional limitations and operating constraints of all security equipment, including:</p>
<ul>
  <li>Effective detection or monitoring range.</li>
  <li>Environmental sensitivities (weather, lighting, interference).</li>
  <li>Human error factors in operating and interpreting results.</li>
  <li>Maintenance requirements and downtime implications.</li>
</ul>
<p>No security equipment is infallible. Layered and overlapping security measures are always preferable to relying on a single system.</p>

<h3>5.3 Testing, Calibration, and Maintenance</h3>
<p>PFSOs are responsible for ensuring methods are in place to maintain the accuracy, efficiency, and operational readiness of all security equipment. Key tasks include:</p>
<ul>
  <li>Establishing scheduled testing and calibration procedures.</li>
  <li>Maintaining maintenance logs and service records.</li>
  <li>Ensuring equipment is tested after any security incident or suspected tampering.</li>
  <li>Coordinating with technical personnel for repairs and upgrades.</li>
  <li>Training port facility personnel on proper equipment operation.</li>
</ul>', 'text', 5, 90, 1, NOW()),

(8, '6. Port Facility Security Plan', '<h2>6. Port Facility Security Plan</h2>

<h3>6.1 Purpose of the Port Facility Security Plan</h3>
<p>Defined in ISPS Code Part A Section 2.1, the Port Facility Security Plan (PFSP) is a port facility-specific plan designed to protect the facility and its operations from the risks of a security incident.</p>
<p>The PFSO must develop, submit for approval, implement, and maintain the plan, and supervise its implementation at all times.</p>

<h3>6.2 Contents of the Port Facility Security Plan</h3>
<p>Trainees should be intimately familiar with the general contents as outlined in ISPS Code Part A Section 16 and Part B Section 16. The plan addresses security measures for all three security levels and must include:</p>
<ul>
  <li>Measures to prevent weapons and dangerous substances from being brought aboard.</li>
  <li>Identification of restricted areas and access control procedures.</li>
  <li>Procedures for responding to security threats and incidents.</li>
  <li>Procedures for evacuations, emergency drills, and exercises.</li>
  <li>Duties of personnel assigned security responsibilities.</li>
  <li>Procedures for auditing security activities.</li>
  <li>Training and drill requirements.</li>
  <li>Procedures for interfacing with Ship Security Plans.</li>
  <li>Periodic review and updating of the plan.</li>
</ul>

<h3>6.3 Confidentiality</h3>
<p>The Port Facility Security Plan is a confidential document and must be protected from unauthorized disclosure. Port State Control Officers may inspect specific sections of the plan during port state control examinations. The PFSO must know which sections can be shown and under what circumstances.</p>

<h3>6.4 Development of the Port Facility Security Plan</h3>
<p>The plan is developed based on the Port Facility Security Assessment. It should address vulnerabilities identified in the assessment and establish countermeasures proportionate to the level of risk.</p>

<h3>6.5 Approval</h3>
<p>The PFSP must be approved by the Contracting Government or a Recognized Security Organization (RSO) authorized by the government. The approved plan is then officially in effect.</p>

<h3>6.6 Implementation</h3>
<p>Implementation is a shared responsibility with Port Facility management, but the PFSO is on the front line. A clear delineation of responsibilities between the PFSO, port management, and security personnel is crucial for effective implementation.</p>

<h3>6.7 Maintenance and Modification</h3>
<p>The PFSP is a living document intended to address changing security threats and operational conditions. PFSOs must:</p>
<ul>
  <li>Understand their role in maintaining the plan''s effectiveness.</li>
  <li>Identify when modifications are necessary.</li>
  <li>Follow proper procedures for suggesting and seeking approval for modifications.</li>
  <li>Test modifications through exercises and scenarios before full implementation.</li>
</ul>', 'text', 6, 150, 1, NOW()),

(8, '7. Identification of the Threat', '<h2>7. Identification of the Threat</h2>

<h3>7.1 Recognition and Detection of Weapons, Dangerous Substances, and Devices</h3>
<p>PFSOs must be familiar with techniques for searching persons, personal effects, baggage, cargo, and ship''s stores. Searches must be conducted with clear security grounds, respecting human rights and applicable legal frameworks.</p>

<h3>7.2 Implementing and Coordinating Searches</h3>
<p>Basic equipment for searches includes flashlights, tools, and evidence bags. Key search procedures:</p>
<ul>
  <li>Facility personnel should not search their own areas (avoid conflict of interest).</li>
  <li>Searches must be planned and controlled, ideally conducted in pairs.</li>
  <li>Searchers must recognize suspicious items and mark cleared ("clean") areas.</li>
  <li>Maintain continuous contact with search controllers.</li>
  <li>Clear protocols for what to do if a suspect item is found.</li>
  <li>Awareness that dangerous devices may be disguised as ordinary objects.</li>
</ul>
<p>Common concealment locations on ships include cabins, companionways, toilets, deck areas, engine room, and galleys.</p>

<h3>7.3 Recognition of Persons Posing Potential Security Risks (Non-Discriminatory)</h3>
<p>PFSOs must identify suspicious behaviors while strictly avoiding racial profiling. Examples of suspicious behaviors include:</p>
<ul>
  <li>Photographing vessels, equipment, or security arrangements.</li>
  <li>Attempting unauthorized access to restricted areas.</li>
  <li>Loitering near sensitive areas without legitimate reason.</li>
  <li>Telephoning to inquire about security information or vessel movements.</li>
  <li>Suspicious vehicles, boats, or aircraft observed near the facility.</li>
  <li>Individuals carrying equipment that could conceal weapons or devices.</li>
  <li>Suspicious vendors, workmen, or service providers without proper credentials.</li>
  <li>Unusual phone calls, suspicious emails, or unexpected package deliveries.</li>
</ul>

<h3>7.4 Techniques Used to Circumvent Security Measures</h3>
<p>PFSOs must be aware that no security measure is infallible and should understand techniques used to evade security systems, including:</p>
<ul>
  <li>Disabling alarms or detection equipment.</li>
  <li>Lock picking and unauthorized key duplication.</li>
  <li>Radio frequency jamming to disrupt communications.</li>
  <li>Social engineering to obtain sensitive information from personnel.</li>
  <li>Use of stolen or forged identification and credentials.</li>
</ul>

<h3>7.5 Crowd Management and Control Techniques</h3>
<p>PFSOs should understand group behavior dynamics during crisis situations and the importance of clear communication with all involved personnel. Crowd management techniques include:</p>
<ul>
  <li>Pre-planning evacuation routes and assembly points.</li>
  <li>Designating trained crowd control personnel.</li>
  <li>Using clear, calm verbal commands and physical guidance.</li>
  <li>Coordinating with law enforcement and emergency services.</li>
  <li>Conducting regular drills to familiarize personnel with procedures.</li>
</ul>', 'text', 7, 150, 1, NOW()),

(8, '8. Port Facility Security Actions', '<h2>8. Port Facility Security Actions</h2>

<h3>8.1 Actions Required by Different Security Levels</h3>
<p>The ISPS Code defines three security levels:</p>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr>
      <th>Security Level</th>
      <th>Description</th>
      <th>PFSO Actions</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Level 1 — Normal</strong></td>
      <td>Minimum appropriate protective security measures at all times.</td>
      <td>Standard access control, routine monitoring, regular patrols.</td>
    </tr>
    <tr>
      <td><strong>Level 2 — Heightened</strong></td>
      <td>Heightened risk of a security incident — additional protective measures.</td>
      <td>Increased inspections, enhanced access controls, closer monitoring of vessel interfaces.</td>
    </tr>
    <tr>
      <td><strong>Level 3 — Exceptional</strong></td>
      <td>Probable or imminent security incident — further specific protective measures.</td>
      <td>Restricted access, searching of all persons and vehicles, continuous monitoring, possible suspension of operations.</td>
    </tr>
  </tbody>
</table>
<p>Checklists for appropriate actions at each level are beneficial and should be included in the Port Facility Security Plan.</p>

<h3>8.2 Maintaining Security at the Ship/Port Interface</h3>
<p>The ship/port interface defines the operational boundary where both the Port Facility Security Plan and the Ship Security Plan must work together. The PFSO and SSO must:</p>
<ul>
  <li>Agree on and communicate current security levels.</li>
  <li>Coordinate responsibilities at the point of interface.</li>
  <li>Ensure access control and monitoring is maintained continuously during vessel stays.</li>
  <li>Liaise with the Company Security Officer (CSO) as needed.</li>
</ul>

<h3>8.3 Declaration of Security (DoS)</h3>
<p>Defined in SOLAS Chapter XI-1 Regulation 1. The ISPS Code details when a Declaration of Security is completed, who initiates it, and who signs it. A sample DoS is provided in ISPS Code Part B Appendix 1.</p>
<p>The DoS establishes the security measures applicable during a specific ship/port interface and must be signed by both the PFSO and the SSO.</p>

<h3>8.4 Reporting Security Incidents</h3>
<p>All security incidents must be reported according to specific requirements set out in the Port Facility Security Plan and relevant national regulations. PFSOs must:</p>
<ul>
  <li>Know reporting procedures and the chain of communication.</li>
  <li>Document incidents accurately and promptly.</li>
  <li>Notify Contracting Government authorities as required.</li>
  <li>Preserve evidence and maintain logs of all security incidents.</li>
</ul>

<h3>8.5 Implementation of Security Procedures</h3>
<p>Security procedures synthesize the requirements of the ISPS Code and the Port Facility Security Plan into day-to-day operations. Key procedures include:</p>
<ul>
  <li>Security inspections of the facility before vessel arrival.</li>
  <li>Controlling access to the port facility and its restricted areas.</li>
  <li>Monitoring the deck areas of berthed vessels.</li>
  <li>Supervising cargo operations and stores delivery.</li>
  <li>Ensuring security communications are operational at all times.</li>
</ul>', 'text', 8, 120, 1, NOW()),

(8, '9. Emergency Preparedness, Drills, and Exercises', '<h2>9. Emergency Preparedness, Drills, and Exercises</h2>

<h3>9.1 Contingency Planning</h3>
<p>This chapter covers incident response planning for contingencies associated with terrorism and criminal activities in the maritime environment. Topics include appropriate actions for:</p>
<ul>
  <li>Bomb threats and explosions.</li>
  <li>Piracy and armed robbery at sea.</li>
  <li>Hijackings and seizure of vessels.</li>
  <li>Arson and sabotage.</li>
  <li>Unauthorized access and stowaways.</li>
  <li>Smuggling of weapons, equipment, or persons.</li>
</ul>

<h3>9.2 Security Drills and Exercises</h3>
<p>Drills and exercises ensure that port facility personnel are proficient in all assigned security duties at all security levels, and identify security-related deficiencies that need to be addressed.</p>
<p><strong>Frequency requirements for drills:</strong></p>
<ul>
  <li>Drills must be conducted at least once every <strong>three months</strong>.</li>
  <li>If more than 25% of personnel have changed within the last 3 months without participating in a previous drill, a drill must be conducted within <strong>one week</strong> of the change.</li>
</ul>
<p><strong>Drill scenarios should include:</strong></p>
<ul>
  <li>Damage to or destruction of the ship or port facility (explosive devices, arson, sabotage, or vandalism).</li>
  <li>Hijacking or seizure of the ship or persons on board.</li>
  <li>Tampering with cargo, essential ship equipment, or ship''s stores.</li>
  <li>Unauthorized access, including stowaways.</li>
  <li>Smuggling of weapons or WMD-related equipment.</li>
  <li>Use of the ship to carry those intending to cause a security incident.</li>
  <li>Use of the ship itself as a weapon.</li>
  <li>Attacks from seaward while at berth or anchor.</li>
  <li>Attacks while at sea.</li>
</ul>

<h3>9.3 Full-Scale Exercises</h3>
<p>Full-scale exercises involving Company Security Officers, Port Facility Security Officers, relevant government authorities, and Ship Security Officers must be carried out:</p>
<ul>
  <li>At least <strong>once each calendar year</strong>.</li>
  <li>With no more than <strong>18 months</strong> between exercises.</li>
</ul>
<p>Exercises test communications, coordination, resource availability, and response. They may be:</p>
<ul>
  <li>Full-scale or live exercises.</li>
  <li>Tabletop simulation or seminar-based.</li>
  <li>Combined with other exercises (e.g., search and rescue or emergency response).</li>
</ul>

<h3>9.4 Assessment of Drills and Exercises</h3>
<p>After each drill or exercise, the responsible security officer must:</p>
<ul>
  <li>Review the exercise and identify any mistakes or deficiencies.</li>
  <li>Ensure identified deficiencies are corrected before the next exercise.</li>
  <li>Collect comments from all participating personnel on the effectiveness of the drill.</li>
  <li>Document findings and improvements in the security records.</li>
</ul>', 'text', 9, 90, 1, NOW()),

(8, '10. Security Administration', '<h2>10. Security Administration</h2>

<h3>10.1 Documentation and Records</h3>
<p>Security records are required under SOLAS Chapter XI-1 Regulation 5 and Chapter XI-2. Key documents include:</p>
<ul>
  <li><strong>International Ship Security Certificate (ISSC):</strong> Issued to ships that comply with the ISPS Code.</li>
  <li><strong>Continuous Synopsis Record (CSR):</strong> A historical record of ship flag, ownership, and management.</li>
  <li>Records of training, drills, exercises, and security incidents.</li>
  <li>Maintenance and test records for security equipment.</li>
  <li>Declarations of Security and records of ship/port interfaces.</li>
</ul>
<p>Records of activities addressed in the Port Facility Security Plan must be kept for specified periods as set out in ISPS Code Part A Section 10.</p>

<h3>10.2 Monitoring and Control</h3>
<p>Effective security administration requires continuous review of the Port Facility Security Plan''s effectiveness and relevance over time. The PFSO must monitor:</p>
<ul>
  <li>Compliance with all procedures defined in the PFSP.</li>
  <li>Personnel adherence to access control and identification requirements.</li>
  <li>Security equipment operational status and maintenance records.</li>
  <li>Incident and near-miss reporting patterns.</li>
</ul>

<h3>10.3 Security Audits and Inspections</h3>
<p>The IMO requires formal audits and inspections to assess the Port Facility Security Plan''s effectiveness, similar to requirements under the ISM Code. Audits evaluate:</p>
<ul>
  <li>Adequacy of the PFSP against current threats.</li>
  <li>Personnel training and certification status.</li>
  <li>Equipment maintenance and operational readiness.</li>
  <li>Record-keeping completeness and accuracy.</li>
</ul>

<h3>10.4 Reporting Non-Conformities</h3>
<p>The audit and review process requires identifying, communicating, and rectifying non-conformities. Both the Port Facility Security Officer and relevant management play key roles in:</p>
<ul>
  <li>Identifying and documenting non-conformities.</li>
  <li>Reporting non-conformities through appropriate channels.</li>
  <li>Developing and implementing corrective actions.</li>
  <li>Verifying that corrective actions have been effective.</li>
</ul>', 'text', 10, 60, 1, NOW()),

(8, '11. Security Training', '<h2>11. Security Training</h2>

<h3>11.1 Training Requirements</h3>
<p>Training requirements under the ISPS Code are found in Parts A and B of the Code. Key points include:</p>
<ul>
  <li><strong>Who must be trained:</strong> The PFSO, all port facility personnel with assigned security duties, and other relevant personnel.</li>
  <li><strong>Training content:</strong> Security awareness, knowledge of the ISPS Code, specific duties as defined in the PFSP, emergency response procedures, and use of security equipment.</li>
  <li><strong>Responsibility:</strong> The PFSO is responsible for the training of port facility security personnel. The Contracting Government oversees training standards.</li>
</ul>
<p>Training must be conducted at appropriate intervals and before personnel are assigned security duties for the first time.</p>

<h3>11.2 Instructional Techniques</h3>
<p>Effective security training incorporates multiple instructional methods:</p>
<ul>
  <li><strong>Classroom instruction:</strong> Lectures, presentations, and discussions covering theoretical knowledge of the ISPS Code and security procedures.</li>
  <li><strong>Practical exercises:</strong> Hands-on practice with security equipment, search techniques, and access control procedures.</li>
  <li><strong>Drills:</strong> Simulated security incidents to practice response procedures in realistic conditions.</li>
  <li><strong>Case studies:</strong> Analysis of real security incidents to draw lessons and identify best practices.</li>
  <li><strong>Videos and multimedia:</strong> Visual demonstrations of procedures and threats.</li>
</ul>

<h3>11.3 Assessment of Training Effectiveness</h3>
<p>Training effectiveness is assessed through:</p>
<ul>
  <li>Written tests and knowledge assessments following training sessions.</li>
  <li>Observation of personnel performance during drills and exercises.</li>
  <li>Review of incident reports and near-miss data for training gaps.</li>
  <li>Periodic re-training and refresher courses to maintain proficiency.</li>
</ul>

<h3>Summary of PFSO Responsibilities</h3>
<p>Upon completion of this course, a qualified Port Facility Security Officer should be able to:</p>
<ul>
  <li>Develop, maintain, and supervise implementation of the Port Facility Security Plan.</li>
  <li>Conduct Port Facility Security Assessments and on-site inspections.</li>
  <li>Ensure proper operation and maintenance of security equipment.</li>
  <li>Assess and respond to security threats at all three security levels.</li>
  <li>Liaise effectively with Ship Security Officers and Company Security Officers.</li>
  <li>Organize and conduct security drills, exercises, and training.</li>
  <li>Maintain accurate security records and audit documentation.</li>
  <li>Report security incidents through appropriate channels.</li>
</ul>
<p>Successful completion of the written examination is required to receive the course completion certificate issued by the training center in accordance with ISPS Code Prescriptions 2.1.8 and 11, Part A.</p>', 'text', 11, 60, 1, NOW());

-- ─── Quiz ────────────────────────────────────────────────────────────────────

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (8, 'Port Facility Security Officer — Final Examination',
        'Final examination for the PFSO certification course. Covers ISPS Code requirements, security planning, threat assessment, and emergency response.',
        70, 60, 1, NOW());

SET @quiz_id = LAST_INSERT_ID();

-- ─── Questions ───────────────────────────────────────────────────────────────

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'On what date did the ISPS Code come into force?', 'multiple_choice', 1, 1),
(@quiz_id, 'Which document is mandatory under the ISPS Code?', 'multiple_choice', 1, 2),
(@quiz_id, 'What percentage of world goods are transported by sea?', 'multiple_choice', 1, 3),
(@quiz_id, 'What is the primary purpose of the Port Facility Security Plan (PFSP)?', 'multiple_choice', 1, 4),
(@quiz_id, 'What ISPS Code security level represents a probable or imminent security incident?', 'multiple_choice', 1, 5),
(@quiz_id, 'How often must security drills be conducted at a minimum?', 'multiple_choice', 1, 6),
(@quiz_id, 'The Declaration of Security (DoS) is defined in which SOLAS chapter?', 'multiple_choice', 1, 7),
(@quiz_id, 'Which U.S. law implements the ISPS Code domestically?', 'multiple_choice', 1, 8),
(@quiz_id, 'What event directly triggered the development of the ISPS Code amendments to SOLAS?', 'multiple_choice', 1, 9),
(@quiz_id, 'The Port Facility Security Assessment must be conducted to identify what?', 'multiple_choice', 1, 10),
(@quiz_id, 'What is the maximum interval between full-scale security exercises?', 'multiple_choice', 1, 11),
(@quiz_id, 'Which convention obliges governments to extradite or prosecute offenders for unlawful acts against maritime navigation?', 'multiple_choice', 1, 12),
(@quiz_id, 'The PFSO is responsible for liaising with which officer on board a visiting ship?', 'multiple_choice', 1, 13),
(@quiz_id, 'C-TPAT is a program administered by which U.S. agency?', 'multiple_choice', 1, 14),
(@quiz_id, 'What must happen if more than 25% of port facility security personnel change within 3 months?', 'multiple_choice', 1, 15),
(@quiz_id, 'Which part of the ISPS Code is mandatory?', 'multiple_choice', 1, 16),
(@quiz_id, 'What approach must security searches always avoid?', 'multiple_choice', 1, 17),
(@quiz_id, 'The Continuous Synopsis Record (CSR) is required under which SOLAS chapter?', 'multiple_choice', 1, 18),
(@quiz_id, 'The Container Security Initiative (CSI) pre-screens what percentage of U.S.-bound maritime containerized cargo?', 'multiple_choice', 1, 19),
(@quiz_id, 'Which historical event led to the hijacking response provisions in the ISPS Code?', 'multiple_choice', 1, 20);

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

-- ─── Options ─────────────────────────────────────────────────────────────────

-- Q1: ISPS Code implementation date
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'January 1, 2002', 0, 0),
(@q1, 'July 1, 2004', 1, 1),
(@q1, 'September 11, 2001', 0, 2),
(@q1, 'December 1, 2002', 0, 3);

-- Q2: Mandatory ISPS document
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'ISPS Code Part B', 0, 0),
(@q2, 'ISPS Code Part A', 1, 1),
(@q2, 'ISPS Code Appendix 1', 0, 2),
(@q2, 'ISPS Code Part C', 0, 3);

-- Q3: World goods transported by sea
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, '50%', 0, 0),
(@q3, '65%', 0, 1),
(@q3, 'Over 80%', 1, 2),
(@q3, '95%', 0, 3);

-- Q4: Purpose of PFSP
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'To set payroll and staffing levels for port workers', 0, 0),
(@q4, 'To protect the port facility from the risks of a security incident', 1, 1),
(@q4, 'To document cargo handling procedures', 0, 2),
(@q4, 'To coordinate port construction projects', 0, 3);

-- Q5: Security Level 3
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Security Level 1', 0, 0),
(@q5, 'Security Level 2', 0, 1),
(@q5, 'Security Level 3', 1, 2),
(@q5, 'Security Level 4', 0, 3);

-- Q6: Minimum drill frequency
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'Once per year', 0, 0),
(@q6, 'Once every six months', 0, 1),
(@q6, 'At least once every three months', 1, 2),
(@q6, 'Once per month', 0, 3);

-- Q7: DoS definition chapter
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'SOLAS Chapter V', 0, 0),
(@q7, 'SOLAS Chapter XI-2', 0, 1),
(@q7, 'SOLAS Chapter XI-1 Regulation 1', 1, 2),
(@q7, 'SOLAS Chapter IX', 0, 3);

-- Q8: U.S. law implementing ISPS
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Homeland Security Act of 2001', 0, 0),
(@q8, 'Maritime Transportation Security Act of 2002 (MTSA)', 1, 1),
(@q8, 'Patriot Act of 2001', 0, 2),
(@q8, 'Port Security Enhancement Act of 2006', 0, 3);

-- Q9: Event triggering ISPS
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'The Achille Lauro hijacking in 1985', 0, 0),
(@q9, 'The explosion of the Limburg in 2002', 0, 1),
(@q9, 'The September 11, 2001 terrorist attacks', 1, 2),
(@q9, 'The bombing of the USS Cole in 2000', 0, 3);

-- Q10: Purpose of security assessment
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Revenue sources for port expansion', 0, 0),
(@q10, 'Weaknesses in physical structures, personnel protection, and processes', 1, 1),
(@q10, 'Cargo handling optimization opportunities', 0, 2),
(@q10, 'Environmental impact of port operations', 0, 3);

-- Q11: Maximum interval between full exercises
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, '6 months', 0, 0),
(@q11, '12 months', 0, 1),
(@q11, '18 months', 1, 2),
(@q11, '24 months', 0, 3);

-- Q12: SUA Convention
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'MARPOL Convention', 0, 0),
(@q12, 'Convention for the Suppression of Unlawful Acts against Maritime Navigation (SUA)', 1, 1),
(@q12, 'UNCLOS Convention', 0, 2),
(@q12, 'COLREGS Convention', 0, 3);

-- Q13: PFSO liaises with
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'Chief Officer', 0, 0),
(@q13, 'Master of the ship', 0, 1),
(@q13, 'Ship Security Officer (SSO)', 1, 2),
(@q13, 'Port State Control Officer', 0, 3);

-- Q14: C-TPAT administering agency
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'U.S. Coast Guard', 0, 0),
(@q14, 'U.S. Customs and Border Protection (CBP)', 1, 1),
(@q14, 'Transportation Security Administration (TSA)', 0, 2),
(@q14, 'Federal Bureau of Investigation (FBI)', 0, 3);

-- Q15: 25% personnel change requirement
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'A drill must be conducted within one month', 0, 0),
(@q15, 'A full-scale exercise must be conducted immediately', 0, 1),
(@q15, 'A drill must be conducted within one week of the change', 1, 2),
(@q15, 'No additional requirements apply', 0, 3);

-- Q16: Mandatory ISPS part
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Part B only', 0, 0),
(@q16, 'Both Part A and Part B are mandatory', 0, 1),
(@q16, 'Part A is mandatory; Part B provides recommendations', 1, 2),
(@q16, 'Neither part is strictly mandatory', 0, 3);

-- Q17: Searches must avoid
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Random selection of subjects', 0, 0),
(@q17, 'Racial profiling', 1, 1),
(@q17, 'Use of detection equipment', 0, 2),
(@q17, 'Searching in pairs', 0, 3);

-- Q18: CSR required under
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'SOLAS Chapter V', 0, 0),
(@q18, 'SOLAS Chapter XI-2', 0, 1),
(@q18, 'SOLAS Chapter XI-1', 1, 2),
(@q18, 'SOLAS Chapter IX', 0, 3);

-- Q19: CSI pre-screening percentage
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Over 50%', 0, 0),
(@q19, 'Over 65%', 0, 1),
(@q19, 'Over 80%', 1, 2),
(@q19, 'Over 95%', 0, 3);

-- Q20: Historical hijacking event
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'The USS Cole bombing in 2000', 0, 0),
(@q20, 'The Achille Lauro hijacking in 1985', 1, 1),
(@q20, 'The Limburg explosion in 2002', 0, 2),
(@q20, 'The Pan Am Flight 103 bombing in 1988', 0, 3);

SELECT 'PFSO course content loaded successfully.' AS result;
SELECT COUNT(*) AS total_lessons FROM lms_lessons WHERE course_id = 8;
SELECT COUNT(*) AS total_quizzes FROM lms_quizzes WHERE course_id = 8;
SELECT COUNT(*) AS total_questions FROM lms_questions WHERE quiz_id = @quiz_id;
SELECT COUNT(*) AS total_options FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id = @quiz_id);
