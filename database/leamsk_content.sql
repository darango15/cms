-- Use of Leadership and Managerial Skills (LEAMSK) - course_id = 156
-- Source: PAM-MAE-LEAMSK-32.docx

UPDATE lms_courses SET
  course_code = 'LEAMSK',
  title = 'Use of Leadership and Managerial Skills',
  status = 'published',
  category_id = 6,
  image = 'https://pamel.edu.pa/uploads/leamsk/image1.jpeg',
  level = 'advanced',
  pass_percentage = 70,
  description = 'This course covers the mandatory minimum standards of competence for the Use of Leadership and Managerial Skills in accordance with Regulations II/2 and III/2, Sections A-II/2 and A-III/2 of the STCW Code. Topics include shipboard personnel management and training, task and workload management, effective resource management, decision-making techniques, and the development, implementation, and oversight of standard operating procedures. The course is delivered using a combination of lectures, group work, case studies, role-play, and simulator exercises over 40 contact hours.'
WHERE id = 156;

-- Remove existing content
DELETE FROM lms_question_options WHERE question_id IN (
  SELECT id FROM lms_questions WHERE quiz_id IN (
    SELECT id FROM lms_quizzes WHERE course_id = 156
  )
);
DELETE FROM lms_questions WHERE quiz_id IN (SELECT id FROM lms_quizzes WHERE course_id = 156);
DELETE FROM lms_quizzes WHERE course_id = 156;
DELETE FROM lms_lessons WHERE course_id = 156;

-- ============================================================
-- LESSONS
-- ============================================================

INSERT INTO lms_lessons (course_id, title, content, order_num, is_active, created_at) VALUES
(156, 'Introduction and International Maritime Conventions',
'<div>
<img src="https://pamel.edu.pa/uploads/leamsk/image1.jpeg" alt="Use of Leadership and Managerial Skills" style="max-width:100%;margin-bottom:16px;"/>
<h2>Introduction to the Course</h2>
<p>This course provides the mandatory minimum standards of competence for the <strong>Use of Leadership and Managerial Skills</strong> as required by Regulations II/2 and III/2 and Sections A-II/2 and A-III/2 of the STCW Code. It is designed for officers in charge at management level and covers 40 hours of instruction across the following subject areas:</p>
<ul>
  <li>Related international maritime conventions and recommendations (2 hours)</li>
  <li>Shipboard personnel management and training (5 hours)</li>
  <li>Task and workload management (7 hours)</li>
  <li>Effective resource management (10 hours)</li>
  <li>Decision-making techniques (7 hours)</li>
  <li>Development, implementation and oversight of standard operating procedures (7 hours)</li>
  <li>Final evaluation (2 hours)</li>
</ul>
<h2>The Human Element in Maritime Safety</h2>
<p>The <strong>International Maritime Organization (IMO)</strong> has recognized that the human element is a complex multi-dimensional issue affecting maritime safety, security, and marine environmental protection. The human element involves the entire spectrum of human activities performed by ships\' crews, shore-based management, regulatory bodies, and others.</p>
<p>Key milestones in IMO\'s recognition of the human element include:</p>
<ul>
  <li><strong>1989:</strong> IMO adopted the Guidelines on management for the safe operation of ships and pollution prevention — the forerunner of the International Safety Management (ISM) Code.</li>
  <li><strong>ISM Code:</strong> Made mandatory through SOLAS; shifted maritime culture from unthinking compliance with rules toward a "safety culture" of self-regulation.</li>
  <li><strong>1991:</strong> The Maritime Safety Committee (MSC) and Marine Environment Protection Committee (MEPC) established the Human Element Working Group to address the role of human error in maritime casualties.</li>
  <li><strong>Resolution A.947(23)</strong> (2003): Human Element Vision, Principles and Goals for the Organization.</li>
  <li><strong>Resolution A.772(18)</strong>: Concerning fatigue factors in manning and safety, increasing awareness of fatigue complexity.</li>
  <li><strong>MSC/Circ.1014:</strong> Guidance on fatigue mitigation and management.</li>
  <li><strong>MSC-MEPC.7/Circ.3:</strong> Framework for ergonomics and working environment to reduce personal injuries and human errors.</li>
  <li><strong>Resolution A.1118(30)</strong> (2017): Revised Guidelines on implementation of the ISM Code by Administrations.</li>
</ul>
<h3>Key Discussion Points</h3>
<ul>
  <li>The major maritime accidents of the mid-1980s occurred despite IMO\'s strict technical standards — analysis showed that <strong>human error contributed to the vast majority</strong>.</li>
  <li>Effective leadership and managerial skills are directly linked to accident prevention.</li>
  <li>The ISM Code endeavors to develop a "safety culture" — top-to-bottom self-regulation, taking responsibility for actions that improve safety and performance.</li>
  <li>Leadership and management skills are not just technical — they encompass communication, teamwork, situational awareness, and decision-making under pressure.</li>
</ul>
</div>',
1, 1, NOW()),

