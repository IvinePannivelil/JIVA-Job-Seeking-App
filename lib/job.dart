class Job {
  final String companyName;
  final String companyImage;
  final String jobTitle;
  final String location;
  final String locationShort;
  final String salary;
  final String jobType;
  final List<String> requirements;
  final String about;
  final String timeStamp;

  Job({
    required this.companyName,
    required this.companyImage,
    required this.jobTitle,
    required this.location,
    required this.locationShort,
    required this.salary,
    required this.jobType,
    required this.requirements,
    required this.about,
    required this.timeStamp,
  });
}

final recentJobs = [
  Job(
    companyName: "Twitter",
    companyImage: "assets/ic_twitter.png",
    jobTitle: "Software Developer",
    location: "United States",
    locationShort: "UK",
    salary: "5K",
    jobType: "Full Time | WFH",
    requirements: [
      "Bachelor’s degree in Computer Science or related field",
      "Proficiency in programming languages",
      "Strong problem-solving skills",
      "Ability to work in a collaborative environment"
    ],
    about:
        "Join a team at Twitter where software development isn't just a job—it's a gateway to revolutionizing social connectivity. As a Software Developer, you'll play a pivotal role in shaping our platform's future. From architecting cutting-edge features to refining user interactions, your code will define how millions connect, engage, and share ideas in real-time.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Facebook",
    companyImage: "assets/ic_facebook.png",
    jobTitle: "iOS Developer",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFO",
    requirements: [
      "Bachelor’s degree in Computer Science, Engineering, or related technical field (or equivalent practical experience)",
      "Proficiency in Swift and Objective-C, with a deep understanding of iOS frameworks",
      "Experience with RESTful APIs and third-party libraries and APIs",
      "Solid understanding of the full mobile development lifecycle, including automated testing and building",
      "Strong problem-solving skills and ability to troubleshoot complex issues",
      "Excellent communication skills and ability to work effectively in a collaborative team environment",
    ],
    about:
        "As an iOS Developer at Facebook, you will be part of a talented team responsible for crafting high-performance applications that redefine how billions of people connect, share, and communicate globally. You will collaborate closely with designers, product managers, and other engineers to innovate and deliver world-class experiences on iOS devices",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Google",
    companyImage: "assets/ic_google.png",
    jobTitle: "Product Designer",
    location: "Canada",
    locationShort: "CA",
    salary: "5K",
    jobType: "Full Time | WFA",
    requirements: [
      "Bachelor’s degree in Design, Human-Computer Interaction (HCI), or a related field, or equivalent practical experience",
      "Proven experience as a UX/UI designer, interaction designer, or similar role",
      "Proficiency in design tools such as Sketch, Figma, Adobe XD, etc",
      "Strong understanding of user-centered design principles and best practices",
      "Excellent communication and collaboration skills, with the ability to effectively present and defend design ideas",
      "Portfolio showcasing your design process, creativity, and problem-solving skills."
    ],
    about:
        "As a Product Designer at Google, you will play a crucial role in crafting intuitive and impactful user experiences for our suite of products. You will collaborate closely with cross-functional teams of engineers, product managers, researchers, and marketers to innovate, prototype, and design solutions that solve complex problems and delight millions of users worldwide.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Amazon",
    companyImage: "assets/ic_amazon.png",
    jobTitle: "Senior Marketing ",
    location: "United States",
    locationShort: "USA",
    salary: "5K",
    jobType: "Full Time | WFA",
    requirements: [
      "Bachelor’s degree in Marketing, Business Administration, or a related field; MBA preferred",
      "Proven experience in senior marketing roles, preferably in e-commerce, technology, or consumer goods industries",
      "Demonstrated success in developing and executing integrated marketing campaigns that drive measurable results",
      "Strong analytical skills and proficiency in data-driven decision-making",
      "Excellent communication, leadership, and project management skills",
      "Ability to thrive in a fast-paced, dynamic environment and manage multiple priorities effectively",
    ],
    about:
        "As a Senior Marketing Manager at Amazon, you will lead strategic marketing initiatives to drive growth and enhance customer engagement across our diverse range of products and services. You will collaborate closely with cross-functional teams, leveraging data-driven insights to develop and execute integrated marketing campaigns that resonate with our global customer base.",
    timeStamp: "2h",
  ),
];
