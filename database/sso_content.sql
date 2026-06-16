-- SSO Course Content — Course ID=142, Ship Security Officer
-- STCW Regulation VI/5, Section A-VI/5, Table A-VI/5
-- SOLAS Chapter XI-2, ISPS Code Prescriptions 2.1.6 and 12, Part A
-- Run against: cms_db2

USE cms_db2;

-- Update course code
UPDATE lms_courses SET course_code = 'SSO', status = 'published' WHERE id = 142;

-- Delete existing lessons and quizzes
DELETE FROM lms_lesson_progress WHERE lesson_id IN (
    SELECT id FROM lms_lessons WHERE course_id = 142
);
DELETE FROM lms_lessons WHERE course_id = 142;

DELETE FROM lms_quiz_answers WHERE attempt_id IN (
    SELECT id FROM lms_quiz_attempts WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 142
    )
);
DELETE FROM lms_quiz_attempts WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 142
);
DELETE FROM lms_question_options WHERE question_id IN (
    SELECT id FROM lms_questions WHERE quiz_id IN (
        SELECT id FROM lms_quizzes WHERE course_id = 142
    )
);
DELETE FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 142
);
DELETE FROM lms_quizzes WHERE course_id = 142;

-- ─── Lessons ─────────────────────────────────────────────────────────────────