(156, 'Shipboard Personnel Management and Training',
'<div>
<h2>Shipboard Personnel Management and Training</h2>
<h3>2.1 The Human Element in Shipboard Operations</h3>
<p>The human element plays a vital role in shipping. Motivated and well-trained crews are essential for safe and efficient vessel operations. Analysis of shipping disasters consistently shows the consequences of ineffective leadership and poor managerial skills.</p>
<h4>Key Areas of Focus</h4>
<ul>
  <li><strong>Shipboard organizations:</strong> Chain of command, KUPs (Knowledge, Understanding, and Proficiency) relevant to management, operational, and support levels under the STCW Code.</li>
  <li><strong>Multi-cultural crewing:</strong> Individual traits, attitudes, behaviors, cultural diversity, and cross-cultural relationships in modern multinational crews.</li>
  <li><strong>Human nature:</strong> Sense-making, individual perception, empathy, and communication.</li>
  <li><strong>Human error:</strong> Current understanding of human error, lack of situational awareness, causes, impact, and mitigation strategies.</li>
  <li><strong>Leadership:</strong> Leadership styles, characteristics, effectiveness in shipboard situations, and adaptation to context.</li>
</ul>
<h3>Five Main Types of Team Skills Essential to Team Effectiveness</h3>
<ol>
  <li><strong>Team Leadership:</strong> Motivating, directing, coordinating, assessing, and developing team members. Clarifying roles and expectations, engaging in planning and feedback, synchronizing contributions.</li>
  <li><strong>Mutual Monitoring:</strong> The ability to monitor each other\'s performance within a common understanding of constraints and opportunities. Identifying mistakes and providing constructive feedback.</li>
  <li><strong>Back-up Behavior:</strong> Understanding each other\'s tasks and responsibilities to anticipate problems or take over when needed. Avoiding difficulties for colleagues or sharing the workload.</li>
  <li><strong>Adaptability:</strong> Responding to continuous environmental changes that affect plans. Identifying changes, understanding their implications, and developing new plans accordingly.</li>
  <li><strong>Team Orientation:</strong> Seeing oneself as a team member with a common goal rather than independent goals. Being receptive to suggestions, involving others in goal setting, strategy, and information sharing.</li>
</ol>
<h3>Motivating the Crew</h3>
<p>Effective leaders motivate their crew through the following strategies:</p>
<ul>
  <li>Share the organizational vision.</li>
  <li>Communicate constantly and transparently.</li>
  <li>Make people feel appreciated and valued.</li>
  <li>Support new ideas and creative thinking.</li>
  <li>Give challenging tasks that develop competence.</li>
  <li>Give opportunities to grow professionally.</li>
  <li>Empower each individual to take responsibility.</li>
  <li>Manage each crew member individually, recognizing their strengths and weaknesses.</li>
  <li>Avoid boredom and monotony; create healthy competition with a reward system.</li>
  <li>Celebrate each success and maintain a positive team spirit.</li>
</ul>
<h3>Authority and Assertiveness</h3>
<p><strong>Assertiveness</strong> is the honest, direct, and appropriate expression of feelings, thoughts, and beliefs. It may be derived from competence, knowledge, skills, experience, or personality. <strong>Authority</strong> is associated with the team leader or person-in-charge; <strong>assertiveness</strong> is expected from all officers, junior members, and crew.</p>
<p>A proper balance between authority and assertiveness creates the safest situation. Everyone must be assertive enough to contribute and challenge decisions when necessary.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Combination</th><th>Risk Level</th><th>Effect</th></tr>
  <tr><td>High authority + low assertiveness</td><td>High</td><td>Team does not participate; ideas are suppressed.</td></tr>
  <tr><td>Low authority + high assertiveness</td><td>Lower</td><td>Least dangerous — assertiveness compensates for lack of authority.</td></tr>
  <tr><td>High authority + high assertiveness</td><td>Very High</td><td>Personality clashes, stress, high workload.</td></tr>
  <tr><td>Low authority + low assertiveness</td><td>Most Dangerous</td><td>Problems unrecognized; decisions not made or incorrect.</td></tr>
</table>
<h3>Situational Awareness</h3>
<p><strong>Situational Awareness (SA)</strong> is being aware of one\'s surroundings: where you are, where you should be, and what the potential threats are. SA is knowledge-based, individualistic, and potentially different for each team member. It is the foundation for decision-making and instructing others.</p>
<ul>
  <li>Accuracy depends on perception — reality may differ from what is perceived.</li>
  <li>SA is influenced by information quality, experience, and workplace distractions.</li>
  <li>Temporary loss of SA is a recognized causal factor in maritime accidents.</li>
  <li>To improve SA: regularly pause for mental assessment; ask — Is there a threat? What is its extent? Should I stop? How can I safely reduce the threat?</li>
</ul>
<h3>2.2 Shipboard Training</h3>
<p>Shipboard training is a gradual process of acquiring knowledge through instruction and hands-on experience. It encompasses both formal and informal learning for continued professional development.</p>
<h4>Basic Principles of Learning</h4>
<ul>
  <li>Learning builds on knowledge that is almost already known.</li>
  <li>Learning is more effective when viewed as intrinsically interesting and rewarding.</li>
  <li>Learners must see the point and aspire to the benefits of learning.</li>
  <li>Trust in the source of materials and instructors is essential.</li>
</ul>
<h4>Mentoring vs. Coaching</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Dimension</th><th>Mentoring</th><th>Coaching</th></tr>
  <tr><td>Focus</td><td>Person, career, and growth</td><td>Job performance and specific competences</td></tr>
  <tr><td>Role</td><td>Power-free; facilitates and teaches</td><td>Set agenda; reinforces/changes skills and behaviors</td></tr>
  <tr><td>Relationship</td><td>Partners choose each other</td><td>Comes with the job role</td></tr>
  <tr><td>Source of influence</td><td>Perceived value to the protege</td><td>Implied or actual authority</td></tr>
  <tr><td>Arena</td><td>Broader life, career, and professional issues</td><td>Task-related knowledge and skill improvement</td></tr>
</table>
</div>',
2, 1, NOW()),