INSERT INTO lms_lessons (course_id, title, content, type, order_num, duration, is_active, created_at) VALUES
(142, '1. Introduction', '<img src="/uploads/sso/image1.jpeg" alt="Ship Security Officer" style="max-width:100%;margin-bottom:1.5rem;">
<h2>1. Introduction</h2>
<p>This course provides knowledge to those designated to perform the duties and responsibilities of a <strong>Ship Security Officer (SSO)</strong> in accordance with STCW Regulation VI/5, Section A-VI/5 and Table A-VI/5, Chapter XI-2 of SOLAS 1974, and Prescriptions 2.1.6 and 12, Part A of the ISPS Code.</p>

<h3>1.1 Course Overview</h3>
<p>The course enables trainees to identify, deter, or mitigate security threats through proper planning, preparation, and coordination. The emphasis is not on fighting but on proactive security management. The course uses practical case studies, demonstrations, and exercises to build competency assessed by a final examination.</p>

<h3>1.2 Competencies to Be Achieved</h3>
<p>Every person designated as a Ship Security Officer (SSO) must be able to:</p>
<ul>
  <li>Maintain and supervise the implementation of the Ship Security Plan.</li>
  <li>Assess security risk, threat, and vulnerability and take appropriate countermeasures.</li>
  <li>Undertake regular inspections of the ship to ensure security measures are implemented.</li>
  <li>Ensure security equipment and systems are properly operated, tested, and calibrated.</li>
  <li>Encourage security awareness and vigilance among the crew.</li>
  <li>Ensure adequate training has been provided to shipboard personnel.</li>
  <li>Report all security incidents to the Company Security Officer (CSO).</li>
  <li>Coordinate security activities with the Port Facility Security Officer (PFSO).</li>
</ul>

<h3>1.3 Historical Perspective</h3>
<p>Notable security incidents that shaped maritime security policy:</p>
<ul>
  <li><strong>Achille Lauro (1985):</strong> Cruise ship hijacking highlighting vulnerability of passenger vessels.</li>
  <li><strong>Pan Am Flight 103 (1988):</strong> Lockerbie bombing demonstrating international terrorist reach.</li>
  <li><strong>USS Cole (2000):</strong> Suicide boat attack on a naval vessel in the Port of Aden, Yemen.</li>
  <li><strong>September 11, 2001:</strong> Terrorist attacks that directly triggered SOLAS Chapter XI-2 and the ISPS Code.</li>
</ul>

<h3>1.4 Current Security Threats and Patterns</h3>
<p>Contemporary maritime security threats include:</p>
<ul>
  <li><strong>Piracy:</strong> Defined by UNCLOS Article 101 as illegal acts of violence, detention, or depredation on the high seas for private ends. Active regions include the Horn of Africa, Gulf of Guinea, and South-east Asia.</li>
  <li><strong>Terrorism:</strong> Violence or threats of violence by extremist groups for political objectives. Maritime terrorism targets vessels, ports, and critical infrastructure.</li>
  <li><strong>Contraband Smuggling:</strong> Illegal movement of drugs, weapons, and other prohibited items through maritime channels.</li>
  <li><strong>Cargo Theft:</strong> Theft of cargo, bunkers, or ship property during port stays or at anchorage.</li>
  <li><strong>Collateral Damage:</strong> Ships and crews caught in conflict zones or civil unrest.</li>
</ul>

<h3>1.5 Ship and Port Operations and Conditions</h3>
<p>The SSO must understand the broader transportation and logistics context in which ships operate, including:</p>
<ul>
  <li>Cargo and passenger movement interfaces between ship, port, and inland transport modes.</li>
  <li>Cargo tracking and documentation systems.</li>
  <li>Operational interfaces between ship security plans and port facility security plans.</li>
  <li>Conditions that may affect security during different voyage phases (port, anchorage, at sea).</li>
</ul>', 'text', 1, 90, 1, NOW()),

(142, '2. Maritime Security Policy', '<h2>2. Maritime Security Policy</h2>

<h3>2.1 Relevant International Conventions, Codes, and Recommendations</h3>
<p>IMO efforts to control maritime security threats include:</p>
<ul>
  <li><strong>IMO Resolutions:</strong> A.545(13), A.584(14), and others addressing piracy and unlawful acts against ships since 1983.</li>
  <li><strong>SUA Convention (1988):</strong> Convention for the Suppression of Unlawful Acts against the Safety of Maritime Navigation — obliges governments to extradite or prosecute offenders for ship seizure, violence on board, and placing destructive devices.</li>
  <li><strong>SOLAS Chapter XI-2 (2004):</strong> Introduced following 9/11 to enhance maritime security. Includes the ISPS Code and requirements for the Ship Security Plan, Ship Security Officer, and International Ship Security Certificate.</li>
  <li><strong>ISPS Code:</strong> Part A is mandatory; Part B provides guidance. Establishes security levels 1, 2, and 3, and defines responsibilities for Contracting Governments, companies, ships, and port facilities.</li>
</ul>

<h3>2.2 Relevant Government Legislation and Regulations</h3>
<ul>
  <li><strong>Maritime Transportation Security Act 2002 (MTSA 2002 — USA):</strong> Implements the ISPS Code domestically. Key features include vulnerability assessments, security plans, Transportation Security Cards, grants for security enhancement, AIS installation requirements, and professional training standards.</li>
  <li><strong>Customs-Trade Partnership Against Terrorism (C-TPAT):</strong> Voluntary public-private partnership by U.S. CBP to strengthen international supply chains. Benefits include reduced inspections, FAST Lane access, and trusted partner status.</li>
  <li><strong>Container Security Initiative (CSI):</strong> Pre-screens high-risk containers at foreign ports using X-ray, gamma ray, and radiation detection before shipment to the USA. Operational in 58+ ports covering over 80% of US-bound cargo.</li>
</ul>

<h3>2.3 Definitions</h3>
<p>Key terms from SOLAS Chapter XI-2 Regulation 1 and ISPS Code Part A Section 2 (selected):</p>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;"><tr><th>Term</th><th>Definition</th></tr></thead>
  <tbody>
    <tr><td><strong>Ship Security Officer (SSO)</strong></td><td>Person on board responsible for implementing and maintaining the Ship Security Plan and liaising with the PFSO and CSO.</td></tr>
    <tr><td><strong>Company Security Officer (CSO)</strong></td><td>Person designated by the company to develop, submit, implement, and maintain the Ship Security Plan; point of contact with governments and PFSOs.</td></tr>
    <tr><td><strong>Port Facility Security Officer (PFSO)</strong></td><td>Person responsible for developing and implementing the Port Facility Security Plan and liaising with SSOs and CSOs.</td></tr>
    <tr><td><strong>Security Level</strong></td><td>Qualification of the degree of risk that a security incident will be attempted or will occur. Levels 1 (normal), 2 (heightened), 3 (exceptional).</td></tr>
    <tr><td><strong>Declaration of Security (DoS)</strong></td><td>Agreement between a ship and a port facility (or another ship) that specifies security measures each will implement during their interface.</td></tr>
  </tbody>
</table>

<h3>2.4 Legal Implications</h3>
<p>Security personnel actions — or inactions — carry legal consequences. The SSO must be aware of current national and international legal requirements and understand that liability can arise from failure to implement required security measures or to report known threats.</p>

<h3>2.5 Handling Sensitive Security-Related Information</h3>
<p>Certain security information is classified as sensitive. Its level of sensitivity can change with the declared security level (1, 2, or 3). The SSO must:</p>
<ul>
  <li>Protect security-sensitive information from unauthorized disclosure.</li>
  <li>Understand the appropriate communication channels for security information.</li>
  <li>Recognize that security leaks through improper communication can compromise operations and endanger crew.</li>
</ul>', 'text', 2, 90, 1, NOW()),

(142, '3. Security Responsibilities', '<h2>3. Security Responsibilities</h2>
<p>This chapter clarifies the roles and obligations of all entities in the maritime security system as established by SOLAS Chapter XI-2 and the ISPS Code.</p>

<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;"><tr><th>Entity</th><th>Key Responsibilities</th></tr></thead>
  <tbody>
    <tr>
      <td><strong>Contracting Government</strong></td>
      <td>Sets and communicates security levels; approves Ship Security Plans; conducts port state control; may delegate to Recognized Security Organizations (RSOs).</td>
    </tr>
    <tr>
      <td><strong>Recognized Security Organization (RSO)</strong></td>
      <td>May undertake security activities on behalf of Contracting Governments or companies, including conducting Ship Security Assessments and reviewing Ship Security Plans.</td>
    </tr>
    <tr>
      <td><strong>The Company</strong></td>
      <td>Designates CSOs; ensures Ship Security Assessments and Plans are prepared; maintains International Ship Security Certificates and Continuous Synopsis Records.</td>
    </tr>
    <tr>
      <td><strong>The Ship</strong></td>
      <td>Must have an approved Ship Security Plan, a certified SSO, an ISSC, and comply with SOLAS Chapter XI requirements at all times.</td>
    </tr>
    <tr>
      <td><strong>The Port Facility</strong></td>
      <td>Defined as the location of the ship/port interface. Must have an approved Port Facility Security Plan and a certified PFSO.</td>
    </tr>
    <tr>
      <td><strong>Ship Security Officer (SSO)</strong></td>
      <td>Implements and maintains the Ship Security Plan; conducts security inspections; coordinates with PFSO and CSO; trains security personnel; reports incidents.</td>
    </tr>
    <tr>
      <td><strong>Company Security Officer (CSO)</strong></td>
      <td>Develops, approves, and maintains the Ship Security Plan; ensures SSOs receive adequate support and training; liaises with government authorities.</td>
    </tr>
    <tr>
      <td><strong>Port Facility Security Officer (PFSO)</strong></td>
      <td>Manages port-side security at the ship/port interface; coordinates with SSO during vessel calls; implements the Port Facility Security Plan.</td>
    </tr>
    <tr>
      <td><strong>Shipboard Personnel with Security Duties</strong></td>
      <td>Trained and certified to perform specific security tasks as assigned in the Ship Security Plan (access control, monitoring, searches).</td>
    </tr>
    <tr>
      <td><strong>Port Facility Personnel with Security Duties</strong></td>
      <td>Trained to perform security duties defined in the Port Facility Security Plan.</td>
    </tr>
    <tr>
      <td><strong>Other Personnel</strong></td>
      <td>All other shipboard and port personnel who must have basic security awareness training per the ISPS Code.</td>
    </tr>
  </tbody>
</table>', 'text', 3, 120, 1, NOW()),

(142, '4. Ship Security Assessment', '<h2>4. Ship Security Assessment</h2>

<h3>4.1 Risk Assessment Methodology</h3>
<p>Risk-based decision-making is the foundation of maritime security assessment. The Ship Security Assessment is a systematic process to:</p>
<ul>
  <li>Evaluate the likelihood of a security breach occurring.</li>
  <li>Identify actions that reduce vulnerability.</li>
  <li>Develop measures to mitigate the consequences of security incidents.</li>
</ul>
<p>Guidance is found in ISPS Code Part B and USCG NVIC 10-02. The assessment must be completed before a Ship Security Plan can be developed.</p>

<h3>4.2 Assessment Tools</h3>
<p>The SSO should use systematic approaches to evaluate security conditions. Assessment checklists cover:</p>
<ul>
  <li>General layout of the ship and key operational areas.</li>
  <li>Location of restricted access areas and current control measures.</li>
  <li>Access points (gangways, hatches, anchor chains, mooring lines).</li>
  <li>Open deck arrangement and visibility from various positions.</li>
  <li>Emergency equipment locations and accessibility.</li>
  <li>Crew strength, reliability, and assigned security duties.</li>
  <li>Existing security and safety equipment (locks, lighting, CCTV, alarms).</li>
  <li>Agreements with private security companies or armed guards.</li>
  <li>Protective measures: inspection, monitoring, identification, access control, surveillance.</li>
</ul>

<h3>4.3 On-Scene Security Surveys</h3>
<p>An integral part of every Ship Security Assessment. The on-scene survey fulfills these functions:</p>
<ul>
  <li>Identifying existing security measures, procedures, and operations currently in place.</li>
  <li>Evaluating key shipboard operations that need to be protected.</li>
  <li>Identifying threats and their likelihood to prioritize security measures.</li>
  <li>Identifying weaknesses (including human factors) in infrastructure, policies, and procedures.</li>
</ul>
<p>Focus areas during the survey include evaluation of protective measures for:</p>
<ul>
  <li>Performing all ship security duties.</li>
  <li>Monitoring restricted areas to prevent unauthorized access.</li>
  <li>Controlling access to the ship and identification systems.</li>
  <li>Monitoring deck areas and ship surroundings.</li>
  <li>Controlling embarkation of persons and their personal effects.</li>
  <li>Supervising cargo handling and ship''s stores delivery.</li>
  <li>Ensuring security communication, information systems, and equipment are available.</li>
</ul>

<h3>4.4 Security Assessment Documentation</h3>
<p>The Ship Security Assessment must be:</p>
<ul>
  <li>Documented in a formal written report.</li>
  <li>Reviewed and accepted by the Company.</li>
  <li>Retained by the Company for reference and audit purposes.</li>
</ul>
<p>The report must summarize assessment findings, vulnerabilities identified, and proposed countermeasures. It must be protected from unauthorized access or disclosure, as it contains sensitive security information.</p>', 'text', 4, 90, 1, NOW()),

(142, '5. Security Equipment', '<h2>5. Security Equipment</h2>

<h3>5.1 Security Equipment and Systems</h3>
<p>The SSO should be aware of equipment useful for enhancing ship security. Focus is on familiarity with capabilities and deployment — not detailed technical knowledge. Key equipment includes:</p>
<ul>
  <li><strong>Ship Security Alert System (SSAS):</strong> Silently notifies authorities of a security threat without alerting intruders.</li>
  <li><strong>Physical security:</strong> Locks, barriers, anti-climb measures, razor wire, lighting.</li>
  <li><strong>Surveillance:</strong> CCTV cameras with recording systems covering key access points and deck areas.</li>
  <li><strong>Detection:</strong> Automatic intrusion detection devices, motion sensors, metal detectors, explosive detectors.</li>
  <li><strong>Screening:</strong> Baggage X-ray machines, hand-held metal detector wands.</li>
  <li><strong>Communications:</strong> Handheld VHF radios, GMDSS equipment for crew coordination.</li>
  <li><strong>General alarm system:</strong> For alerting crew to security incidents.</li>
  <li><strong>Lighting:</strong> Adequate deck, gangway, and perimeter lighting for night security.</li>
</ul>
<p>The SSO may influence equipment purchase and installation decisions based on the Ship Security Assessment findings.</p>

<h3>5.2 Operational Limitations</h3>
<p>No security system is infallible. The SSO must understand limitations including:</p>
<ul>
  <li><strong>Effective range:</strong> CCTV and motion sensors have limited coverage areas.</li>
  <li><strong>Environmental sensitivities:</strong> Weather, sea spray, and lighting conditions affect camera quality and alarm reliability.</li>
  <li><strong>Human error:</strong> Equipment is only as reliable as the personnel operating and monitoring it.</li>
  <li><strong>Power dependency:</strong> Electronic security systems may fail during power outages — backup procedures must exist.</li>
  <li><strong>Jamming vulnerability:</strong> Wireless systems can potentially be jammed by adversaries.</li>
</ul>
<p>Layered and overlapping security measures are always preferable to reliance on a single system.</p>

<h3>5.3 Testing, Calibration, and Maintenance</h3>
<p>The SSO is responsible for ensuring security equipment is maintained in operational readiness. Key tasks include:</p>
<ul>
  <li>Establishing scheduled testing procedures for all security equipment.</li>
  <li>Maintaining calibration records and service logs.</li>
  <li>Testing equipment after any security incident or suspected tampering.</li>
  <li>Coordinating with the Chief Engineer and technical staff for repairs and upgrades.</li>
  <li>Training security-duty personnel in proper equipment operation.</li>
  <li>Ensuring backup procedures exist for equipment failures at sea.</li>
</ul>', 'text', 5, 90, 1, NOW()),

(142, '6. Ship Security Plan', '<h2>6. Ship Security Plan</h2>

<h3>6.1 Purpose of the Ship Security Plan</h3>
<p>Defined in ISPS Code Part A Section 2.1, the Ship Security Plan (SSP) is a ship-specific plan designed to ensure the application of security measures to protect the ship and persons on board from the risks of a security incident at each of the three security levels.</p>
<p><strong>Key role distinction:</strong></p>
<ul>
  <li>The <strong>CSO</strong> is responsible for developing, submitting for approval, implementing, and maintaining the SSP.</li>
  <li>The <strong>SSO</strong> is responsible for maintaining and supervising the implementation of the SSP on board.</li>
</ul>

<h3>6.2 Contents of the Ship Security Plan</h3>
<p>As established in ISPS Code Part A Section 9.4 and Part B Section 9, the SSP must address:</p>
<ul>
  <li>Measures to prevent weapons and dangerous substances from being brought on board.</li>
  <li>Identification of restricted areas and procedures to prevent unauthorized access.</li>
  <li>Procedures for responding to security threats and breaches at each security level.</li>
  <li>Procedures for evacuating the ship in a security emergency.</li>
  <li>Duties of personnel assigned security responsibilities.</li>
  <li>Procedures for auditing security activities.</li>
  <li>Training, drill, and exercise requirements.</li>
  <li>Procedures for interfacing with Port Facility Security Plans.</li>
  <li>Procedures for reviewing and updating the plan.</li>
  <li>Reporting procedures for security incidents.</li>
</ul>

<h3>6.3 Confidentiality</h3>
<p>The Ship Security Plan is a confidential document. It must be protected from unauthorized access or disclosure. Port State Control Officers have the authority to inspect specific sections under defined circumstances, but the full plan is not required to be made available for routine inspection.</p>

<h3>6.4 Implementation</h3>
<p>Implementation is a shared responsibility between the CSO and SSO, with the SSO on the front line. A clear delineation of roles between the SSO, Master, and crew with security duties is essential. The Master retains overall authority for the safety and security of the ship at all times.</p>

<h3>6.5 Maintenance and Modification</h3>
<p>The Ship Security Plan is a living document that must be updated to remain effective. The SSO must:</p>
<ul>
  <li>Identify when modifications are necessary due to changes in threats, routes, or operations.</li>
  <li>Follow proper procedures for suggesting modifications to the CSO.</li>
  <li>Ensure any modifications are formally approved before implementation.</li>
  <li>Test modifications through drills and exercises.</li>
  <li>Maintain a record of all modifications with dates and reasons.</li>
</ul>', 'text', 6, 120, 1, NOW()),

(142, '7. Threat Identification, Recognition, and Response', '<h2>7. Threat Identification, Recognition, and Response</h2>

<h3>7.1 Recognition and Detection of Weapons, Dangerous Substances, and Devices</h3>
<p>The SSO must be familiar with the characteristics and potential effects of prohibited items, including:</p>
<ul>
  <li>Conventional weapons (firearms, edged weapons, blunt instruments).</li>
  <li>Explosive devices (IEDs, grenades, mines) and their common disguises.</li>
  <li>Chemical, biological, radiological, and nuclear (CBRN) devices.</li>
  <li>Incendiary materials and accelerants.</li>
</ul>

<h3>7.2 Methods of Physical Search and Non-Intrusive Inspections</h3>
<p>The SSO must know techniques for searching persons, personal effects, baggage, cargo, and ship''s stores. Searches must be conducted:</p>
<ul>
  <li>With clear security grounds and documented authorization.</li>
  <li>Respecting the human rights and dignity of those being searched.</li>
  <li>Using appropriate equipment: flashlights, inspection mirrors, gloves, evidence bags.</li>
</ul>

<h3>7.3 Implementing and Coordinating Searches</h3>
<p>Effective search procedures require:</p>
<ul>
  <li>Search parties working in pairs — crew members should not search their own areas.</li>
  <li>Recognition of suspicious items and marking of "cleared" areas.</li>
  <li>Maintaining continuous radio contact with search controllers.</li>
  <li>Clear protocols for what to do when a suspect item is found — do not touch, isolate the area, notify the SSO immediately.</li>
  <li>Awareness that dangerous devices may be disguised as ordinary objects.</li>
</ul>
<p>Common concealment locations on board include: cabins, companionways, toilets, deck areas, engine room, galleys, cargo holds, and void spaces.</p>

<h3>7.4 Recognition of Persons Posing Potential Security Risks</h3>
<p>The SSO must identify suspicious behaviors while strictly avoiding racial profiling. Examples of suspicious behavior:</p>
<ul>
  <li>Photographing security arrangements, equipment, or vessel movements.</li>
  <li>Attempting unauthorized access to restricted areas.</li>
  <li>Loitering near sensitive areas without legitimate purpose.</li>
  <li>Making inquiries about security procedures or crew schedules.</li>
  <li>Arriving without proper documentation or credentials.</li>
  <li>Suspicious vehicles, small boats, or aircraft observed near the vessel.</li>
  <li>Unusual deliveries or service personnel without proper authorization.</li>
</ul>

<h3>7.5 Techniques Used to Circumvent Security Measures</h3>
<p>The SSO must be aware that adversaries may attempt to evade security through:</p>
<ul>
  <li>Disabling or tampering with alarm systems and CCTV cameras.</li>
  <li>Lock picking or unauthorized key duplication.</li>
  <li>Radio frequency jamming to disrupt communications.</li>
  <li>Social engineering — manipulating crew members into providing access or information.</li>
  <li>Forged identification documents or credentials.</li>
  <li>Using stowaways or concealment in cargo or ship''s stores.</li>
</ul>

<h3>7.6 Crowd Management and Control Techniques</h3>
<p>The SSO must understand group behavior dynamics in crisis situations and maintain effective communication. Key principles:</p>
<ul>
  <li>Pre-plan evacuation routes, assembly points, and muster procedures.</li>
  <li>Designate trained crew members for crowd control roles.</li>
  <li>Use clear, calm verbal commands in languages understood by passengers.</li>
  <li>Coordinate with law enforcement and port security when in port.</li>
  <li>Conduct regular drills to familiarize all crew and passengers with emergency procedures.</li>
</ul>', 'text', 7, 180, 1, NOW()),

(142, '8. Ship Security Actions', '<h2>8. Ship Security Actions</h2>

<h3>8.1 Actions Required by Different Security Levels</h3>
<table border="1" cellpadding="6" cellspacing="0" style="width:100%;border-collapse:collapse;">
  <thead style="background:#f0f0f0;">
    <tr><th>Level</th><th>Condition</th><th>SSO Actions</th></tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Level 1 — Normal</strong></td>
      <td>Minimum appropriate protective security measures maintained at all times.</td>
      <td>Standard watch, access control at gangway, routine deck patrols, standard cargo checks.</td>
    </tr>
    <tr>
      <td><strong>Level 2 — Heightened</strong></td>
      <td>Heightened risk of a security incident.</td>
      <td>Increased patrols, restricted access to additional areas, enhanced checks on persons and vehicles boarding, closer monitoring of vicinity.</td>
    </tr>
    <tr>
      <td><strong>Level 3 — Exceptional</strong></td>
      <td>Probable or imminent security incident.</td>
      <td>Restricted access for all but essential personnel, continuous security watch, searching of all persons, cooperation with port and government authorities, possible suspension of cargo operations.</td>
    </tr>
  </tbody>
</table>
<p>The SSO must maintain checklists for appropriate actions at each security level integrated into the Ship Security Plan.</p>

<h3>8.2 Maintaining Security of the Ship/Port Interface</h3>
<p>The ship/port interface is the critical boundary where both the Ship Security Plan and the Port Facility Security Plan must work together. Responsibilities:</p>
<ul>
  <li>Establish the current security level jointly with the PFSO before and during the vessel''s stay.</li>
  <li>Maintain continuous access control at the gangway and all other means of access.</li>
  <li>Ensure all persons boarding have proper identification and authorization.</li>
  <li>Monitor deck areas adjacent to the quay for unauthorized access attempts.</li>
  <li>Liaise with the CSO regarding any changes in security level or threat assessments.</li>
</ul>

<h3>8.3 Declaration of Security (DoS)</h3>
<p>The Declaration of Security is defined in SOLAS Chapter XI-1 Regulation 1 and detailed in the ISPS Code with a sample in Part B Appendix 1. The DoS:</p>
<ul>
  <li>Is a formal agreement specifying security measures each party will implement during a specific ship/port interface.</li>
  <li>Is initiated by the ship or port facility when either party requests it, or as required at Security Level 2 or 3.</li>
  <li>Must be signed by both the SSO and the PFSO.</li>
  <li>Remains valid for the duration agreed upon by both parties.</li>
  <li>Must be retained on board for a minimum period as specified by the Administration.</li>
</ul>

<h3>8.4 Reporting Security Incidents</h3>
<p>All security incidents must be reported following specific procedures in the Ship Security Plan:</p>
<ul>
  <li>Notify the Master and CSO immediately.</li>
  <li>Report to the relevant Contracting Government authority as required.</li>
  <li>Document the incident accurately: time, location, nature, persons involved, actions taken.</li>
  <li>Preserve evidence and maintain chain of custody.</li>
  <li>Cooperate with any subsequent investigation.</li>
</ul>

<h3>8.5 Implementation of Security Procedures</h3>
<p>Daily security procedures synthesize the SSP requirements into operational routines:</p>
<ul>
  <li>Gangway security watch — checking identification of all persons boarding.</li>
  <li>Regular deck patrols at intervals specified in the SSP.</li>
  <li>Monitoring of restricted areas through CCTV and physical checks.</li>
  <li>Supervision of cargo loading/discharge and stores delivery.</li>
  <li>Ensuring all security logs, records, and reports are maintained up to date.</li>
</ul>', 'text', 8, 90, 1, NOW()),

(142, '9. Emergency Preparedness, Drills, and Exercises', '<h2>9. Emergency Preparedness, Drills, and Exercises</h2>

<h3>9.1 Contingency Planning</h3>
<p>The Ship Security Plan must include contingency plans for security incidents involving:</p>
<ul>
  <li>Bomb threats, explosive devices, and arson.</li>
  <li>Piracy and armed robbery at sea.</li>
  <li>Hijacking or seizure of the vessel.</li>
  <li>Sabotage of critical ship equipment or cargo.</li>
  <li>Unauthorized access, including stowaways.</li>
  <li>Smuggling of weapons or weapons of mass destruction.</li>
  <li>Mass casualty events.</li>
</ul>

<h3>9.2 Security Drills and Exercises</h3>
<p>The objective of drills is to ensure that shipboard personnel are proficient in all assigned security duties at all security levels, and to identify security-related deficiencies for correction.</p>

<h4>Drill Requirements</h4>
<ul>
  <li>Drills must be conducted at least <strong>once every three months</strong>.</li>
  <li>If more than <strong>25% of shipboard personnel</strong> have changed (without having participated in a drill on that ship in the last 3 months), a drill must be conducted within <strong>one week</strong> of the change.</li>
</ul>

<h4>Drill Scenarios Must Cover</h4>
<ul>
  <li>Damage to or destruction of the ship by explosive devices, arson, sabotage, or vandalism.</li>
  <li>Hijacking or seizure of the ship or persons on board.</li>
  <li>Tampering with cargo, essential ship equipment, systems, or ship''s stores.</li>
  <li>Unauthorized access or use, including presence of stowaways.</li>
  <li>Smuggling weapons or equipment, including WMD.</li>
  <li>Use of the ship to carry persons intending to cause a security incident.</li>
  <li>Use of the ship itself as a weapon or means to cause damage.</li>
  <li>Attacks from seaward while at berth or at anchor.</li>
  <li>Attacks while at sea.</li>
</ul>

<h4>Full-Scale Exercises</h4>
<p>Exercises involving CSOs, PFSOs, relevant government authorities, and SSOs must be carried out:</p>
<ul>
  <li>At least <strong>once each calendar year</strong>.</li>
  <li>With no more than <strong>18 months</strong> between exercises.</li>
</ul>
<p>Exercises may be full-scale/live, tabletop simulation or seminar, or combined with other exercises (search and rescue, emergency response).</p>

<h3>9.3 Assessment of Security Drills and Exercises</h3>
<p>After each drill or exercise, the SSO must:</p>
<ul>
  <li>Review the exercise and ensure all mistakes and deficiencies are corrected before the next drill.</li>
  <li>Collect comments and feedback from all participating personnel.</li>
  <li>Document findings, lessons learned, and corrective actions in the security records.</li>
  <li>Report significant deficiencies to the CSO.</li>
</ul>', 'text', 9, 90, 1, NOW()),

(142, '10. Security Administration', '<h2>10. Security Administration</h2>

<h3>10.1 Documentation and Records</h3>
<p>Required documentation under SOLAS Chapter XI-1 Regulation 5 and Chapter XI-2:</p>
<ul>
  <li><strong>International Ship Security Certificate (ISSC):</strong> Issued to ships that comply with the ISPS Code requirements. Must be on board and available for inspection at all times.</li>
  <li><strong>Continuous Synopsis Record (CSR):</strong> Historical record of ship flag, name, ownership, classification, and management. Cannot be deleted or changed — amendments are added as supplements.</li>
  <li>Records of training, drills, and exercises conducted.</li>
  <li>Records of security threats and incidents.</li>
  <li>Records of maintenance and testing of security equipment.</li>
  <li>Declarations of Security — retained for a minimum period specified by the Administration (ISPS Code Part A Section 10).</li>
  <li>Access control records (gangway logs) for port stays.</li>
</ul>

<h3>10.2 Monitoring and Control</h3>
<p>The SSO and Master must continuously review the Ship Security Plan for effectiveness and relevance. Monitoring activities include:</p>
<ul>
  <li>Verifying compliance with all SSP procedures during daily operations.</li>
  <li>Reviewing security equipment operational status and maintenance logs.</li>
  <li>Assessing personnel adherence to access control and identification procedures.</li>
  <li>Analyzing incident and near-miss reports to identify security gaps.</li>
</ul>

<h3>10.3 Security Audits and Inspections</h3>
<p>Formal audits assess the Ship Security Plan''s effectiveness, as required by IMO (similar to ISM Code audits). Audits evaluate:</p>
<ul>
  <li>Adequacy of the SSP against current threat environment.</li>
  <li>Personnel training and certification compliance.</li>
  <li>Equipment maintenance and operational readiness.</li>
  <li>Record-keeping completeness and accuracy.</li>
  <li>Implementation of corrective actions from previous audits.</li>
</ul>

<h3>10.4 Reporting Non-Conformities</h3>
<p>When deficiencies are identified through audits or inspections, the SSO must:</p>
<ul>
  <li>Document the non-conformity in detail.</li>
  <li>Report it to the CSO through the established reporting system.</li>
  <li>Develop a corrective action plan with a target completion date.</li>
  <li>Implement the corrective action and verify its effectiveness.</li>
  <li>Update the SSP if the non-conformity reveals a gap in the plan.</li>
</ul>', 'text', 10, 90, 1, NOW()),

(142, '11. Security Training', '<h2>11. Security Training</h2>

<h3>11.1 Training Requirements</h3>
<p>Training requirements under the ISPS Code are set out in Parts A and B and in STCW Section A-VI/5:</p>

<h4>Who Must Be Trained</h4>
<ul>
  <li><strong>Ship Security Officer:</strong> Must hold a certificate of proficiency in Ship Security Officer duties (STCW Table A-VI/5).</li>
  <li><strong>Shipboard personnel with designated security duties:</strong> Must have training in their specific security tasks as defined in the SSP.</li>
  <li><strong>All other shipboard personnel:</strong> Must have basic security awareness training (STCW Section A-VI/6-1).</li>
</ul>

<h4>Training Content for SSOs</h4>
<p>In accordance with STCW Table A-VI/5, SSO training covers:</p>
<ul>
  <li>Maritime security policy, conventions, and regulations.</li>
  <li>Ship security documentation (SSP, ISSC, CSR, DoS).</li>
  <li>Ship security assessment techniques.</li>
  <li>Security equipment operation and maintenance.</li>
  <li>Conducting security inspections, drills, and exercises.</li>
  <li>Threat recognition and response techniques.</li>
  <li>Emergency contingency planning.</li>
  <li>Security record-keeping and reporting.</li>
</ul>

<h4>SSO Training Responsibilities</h4>
<p>The SSO is responsible for ensuring that all shipboard personnel receive appropriate security training, including:</p>
<ul>
  <li>Familiarization training for new crew members before assuming security duties.</li>
  <li>On-the-job training for personnel with designated security duties.</li>
  <li>Regular refresher training to maintain proficiency.</li>
  <li>Maintaining training records for all security-related instruction.</li>
</ul>

<h3>Summary: SSO Core Responsibilities</h3>
<p>Upon completing this course, the qualified Ship Security Officer must be able to:</p>
<ul>
  <li>Maintain and supervise the Ship Security Plan implementation at all security levels.</li>
  <li>Conduct Ship Security Assessments and on-scene security surveys.</li>
  <li>Ensure proper operation, testing, and maintenance of all security equipment.</li>
  <li>Recognize and respond appropriately to security threats and incidents.</li>
  <li>Liaise effectively with PFSOs, CSOs, and government authorities.</li>
  <li>Organize and conduct security drills, exercises, and training.</li>
  <li>Maintain accurate security records, documentation, and audit trails.</li>
  <li>Report all security incidents through proper channels promptly.</li>
</ul>
<p>Successful completion of the final examination is required for the course completion certificate issued in accordance with STCW Regulation VI/5 and ISPS Code Prescriptions 2.1.6 and 12, Part A.</p>', 'text', 11, 90, 1, NOW());

-- ─── Quiz ─────────────────────────────────────────────────────────────────────

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (142, 'Ship Security Officer — Final Examination',
        'Final examination covering ISPS Code, Ship Security Plan, threat assessment, security levels, drills, and SSO responsibilities.',
        70, 60, 1, NOW());

SET @quiz_id = LAST_INSERT_ID();

-- ─── Questions ────────────────────────────────────────────────────────────────

INSERT INTO lms_questions (quiz_id, question, type, points, order_num) VALUES
(@quiz_id, 'Which STCW regulation governs the certification of Ship Security Officers?', 'multiple_choice', 1, 1),
(@quiz_id, 'The International Ship Security Certificate (ISSC) is required under which SOLAS chapter?', 'multiple_choice', 1, 2),
(@quiz_id, 'Who is primarily responsible for developing and submitting the Ship Security Plan for approval?', 'multiple_choice', 1, 3),
(@quiz_id, 'What does ISPS Code Security Level 2 indicate?', 'multiple_choice', 1, 4),
(@quiz_id, 'How often must security drills be conducted at a minimum?', 'multiple_choice', 1, 5),
(@quiz_id, 'The Declaration of Security (DoS) must be signed by:', 'multiple_choice', 1, 6),
(@quiz_id, 'Which document provides a historical record of a ship''s flag, ownership, and management that cannot be deleted?', 'multiple_choice', 1, 7),
(@quiz_id, 'When more than 25% of shipboard personnel change, within what period must a security drill be conducted?', 'multiple_choice', 1, 8),
(@quiz_id, 'The Ship Security Assessment must be retained by whom?', 'multiple_choice', 1, 9),
(@quiz_id, 'What is the primary purpose of the Ship Security Alert System (SSAS)?', 'multiple_choice', 1, 10),
(@quiz_id, 'Under ISPS Code Part A, which part is mandatory?', 'multiple_choice', 1, 11),
(@quiz_id, 'Which UNCLOS article defines piracy?', 'multiple_choice', 1, 12),
(@quiz_id, 'Full-scale security exercises must be conducted at a maximum interval of:', 'multiple_choice', 1, 13),
(@quiz_id, 'During Security Level 3, the SSO should:', 'multiple_choice', 1, 14),
(@quiz_id, 'The Ship Security Plan is considered confidential. Who may inspect specific sections during port state control?', 'multiple_choice', 1, 15),
(@quiz_id, 'When should a Declaration of Security always be completed?', 'multiple_choice', 1, 16),
(@quiz_id, 'Which event directly triggered the adoption of SOLAS Chapter XI-2 and the ISPS Code?', 'multiple_choice', 1, 17),
(@quiz_id, 'The SSO is responsible for what aspect of the Ship Security Plan?', 'multiple_choice', 1, 18),
(@quiz_id, 'What must the SSO do after each security drill?', 'multiple_choice', 1, 19),
(@quiz_id, 'Which program requires companies to agree to protect the supply chain and identify security gaps in exchange for reduced U.S. customs inspections?', 'multiple_choice', 1, 20);

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

-- ─── Options ──────────────────────────────────────────────────────────────────

-- Q1: STCW regulation for SSO
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'STCW Regulation VI/1', 0, 0),
(@q1, 'STCW Regulation VI/5', 1, 1),
(@q1, 'STCW Regulation II/1', 0, 2),
(@q1, 'STCW Regulation V/2', 0, 3);

-- Q2: ISSC under which chapter
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'SOLAS Chapter V', 0, 0),
(@q2, 'SOLAS Chapter XI-1', 0, 1),
(@q2, 'SOLAS Chapter XI-2', 1, 2),
(@q2, 'SOLAS Chapter IX', 0, 3);

-- Q3: Who develops SSP
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'The Ship Security Officer (SSO)', 0, 0),
(@q3, 'The Company Security Officer (CSO)', 1, 1),
(@q3, 'The Port Facility Security Officer (PFSO)', 0, 2),
(@q3, 'The Master of the vessel', 0, 3);

-- Q4: Security Level 2
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Minimum security measures — normal operations', 0, 0),
(@q4, 'Heightened risk of a security incident — additional measures required', 1, 1),
(@q4, 'Probable or imminent security incident — maximum measures required', 0, 2),
(@q4, 'Post-incident recovery phase', 0, 3);

-- Q5: Minimum drill frequency
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Once per year', 0, 0),
(@q5, 'Once every six months', 0, 1),
(@q5, 'At least once every three months', 1, 2),
(@q5, 'Once per month', 0, 3);

-- Q6: DoS signed by
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'The Master and the Port Captain', 0, 0),
(@q6, 'The CSO and the Government Authority', 0, 1),
(@q6, 'The SSO and the PFSO', 1, 2),
(@q6, 'The CSO and the SSO only', 0, 3);

-- Q7: CSR definition
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'International Ship Security Certificate (ISSC)', 0, 0),
(@q7, 'Continuous Synopsis Record (CSR)', 1, 1),
(@q7, 'Ship Security Plan (SSP)', 0, 2),
(@q7, 'Declaration of Security (DoS)', 0, 3);

-- Q8: 25% crew change drill window
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Within 24 hours', 0, 0),
(@q8, 'Within one month', 0, 1),
(@q8, 'Within one week', 1, 2),
(@q8, 'Within three months', 0, 3);

-- Q9: Who retains the security assessment
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'The Port Facility Security Officer', 0, 0),
(@q9, 'The Ship Security Officer on board', 0, 1),
(@q9, 'The Company', 1, 2),
(@q9, 'The Contracting Government', 0, 3);

-- Q10: SSAS purpose
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'Transmit the ship''s position to the company automatically', 0, 0),
(@q10, 'Alert the crew to fire and flooding emergencies', 0, 1),
(@q10, 'Silently notify authorities of a security threat without alerting intruders', 1, 2),
(@q10, 'Lock down all watertight doors remotely', 0, 3);

-- Q11: Mandatory part of ISPS Code
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Part B only', 0, 0),
(@q11, 'Both Part A and Part B are mandatory', 0, 1),
(@q11, 'Part A is mandatory; Part B provides recommendations', 1, 2),
(@q11, 'Neither part is strictly mandatory', 0, 3);

-- Q12: UNCLOS piracy article
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'UNCLOS Article 58', 0, 0),
(@q12, 'UNCLOS Article 91', 0, 1),
(@q12, 'UNCLOS Article 101', 1, 2),
(@q12, 'UNCLOS Article 110', 0, 3);

-- Q13: Maximum interval between full exercises
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, '6 months', 0, 0),
(@q13, '12 months', 0, 1),
(@q13, '18 months', 1, 2),
(@q13, '24 months', 0, 3);

-- Q14: Security Level 3 SSO action
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Continue normal operations and increase patrols slightly', 0, 0),
(@q14, 'Restrict access, search all persons, and cooperate fully with authorities', 1, 1),
(@q14, 'Immediately abandon ship', 0, 2),
(@q14, 'Notify the company only and await instructions', 0, 3);

-- Q15: Port State Control and SSP
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'The full Ship Security Plan must always be provided', 0, 0),
(@q15, 'Port State Control Officers may inspect specific sections under defined circumstances', 1, 1),
(@q15, 'No part of the SSP may ever be shown to any external party', 0, 2),
(@q15, 'Only the ISSC needs to be shown, never the SSP', 0, 3);

-- Q16: When DoS must be completed
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Only when security Level 3 is declared', 0, 0),
(@q16, 'When the ship or port facility requests it, or at Security Levels 2 and 3', 1, 1),
(@q16, 'Only for passenger ships', 0, 2),
(@q16, 'Only when cargo containing dangerous goods is being handled', 0, 3);

-- Q17: Trigger for SOLAS XI-2 and ISPS Code
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'The Achille Lauro hijacking in 1985', 0, 0),
(@q17, 'The bombing of the USS Cole in 2000', 0, 1),
(@q17, 'The September 11, 2001 terrorist attacks', 1, 2),
(@q17, 'The explosion of the Limburg in 2002', 0, 3);

-- Q18: SSO role in SSP
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Developing and submitting the SSP for approval', 0, 0),
(@q18, 'Maintaining and supervising the implementation of the SSP on board', 1, 1),
(@q18, 'Approving modifications to the SSP', 0, 2),
(@q18, 'Distributing the SSP to port facilities', 0, 3);

-- Q19: After security drill
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Submit a report to the IMO within 24 hours', 0, 0),
(@q19, 'Review the exercise, correct deficiencies, and collect personnel feedback', 1, 1),
(@q19, 'Immediately conduct another drill to confirm results', 0, 2),
(@q19, 'No action required if the drill went smoothly', 0, 3);

-- Q20: C-TPAT program
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Container Security Initiative (CSI)', 0, 0),
(@q20, 'Customs-Trade Partnership Against Terrorism (C-TPAT)', 1, 1),
(@q20, 'Maritime Transportation Security Act (MTSA)', 0, 2),
(@q20, 'Ship Security Alert System (SSAS)', 0, 3);

SELECT 'SSO course content loaded successfully.' AS result;
SELECT COUNT(*) AS total_lessons FROM lms_lessons WHERE course_id = 142;
SELECT COUNT(*) AS total_quizzes FROM lms_quizzes WHERE course_id = 142;
SELECT COUNT(*) AS total_questions FROM lms_questions WHERE quiz_id = @quiz_id;
SELECT COUNT(*) AS total_options FROM lms_question_options WHERE question_id IN (SELECT id FROM lms_questions WHERE quiz_id = @quiz_id);