(156, 'Task and Workload Management',
'<div>
<h2>Task and Workload Management</h2>
<h3>3.1 Planning and Coordination</h3>
<p>Effective planning and coordination are fundamental to shipboard management. Key principles include:</p>
<ul>
  <li>Break down the plan and identify appropriate time scales.</li>
  <li>Use SMART objectives (Specific, Measurable, Achievable, Relevant, Time-bound).</li>
  <li>Communicate the plan clearly to all team members.</li>
  <li>Monitor and review the plan throughout execution.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/leamsk/image2.png" alt="Task and Workload Management" style="max-width:100%;margin:16px 0;"/>
<h3>Understanding WORKLOAD</h3>
<p>Workload has two dimensions:</p>
<ul>
  <li><strong>Real (practical) workload:</strong> The amount of work that must actually be done in a given period.</li>
  <li><strong>Perceived (mental) workload:</strong> The amount of work a person believes they must deal with.</li>
</ul>
<p>The range of workload states: <strong>Underload → Normal → High → Overload</strong>. Everyone is responsible for their own workload and shares responsibility for the team\'s total workload. Feelings and attitudes significantly influence how people react to workload levels.</p>
<h4>Controlling High Workload</h4>
<ul>
  <li><strong>Decrease tasks:</strong> Postpone or eliminate non-critical tasks.</li>
  <li><strong>Increase available time:</strong> Delay non-urgent activities.</li>
  <li><strong>Reduce task value:</strong> Use pre-planning and effective delegation.</li>
</ul>
<h4>Pre-planning</h4>
<ul>
  <li>Long-term strategy: Define procedures, job functions, and new technologies in advance.</li>
  <li>Think about expected and unexpected tasks before they arise.</li>
  <li>Consider time, financial, resource, and manpower constraints.</li>
  <li>Account for individual skills and abilities within the team.</li>
</ul>
<img src="https://pamel.edu.pa/uploads/leamsk/image3.png" alt="Delegation" style="max-width:100%;margin:16px 0;"/>
<h4>Delegation</h4>
<p>Delegation is a critical management skill. Although it is recognized as a good management practice, few leaders delegate effectively due to fear or a lack of trust. Effective delegation requires:</p>
<ul>
  <li>Deciding which tasks to delegate, to whom, how, and why.</li>
  <li>Identifying non-delegable tasks first (safety-critical or high-complexity tasks).</li>
  <li>Selecting the right person based on skills, competence, personality, and current workload.</li>
  <li>Recognizing that delegation provides a training opportunity for the delegatee.</li>
</ul>
<h3>3.2 Personnel Assignment and Briefing</h3>
<p>When assigning tasks to crew members, effective briefing is essential:</p>
<ul>
  <li>Clearly communicate what is expected of the assigned person.</li>
  <li>Specify time and resources available for the task.</li>
</ul>
<p>During execution:</p>
<ul>
  <li>Avoid interfering once the task is underway.</li>
  <li>Maintain a balance between monitoring progress and trusting the ability of the trainee.</li>
  <li>Stimulate and guide without criticism.</li>
  <li>Progressively increase independence as tasks are completed.</li>
  <li>Exhibit trust by gradually increasing responsibility.</li>
</ul>
<h3>3.3 Time and Resource Constraints</h3>
<p>Management-level officers must:</p>
<ul>
  <li>Concentrate on the individual\'s ability to carry out onboard activities to meet required standards.</li>
  <li>Describe human limitations and resource constraints, and how shipboard situations should be addressed under them.</li>
  <li>Emphasize the impact of excessive workload leading to stress and fatigue.</li>
  <li>Highlight measures for satisfactory human element performance, including fatigue avoidance and mitigation through adequate rest.</li>
</ul>
<h3>3.4 Prioritization</h3>
<img src="https://pamel.edu.pa/uploads/leamsk/image4.png" alt="Prioritization" style="max-width:100%;margin:16px 0;"/>
<p>Prioritization is the process of making choices about what to do and what not to do. It requires recognizing what is important and understanding the difference between <strong>urgency</strong> and <strong>importance</strong>.</p>
<ul>
  <li><strong>Important tasks:</strong> Help achieve long-term goals or have significant long-term consequences.</li>
  <li><strong>Urgent tasks:</strong> Require immediate attention regardless of their long-term importance.</li>
</ul>
<p>Effective prioritization allows officers to:</p>
<ul>
  <li>Focus first on tasks that are both important AND urgent (critical tasks, safety-related tasks).</li>
  <li>Then address tasks that are important but NOT urgent — these are most valuable for long-term performance improvement.</li>
  <li>Defer or eliminate tasks that are neither important nor urgent.</li>
</ul>
</div>',
3, 1, NOW()),

(156, 'Effective Resource Management',
'<div>
<h2>Effective Resource Management</h2>
<p>Resource management in a shipboard context encompasses the allocation, assignment, and prioritization of human and material resources to achieve safe and efficient vessel operations. A key distinction is made between <strong>leadership</strong> and <strong>management</strong>: leaders have people who follow them; managers have people who work for them. The biggest difference lies in how each motivates and interacts with their team.</p>
<img src="https://pamel.edu.pa/uploads/leamsk/image5.png" alt="Management Styles" style="max-width:100%;margin:16px 0;"/>
<h3>4.1 Styles of Management</h3>
<img src="https://pamel.edu.pa/uploads/leamsk/image6.png" alt="Management Styles Diagram" style="max-width:100%;margin-bottom:16px;"/>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%;">
  <tr><th>Style</th><th>Focus</th><th>Characteristics</th><th>Effects</th></tr>
  <tr>
    <td><strong>Tiger</strong></td>
    <td>Very high performance, very low people</td>
    <td>Authoritarian; one-way communication; dislikes challenges; one-man-band principle</td>
    <td>Quiet/defensive team; poor communication; decline in performance; low morale</td>
  </tr>
  <tr>
    <td><strong>Penguin</strong></td>
    <td>Very low performance, very high people</td>
    <td>Too much unimportant communication; weak challenges; too supportive; tolerates low standards</td>
    <td>Lowered professional standards; low morale; little on-the-job training; low respect for leadership</td>
  </tr>
  <tr>
    <td><strong>Snail</strong></td>
    <td>Very low on both performance and people</td>
    <td>Low standards; poor communications; lack of authority; poor short-term strategy</td>
    <td>Performance and team cohesion both deteriorate</td>
  </tr>
  <tr>
    <td><strong>Sheep</strong></td>
    <td>Neither high nor low on either dimension</td>
    <td>Low standards; poor communications; low authority; very little performance improvement</td>
    <td>Mediocre outcomes with no growth trajectory</td>
  </tr>
  <tr>
    <td><strong>Dolphin</strong></td>
    <td>Very high on both performance and people</td>
    <td>Good effective communications; acceptance of challenges; use of short-term strategies</td>
    <td>High performance, strong team cohesion, motivated crew</td>
  </tr>
</table>
<h3>Models of Leadership</h3>
<p>Five recognized models of effective leadership:</p>
<ol>
  <li><strong>Model the Path (Leadership by Example):</strong> Establish principles for how others should be treated. Create standards of excellence and set the example. Set interim goals for small wins. Clear bureaucratic obstacles and create opportunities for others to achieve targets.</li>
  <li><strong>Inspiration of a Shared Vision:</strong> Have the passion and belief to make a difference. Envision the future and create a unique image of what the organization can become. Enlist others through magnetism and quiet persuasion to achieve desired outcomes.</li>
  <li><strong>Challenge the Process:</strong> Search for opportunities to change the status quo. Look for innovative ways to improve the organization. Experiment, take calculated risks, and accept disappointments and failures as learning opportunities.</li>
  <li><strong>Enable Others to Act:</strong> Foster collaboration and team-building. Understand that mutual respect sustains extraordinary efforts. Create an atmosphere of trust and human dignity. Strengthen and empower others; recognize their contributions.</li>
  <li><strong>Encourage Thought and Passion:</strong> Recognize accomplishments; share the rewards of collective efforts. Provide hope and encourage determination to perform better.</li>
</ol>
<h3>4.2 Effective Communication on Board and Ashore</h3>
<p>Effective communication is described as the <strong>most important aspect of teamwork and managerial skills</strong>. Key principles include:</p>
<ul>
  <li>Encourage effective communication from the start of any operation or course.</li>
  <li>Instructors and officers must be effective communicators: knowledgeable in team building, able to explain clearly, encourage input, and respond to feedback.</li>
  <li>Multi-cultural and multi-lingual crews reflect real shipboard situations; care is needed with team members who have limited English proficiency.</li>
  <li>Use closed-loop communication: confirm receipt and understanding of all critical messages.</li>
  <li>Use case studies to emphasize realism in shipboard operations.</li>
</ul>
<h3>4.3 Decisions That Reflect Team Experience</h3>
<p>Decision-making is the process of processing information to produce a decision, conclusion, or judgment. Categories of decisions at sea:</p>
<ul>
  <li><strong>Routine:</strong> Simple choices covered by established guidelines and experience (e.g., adjusting vessel speed).</li>
  <li><strong>Instant:</strong> Little or no time for judgment; potentially high risk/stress situations (e.g., grounding avoidance).</li>
  <li><strong>Considered:</strong> Requires careful judgment linked to short-term strategies, with input from the entire team (e.g., port entry in bad weather).</li>
</ul>
<h3>4.4 Assertiveness and Leadership, Including Motivation</h3>
<p>Assertiveness increases an officer\'s ability to reach goals while maintaining the rights and dignity of others. Common myths about assertiveness include: thinking others\' feelings are more important, fearing you will offend others, or feeling that one\'s own needs are not important enough to express.</p>
<p><strong>Assertive Rights:</strong></p>
<ul>
  <li>The right to be assertive.</li>
  <li>The right to request a behavior change if others infringe on your rights.</li>
  <li>The right to use your own time to formulate an answer.</li>
  <li>The right to express needs even if they seem illogical to others.</li>
</ul>
<h3>4.5 Obtaining and Maintaining Situational Awareness</h3>
<p>Situational Awareness (SA) is the foundation of safe decision-making. SA is influenced by the quality of information available, the individual\'s experience, and workplace distractions such as stress, fatigue, and high workload.</p>
<ul>
  <li>Encourage a culture where team members regularly pause to assess their situational awareness.</li>
  <li>Do not allow routine or familiarity to cause a false sense of security — experienced people can lose SA precisely because routine tasks feel automatic.</li>
  <li>Use multi-media aids and simulator exercises to practice maintaining SA in high-pressure scenarios.</li>
</ul>
</div>',
4, 1, NOW()),

(156, 'Decision-Making Techniques',
'<div>
<h2>Decision-Making Techniques</h2>
<p>Decision-making is a core competency for management-level seafarers. It requires the ability to assess situations and risks, generate and evaluate options, select the best course of action, and evaluate the effectiveness of the outcome.</p>
<h3>5.1 Situation and Risk Assessment</h3>
<p>Every decision begins with a thorough assessment of the situation and its associated risks:</p>
<ul>
  <li>Assess the quality of available information: Is it relevant? Is it accurate?</li>
  <li>Search for missing information before committing to a decision.</li>
  <li>Involve team members in the assessment process where time permits.</li>
  <li>Be aware of time pressures — do not let urgency override thoroughness where safety is concerned.</li>
  <li>Respond appropriately: safety is always the first priority.</li>
</ul>
<h4>Risk Assessment Charter</h4>
<p>Defining the scope of risk assessment is essential for efficiency. The charter must identify: the reason for the study, management requirements, and the information needed. The appropriate level of detail is crucial — apply detailed effort to higher-risk situations and use approximate data in the early stages.</p>
<h3>5.2 Identifying and Considering Generated Options</h3>
<p>After defining the problem, effective decision-makers generate and evaluate multiple options:</p>
<ul>
  <li><strong>Facts:</strong> Gather relevant information and use it appropriately.</li>
  <li><strong>Values:</strong> Understand that decisions are shaped by the values of the decision-maker and the organization.</li>
  <li><strong>Means:</strong> Determine how to reach the objective based on available resources.</li>
  <li><strong>Ends:</strong> Set intermediate goals that lead to the final objective. Decision-making is an iterative process.</li>
</ul>
<h4>The Six C\'s of Decision-Making</h4>
<ol>
  <li><strong>Construct:</strong> Build a clear picture of the situation.</li>
  <li><strong>Compile:</strong> Create a list of requirements and constraints.</li>
  <li><strong>Collect:</strong> Gather information on all alternatives.</li>
  <li><strong>Compare:</strong> Evaluate alternatives against requirements.</li>
  <li><strong>Consider:</strong> Think through "what might go wrong" with each option.</li>
  <li><strong>Commit:</strong> Make and commit to the chosen decision.</li>
</ol>
<h4>Innovative Decision-Making: Generating Alternatives</h4>
<ul>
  <li>Identify known solutions that have been applied in similar contexts.</li>
  <li>Consider solutions used in other industries or different situations.</li>
  <li>Consider options that were available previously but not pursued — they may have evolved or improved.</li>
</ul>
<h3>5.3 Selecting Course of Action</h3>
<p>Key principle: <em>"A good plan executed now is better than a perfect plan executed too late."</em> Once a decision is made, commit to it fully. Quick changes may be incomplete or introduce new risks. Update the decision only if significant new information becomes available that changes the risk calculus.</p>
<h4>Decision-Making Process Steps</h4>
<ol>
  <li>Rely on experience and pattern recognition (developed through practice).</li>
  <li>Improve pattern recognition by continuously building situational awareness.</li>
  <li>Practice making and communicating decisions under time pressure.</li>
  <li>Balance the quality of available information with the time available to decide.</li>
  <li>Think ahead: prepare for likely scenarios before they arise.</li>
</ol>
<h3>5.4 Evaluation of Outcome Effectiveness</h3>
<p>After implementing a decision, evaluate its effectiveness:</p>
<ul>
  <li>Did the outcome match the objective?</li>
  <li>What was the worst-case outcome? The best-case outcome?</li>
  <li>Assign approximate probabilities to different outcomes to evaluate the suitability of the chosen course of action in retrospect.</li>
  <li>Use after-action reviews (debriefs) with the team to identify lessons learned and improve future decision-making.</li>
</ul>
<h4>Observations on Decision-Making Skills</h4>
<ul>
  <li>Decision-making skills develop through deliberate practice.</li>
  <li>Officers at lower command levels generally need faster, more direct decisions; senior management decisions involve more deliberate analysis.</li>
  <li>Pattern recognition — developed from experience — is the basis of rapid, effective decision-making.</li>
  <li>Two complementary modes: intuitive/reactive (based on experience) and calculated/analytical (based on deliberate reasoning).</li>
</ul>
</div>',
5, 1, NOW()),

(156, 'Standard Operating Procedures and Evaluation',
'<div>
<h2>Standard Operating Procedures (SOPs) and Evaluation</h2>
<h3>6.1 Development of Standard Operating Procedures</h3>
<p>A <strong>Standard Operating Procedure (SOP)</strong> is a document describing regularly recurring operations relevant to quality and safety. Its purpose is to ensure that operations are carried out correctly and consistently, every time, by every crew member regardless of experience level.</p>
<h4>Key Features of an SOP</h4>
<ul>
  <li>An SOP is a <strong>compulsory instruction</strong> — deviations must be documented, including who authorized the deviation and the complete alternative procedure followed.</li>
  <li>The original SOP must be kept secure; working copies must be authenticated.</li>
  <li>The term "SOP" may not always be used — equivalent documents include protocols, instructions, registration forms, and worksheets.</li>
</ul>
<h4>Categories of SOPs on Board</h4>
<ul>
  <li>Fundamental SOPs: Instructions on how to develop other SOPs.</li>
  <li>Methodical SOPs: Describe a complete testing system or investigation method.</li>
  <li>Safety precaution SOPs.</li>
  <li>Equipment and instrument operation SOPs.</li>
  <li>Analytical method SOPs.</li>
  <li>Sample receiving and registration SOPs.</li>
  <li>Quality Assurance SOPs.</li>
  <li>Archiving and complaint-handling SOPs.</li>
</ul>
<h3>6.2 Implementation of Standard Operating Procedures</h3>
<p>Effective implementation requires that:</p>
<ul>
  <li>All crew members are trained on the SOP before it is put into practice.</li>
  <li>The SOP is written in clear, unambiguous language accessible to all crew regardless of language background.</li>
  <li>Results of SOP implementation are analyzed and reviewed periodically.</li>
  <li>Feedback from those using the SOP is incorporated into future revisions.</li>
</ul>
<h3>6.3 Oversight of Standard Operating Procedures</h3>
<p>The lifecycle of a well-managed SOP follows these stages:</p>
<ol>
  <li><strong>Planning:</strong> Identify current process steps. Consider how and why they are done. Determine how the SOP will improve the process and how improvement will be measured.</li>
  <li><strong>First Draft:</strong> Create a detailed, sequential list of all steps.</li>
  <li><strong>Internal Review:</strong> Collect input from the workers who carry out the procedure. Revise based on feedback.</li>
  <li><strong>External Review:</strong> Involve technical advisors or subject-matter experts. Revise again.</li>
  <li><strong>Testing:</strong> Test by following each step exactly as written. Have someone unfamiliar with the procedure follow it independently. Revise based on results.</li>
  <li><strong>Posting:</strong> Finalize and post the SOP in the workplace where it is accessible to those who need it.</li>
  <li><strong>Training:</strong> Train and re-train all personnel to follow the SOP exactly. Document all training.</li>
</ol>
<h3>7. Evaluation</h3>
<p>Evaluation is the process of determining whether learning has taken place. It enables the assessor (instructor) to determine if the learner has gained the required skills and knowledge needed at a given point during the course.</p>
<h4>Purposes of Evaluation</h4>
<ul>
  <li>Assist student learning by identifying gaps and reinforcing key concepts.</li>
  <li>Identify each student\'s strengths and weaknesses.</li>
  <li>Assess the effectiveness of a particular instructional strategy.</li>
  <li>Assess and improve the effectiveness of curriculum programs.</li>
  <li>Assess and improve overall teaching effectiveness.</li>
</ul>
<h4>Decision-Making Models Used in This Course</h4>
<ul>
  <li><strong>SWOT Analysis:</strong> Feasibility study examining Strengths, Weaknesses, Opportunities, and Threats — useful for evaluating management decisions and SOP implementations.</li>
  <li><strong>Maslow\'s Pyramid:</strong> Understanding human needs and behavior; helps identify HR problems that affect team performance and motivation.</li>
</ul>
<h4>Simulator Exercises</h4>
<p>All subject areas are reinforced through simulator exercises involving the interface between engineering officers and navigational officers. These exercises develop the ability to apply leadership and managerial skills in realistic, high-pressure onboard scenarios.</p>
</div>',
6, 1, NOW());

-- ============================================================
-- QUIZ
-- ============================================================

INSERT INTO lms_quizzes (course_id, title, description, pass_percentage, time_limit, is_active, created_at)
VALUES (156, 'Use of Leadership and Managerial Skills — Final Assessment',
'Comprehensive assessment covering shipboard personnel management, task and workload management, resource management, decision-making techniques, and standard operating procedures.',
70, 60, 1, NOW());

SET @qid = LAST_INSERT_ID();

INSERT INTO lms_questions (quiz_id, question, type, order_num, created_at) VALUES
(@qid, 'Which STCW regulations govern the mandatory minimum standards of competence for the Use of Leadership and Managerial Skills?', 'multiple_choice', 1, NOW()),
(@qid, 'Which management style is characterized by a very high focus on performance and a very low focus on people/human resources?', 'multiple_choice', 2, NOW()),
(@qid, 'Which management style has a very high focus on BOTH performance AND people, using effective communication and accepting challenges?', 'multiple_choice', 3, NOW()),
(@qid, 'What are the Five Main Types of Team Skills essential to team effectiveness?', 'multiple_choice', 4, NOW()),
(@qid, 'Which of the following is NOT one of the Six C\'s of Decision-Making?', 'multiple_choice', 5, NOW()),
(@qid, 'What is Situational Awareness (SA) in the context of shipboard management?', 'multiple_choice', 6, NOW()),
(@qid, 'What is the main difference between coaching and mentoring?', 'multiple_choice', 7, NOW()),
(@qid, 'Which type of decision requires fast reactions with little or no time for judgment and is typically associated with high risk and stress?', 'multiple_choice', 8, NOW()),
(@qid, 'What is the primary purpose of a Standard Operating Procedure (SOP)?', 'multiple_choice', 9, NOW()),
(@qid, 'Which combination of authority and assertiveness is considered the MOST dangerous on board?', 'multiple_choice', 10, NOW()),
(@qid, 'What are the four range categories of workload as described in the course?', 'multiple_choice', 11, NOW()),
(@qid, 'What does "back-up behavior" mean as a team skill?', 'multiple_choice', 12, NOW()),
(@qid, 'Which IMO Code was made mandatory through SOLAS and requires a "safety culture" of self-regulation?', 'multiple_choice', 13, NOW()),
(@qid, 'What is the correct sequence for developing a Standard Operating Procedure (SOP)?', 'multiple_choice', 14, NOW()),
(@qid, 'What is assertiveness, as defined in this course?', 'multiple_choice', 15, NOW()),
(@qid, 'Which management style has very low focus on BOTH performance and people, with characteristics including poor communications and lack of authority?', 'multiple_choice', 16, NOW()),
(@qid, 'When a temporary loss of Situational Awareness occurs, what is the recognized consequence?', 'multiple_choice', 17, NOW()),
(@qid, 'Which of the Five Models of Leadership involves fostering collaboration, building trust, empowering others, and recognizing accomplishments?', 'multiple_choice', 18, NOW()),
(@qid, 'What is the key principle regarding timing when selecting a course of action in decision-making?', 'multiple_choice', 19, NOW()),
(@qid, 'According to this course, what is the most important aspect of teamwork and managerial skills?', 'multiple_choice', 20, NOW());

SET @q1 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 1);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q1, 'Regulations I/1 and I/2 of the STCW Code', 0, 1),
(@q1, 'Regulations II/2 and III/2 of the STCW Code', 1, 2),
(@q1, 'Regulations II/1 and III/1 of the STCW Code', 0, 3),
(@q1, 'Regulations IV/2 and V/2 of the STCW Code', 0, 4);

SET @q2 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 2);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q2, 'Penguin Style', 0, 1),
(@q2, 'Snail Style', 0, 2),
(@q2, 'Tiger Style', 1, 3),
(@q2, 'Sheep Style', 0, 4);

SET @q3 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 3);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q3, 'Tiger Style', 0, 1),
(@q3, 'Penguin Style', 0, 2),
(@q3, 'Sheep Style', 0, 3),
(@q3, 'Dolphin Style', 1, 4);

SET @q4 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 4);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q4, 'Leadership, communication, planning, decision-making, and coordination', 0, 1),
(@q4, 'Team leadership, mutual monitoring, back-up behavior, adaptability, and team orientation', 1, 2),
(@q4, 'Authority, assertiveness, delegation, motivation, and situational awareness', 0, 3),
(@q4, 'Task management, resource allocation, communication, evaluation, and risk assessment', 0, 4);

SET @q5 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 5);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q5, 'Construct', 0, 1),
(@q5, 'Compile', 0, 2),
(@q5, 'Collaborate', 1, 3),
(@q5, 'Commit', 0, 4);

SET @q6 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 6);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q6, 'The ability to delegate tasks effectively to other team members', 0, 1),
(@q6, 'Knowledge of all relevant international maritime regulations', 0, 2),
(@q6, 'Being aware of surroundings — where you are, where you should be, and potential threats', 1, 3),
(@q6, 'The process of communicating decisions clearly to the team', 0, 4);

SET @q7 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 7);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q7, 'Coaching focuses on broader career growth; mentoring focuses on specific job performance', 0, 1),
(@q7, 'Coaching focuses on specific competences and job performance; mentoring focuses on broader career and personal development', 1, 2),
(@q7, 'Coaching is always informal; mentoring is always formal and structured', 0, 3),
(@q7, 'There is no significant practical difference between coaching and mentoring', 0, 4);

SET @q8 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 8);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q8, 'Routine decision', 0, 1),
(@q8, 'Considered decision', 0, 2),
(@q8, 'Instant decision', 1, 3),
(@q8, 'Collaborative decision', 0, 4);

SET @q9 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 9);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q9, 'To assign responsibility in case of accidents or failures onboard', 0, 1),
(@q9, 'To replace individual judgment in all onboard decision-making situations', 0, 2),
(@q9, 'To ensure that operations are carried out correctly and consistently', 1, 3),
(@q9, 'To document all communications between officers and the shore-based company', 0, 4);

SET @q10 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 10);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q10, 'High authority and high assertiveness', 0, 1),
(@q10, 'High authority and low assertiveness', 0, 2),
(@q10, 'Low authority and high assertiveness', 0, 3),
(@q10, 'Low authority and low assertiveness', 1, 4);

SET @q11 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 11);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q11, 'Minimal, Moderate, Heavy, and Critical', 0, 1),
(@q11, 'Underload, Normal, High, and Overload', 1, 2),
(@q11, 'Low, Acceptable, Elevated, and Dangerous', 0, 3),
(@q11, 'Light, Standard, Heavy, and Emergency', 0, 4);

SET @q12 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 12);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q12, 'Providing verbal support and encouragement to team members during difficult tasks', 0, 1),
(@q12, 'Understanding each other\'s tasks to anticipate problems or take over responsibilities when needed', 1, 2),
(@q12, 'Documenting all team decisions for accountability and future reference', 0, 3),
(@q12, 'Reviewing past decisions as a team to learn from mistakes', 0, 4);

SET @q13 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 13);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q13, 'The MARPOL Convention', 0, 1),
(@q13, 'The COLREGS Convention', 0, 2),
(@q13, 'The International Safety Management (ISM) Code', 1, 3),
(@q13, 'The Load Line Convention', 0, 4);

SET @q14 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 14);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q14, 'Testing → Drafting → Review → Posting → Training → Approval', 0, 1),
(@q14, 'Planning → First Draft → Internal Review → External Review → Testing → Posting → Training', 1, 2),
(@q14, 'External Review → Internal Review → Drafting → Testing → Approval → Distribution', 0, 3),
(@q14, 'Approval → Drafting → Review → Testing → Training → Posting', 0, 4);

SET @q15 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 15);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q15, 'The formal authority granted to a leader by virtue of their rank and position', 0, 1),
(@q15, 'The ability to give orders and expect immediate compliance from team members', 0, 2),
(@q15, 'The honest, direct, and appropriate expression of feelings, thoughts, and beliefs', 1, 3),
(@q15, 'The capacity to motivate and inspire team members through rewards', 0, 4);

SET @q16 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 16);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q16, 'Tiger Style', 0, 1),
(@q16, 'Penguin Style', 0, 2),
(@q16, 'Snail Style', 1, 3),
(@q16, 'Dolphin Style', 0, 4);

SET @q17 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 17);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q17, 'Increased communication and coordination among team members', 0, 1),
(@q17, 'It is a recognized causal factor in maritime accidents', 1, 2),
(@q17, 'Improved efficiency in workload delegation among the crew', 0, 3),
(@q17, 'Temporary loss of SA has no significant effect if quickly corrected', 0, 4);

SET @q18 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 18);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q18, 'Model the Path (Leadership by Example)', 0, 1),
(@q18, 'Inspiration of a Shared Vision', 0, 2),
(@q18, 'Challenge the Process', 0, 3),
(@q18, 'Enable Others to Act', 1, 4);

SET @q19 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 19);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q19, 'Always wait for perfect information before committing to any decision', 0, 1),
(@q19, 'A good plan executed now is better than a perfect plan executed too late', 1, 2),
(@q19, 'Delay commitment to allow the team to reach full consensus', 0, 3),
(@q19, 'Change the decision quickly if any new information becomes available', 0, 4);

SET @q20 = (SELECT id FROM lms_questions WHERE quiz_id = @qid AND order_num = 20);
INSERT INTO lms_question_options (question_id, option_text, is_correct, order_num) VALUES
(@q20, 'Strict adherence to the chain of command', 0, 1),
(@q20, 'Effective communication on board and ashore', 1, 2),
(@q20, 'Technical knowledge of vessel systems and regulations', 0, 3),
(@q20, 'Proper documentation of all onboard decisions and procedures', 0, 4);
