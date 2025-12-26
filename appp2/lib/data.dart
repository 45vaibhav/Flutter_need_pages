// demo_data.dart
// COMPLETE DATASET V3.0: 4 Courses, 10+ Topics each, 5+ Enrolled Students with full details.

const List<Map<String, dynamic>> kCourseData = [
  // =========================================================================================
  // 1. JAVA FULL STACK COURSE
  // =========================================================================================
  {
    'id': 'C201',
    'title': 'Java Full Stack Development',
    'description':
        'Master the entire Java ecosystem, from core concepts (OOP) to building scalable web applications. '
        'This course focuses on industry-leading frameworks like Spring Boot for the backend and modern JavaScript for frontend integration. '
        'Learning this path ensures high-demand job readiness in enterprise environments.',
    'baseFee': 10500.00,
    'duration': '12 Weeks',
    'level': 'Intermediate',
    'topics': [
      {'id': 'JFS01', 'title': 'Core Java: OOP Principles', 'content': '...', 'isFree': true, 'order': 1, 'videoUrl': '...', 'readingTime': '30 min'},
      {'id': 'JFS02', 'title': 'Exception Handling & Collections', 'content': '...', 'isFree': true, 'order': 2, 'videoUrl': '...', 'readingTime': '45 min'},
      {'id': 'JFS03', 'title': 'Introduction to JDBC and Database Access', 'content': '...', 'isFree': true, 'order': 3, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'JFS04', 'title': 'Servlets and JSP: Web Basics (GATED)', 'content': '...', 'isFree': false, 'order': 4, 'videoUrl': '...', 'readingTime': '60 min'},
      {'id': 'JFS05', 'title': 'Spring Boot Fundamentals', 'content': '...', 'isFree': false, 'order': 5, 'videoUrl': '...', 'readingTime': '75 min'},
      {'id': 'JFS06', 'title': 'Building RESTful APIs with Spring', 'content': '...', 'isFree': false, 'order': 6, 'videoUrl': '...', 'readingTime': '90 min'},
      {'id': 'JFS07', 'title': 'Data Persistence with Hibernate/JPA', 'content': '...', 'isFree': false, 'order': 7, 'videoUrl': '...', 'readingTime': '60 min'},
      {'id': 'JFS08', 'title': 'Security Implementation (Spring Security)', 'content': '...', 'isFree': false, 'order': 8, 'videoUrl': '...', 'readingTime': '55 min'},
      {'id': 'JFS09', 'title': 'Microservices Architecture', 'content': '...', 'isFree': false, 'order': 9, 'videoUrl': '...', 'readingTime': '70 min'},
      {'id': 'JFS10', 'title': 'Frontend Integration (React/Angular Overview)', 'content': '...', 'isFree': false, 'order': 10, 'videoUrl': '...', 'readingTime': '40 min'},
      // 10+ topics achieved
    ],
    'enrolledStudents': [
      // 5 Students added
      {'student': {'id': 'JSTU01', 'name': 'Prathmesh Diwane', 'email': 'prathmeshdiwane@jfs.com', 'phoneNumber': '736287424', 'address': '10, Park St', 'role': 'student', 'lastActive': '2025-12-07', 'username': 'fakand', 'password': 'hashed_pass_01', 'collegeName': 'GEC Ahmedabad', 'branch': 'CSE', 'class': 'Final Year'}, 'batchId': 'JFSB01', 'totalFee': 12500.00, 'feePaid': 10500.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-11-01', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'JSTU02', 'name': 'Sonia Verma', 'email': 'sonia@jfs.com', 'phoneNumber': '333-4444', 'address': '25, City Center', 'role': 'student', 'lastActive': '2025-12-05', 'username': 'soniav', 'password': 'hashed_pass_02', 'collegeName': 'VIT Chennai', 'branch': 'IT', 'class': '3rd Year'}, 'batchId': 'JFSB01', 'totalFee': 10500.00, 'feePaid': 5000.00, 'feeRemaining': 5500.00, 'enrollmentDate': '2025-11-10', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'JSTU03', 'name': 'Ramesh T.', 'email': 'ramesh@jfs.com', 'phoneNumber': '555-6666', 'address': '5, Suburbia', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'ramesht', 'password': 'hashed_pass_03', 'collegeName': 'NIT Trichy', 'branch': 'EEE', 'class': 'Final Year'}, 'batchId': 'JFSB01', 'totalFee': 10500.00, 'feePaid': 7000.00, 'feeRemaining': 3500.00, 'enrollmentDate': '2025-12-01', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'JSTU04', 'name': 'Preeti S.', 'email': 'preeti@jfs.com', 'phoneNumber': '777-8888', 'address': '1, Main Road', 'role': 'student', 'lastActive': '2025-12-06', 'username': 'preetis', 'password': 'hashed_pass_04', 'collegeName': 'SRM University', 'branch': 'CSE', 'class': '2nd Year'}, 'batchId': 'JFSB01', 'totalFee': 10500.00, 'feePaid': 10500.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-20', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'JSTU05', 'name': 'Vivek M.', 'email': 'vivek@jfs.com', 'phoneNumber': '999-0000', 'address': '15, Hill Top', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'vivekm', 'password': 'hashed_pass_05', 'collegeName': 'Banasthali Vidhyapith', 'branch': 'IT', 'class': '3rd Year'}, 'batchId': 'JFSB01', 'totalFee': 10500.00, 'feePaid': 0.00, 'feeRemaining': 10500.00, 'enrollmentDate': '2025-12-07', 'batchStartDate': '2025-12-01'},
    ],
  },
  
  // =========================================================================================
  // 2. DATA SCIENCE & MACHINE LEARNING (DSML) COURSE
  // =========================================================================================
  {
    'id': 'C202',
    'title': 'Data Science & Machine Learning (DSML)',
    'description':
        'Learn to analyze complex datasets and build predictive models using Python, R, and cutting-edge libraries. '
        'This course covers essential statistics, data visualization, and the implementation of various ML algorithms (regression, classification). '
        'Start your career in one of the fastest-growing technology fields globally.',
    'baseFee': 14000.00,
    'duration': '10 Weeks',
    'level': 'Advanced',
    'topics': [
      {'id': 'DS01', 'title': 'Python & Pandas Fundamentals', 'content': '...', 'isFree': true, 'order': 1, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'DS02', 'title': 'NumPy for Scientific Computing', 'content': '...', 'isFree': true, 'order': 2, 'videoUrl': '...', 'readingTime': '35 min'},
      {'id': 'DS03', 'title': 'Data Visualization (Matplotlib & Seaborn)', 'content': '...', 'isFree': true, 'order': 3, 'videoUrl': '...', 'readingTime': '50 min'},
      {'id': 'DS04', 'title': 'Statistical Analysis and Hypothesis Testing (GATED)', 'content': '...', 'isFree': false, 'order': 4, 'videoUrl': '...', 'readingTime': '60 min'},
      {'id': 'DS05', 'title': 'Linear Regression Models', 'content': '...', 'isFree': false, 'order': 5, 'videoUrl': '...', 'readingTime': '70 min'},
      {'id': 'DS06', 'title': 'Logistic Regression and Classification', 'content': '...', 'isFree': false, 'order': 6, 'videoUrl': '...', 'readingTime': '65 min'},
      {'id': 'DS07', 'title': 'Decision Trees and Random Forests', 'content': '...', 'isFree': false, 'order': 7, 'videoUrl': '...', 'readingTime': '75 min'},
      {'id': 'DS08', 'title': 'Clustering Algorithms (K-Means, DBSCAN)', 'content': '...', 'isFree': false, 'order': 8, 'videoUrl': '...', 'readingTime': '50 min'},
      {'id': 'DS09', 'title': 'Introduction to Deep Learning & Neural Networks', 'content': '...', 'isFree': false, 'order': 9, 'videoUrl': '...', 'readingTime': '80 min'},
      {'id': 'DS10', 'title': 'Model Evaluation and Hyperparameter Tuning', 'content': '...', 'isFree': false, 'order': 10, 'videoUrl': '...', 'readingTime': '45 min'},
    ],
    'enrolledStudents': [
      // 5 Students added
      {'student': {'id': 'DMSTU01', 'name': 'Aditi Jain', 'email': 'aditi@dsml.com', 'phoneNumber': '222-3333', 'address': '40, Lake View', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'aditij', 'password': 'hashed_pass_06', 'collegeName': 'IIT Bombay', 'branch': 'Stat.', 'class': 'Final Year'}, 'batchId': 'DSMLB01', 'totalFee': 14000.00, 'feePaid': 14000.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-15', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'DMSTU02', 'name': 'Gaurav K.', 'email': 'gaurav@dsml.com', 'phoneNumber': '444-5555', 'address': '7, Garden Rd', 'role': 'student', 'lastActive': '2025-12-06', 'username': 'gauravk', 'password': 'hashed_pass_07', 'collegeName': 'DTU Delhi', 'branch': 'IT', 'class': '4th Year'}, 'batchId': 'DSMLB01', 'totalFee': 14000.00, 'feePaid': 7000.00, 'feeRemaining': 7000.00, 'enrollmentDate': '2025-11-05', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'DMSTU03', 'name': 'Harini P.', 'email': 'harini@dsml.com', 'phoneNumber': '666-7777', 'address': '18, Sky Apt', 'role': 'student', 'lastActive': '2025-12-07', 'username': 'harinip', 'password': 'hashed_pass_08', 'collegeName': 'JNTU Hyderabad', 'branch': 'ECE', 'class': '3rd Year'}, 'batchId': 'DSMLB01', 'totalFee': 14000.00, 'feePaid': 0.00, 'feeRemaining': 14000.00, 'enrollmentDate': '2025-12-04', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'DMSTU04', 'name': 'Nikhil S.', 'email': 'nikhil@dsml.com', 'phoneNumber': '888-9999', 'address': '2, Cyber City', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'nikhils', 'password': 'hashed_pass_09', 'collegeName': 'Amity Noida', 'branch': 'BCA', 'class': 'Final Year'}, 'batchId': 'DSMLB01', 'totalFee': 14000.00, 'feePaid': 14000.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-01', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'DMSTU05', 'name': 'Zara B.', 'email': 'zara@dsml.com', 'phoneNumber': '000-1111', 'address': '9, River Side', 'role': 'student', 'lastActive': '2025-12-05', 'username': 'zarab', 'password': 'hashed_pass_10', 'collegeName': 'Mumbai University', 'branch': 'Maths', 'class': '3rd Year'}, 'batchId': 'DSMLB01', 'totalFee': 14000.00, 'feePaid': 10000.00, 'feeRemaining': 4000.00, 'enrollmentDate': '2025-11-20', 'batchStartDate': '2025-12-01'},
    ],
  },
  
  // =========================================================================================
  // 3. FLUTTER DEVELOPMENT (MODIFIED & EXPANDED)
  // =========================================================================================
  {
    'id': 'C102',
    'title': 'Mobile App Development with Flutter',
    'description':
        'Build beautiful, native iOS and Android applications using a single codebase with Google\'s Flutter framework and Dart language. '
        'We cover state management, API integration, local databases, and deployment. '
        'This cross-platform approach is highly efficient for startups and enterprises alike. Why learn it? It’s future-proof.',
    'baseFee': 12000.00,
    'duration': '8 Weeks',
    'level': 'Beginner',
    'topics': [
      {'id': 'FT01', 'title': 'Dart Language Fundamentals', 'content': '...', 'isFree': true, 'order': 1, 'videoUrl': '...', 'readingTime': '25 min'},
      {'id': 'FT02', 'title': 'Introduction to Flutter Widgets', 'content': '...', 'isFree': true, 'order': 2, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'FT03', 'title': 'Stateless vs. Stateful Widgets', 'content': '...', 'isFree': true, 'order': 3, 'videoUrl': '...', 'readingTime': '30 min'},
      {'id': 'FT04', 'title': 'Navigation and Routing (GATED)', 'content': '...', 'isFree': false, 'order': 4, 'videoUrl': '...', 'readingTime': '45 min'},
      {'id': 'FT05', 'title': 'Deep Dive into State Management (Provider/Riverpod)', 'content': '...', 'isFree': false, 'order': 5, 'videoUrl': '...', 'readingTime': '70 min'},
      {'id': 'FT06', 'title': 'Handling User Input and Forms', 'content': '...', 'isFree': false, 'order': 6, 'videoUrl': '...', 'readingTime': '55 min'},
      {'id': 'FT07', 'title': 'Working with REST APIs (http package)', 'content': '...', 'isFree': false, 'order': 7, 'videoUrl': '...', 'readingTime': '60 min'},
      {'id': 'FT08', 'title': 'Local Storage (Shared Preferences & SQLite)', 'content': '...', 'isFree': false, 'order': 8, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'FT09', 'title': 'Firebase Integration (Auth & Firestore)', 'content': '...', 'isFree': false, 'order': 9, 'videoUrl': '...', 'readingTime': '85 min'},
      {'id': 'FT10', 'title': 'Deployment to App Store & Play Store', 'content': '...', 'isFree': false, 'order': 10, 'videoUrl': '...', 'readingTime': '50 min'},
    ],
    'enrolledStudents': [
      // 5 Students added (expanding previous list)
      {'student': {'id': 'FTSTU01', 'name': 'Sneha Reddy', 'email': 'sneha@ftr.com', 'phoneNumber': '444-5555', 'address': '12 Tech Park', 'role': 'student', 'lastActive': '2025-12-05', 'username': 'snehar', 'password': 'hashed_pass_11', 'collegeName': 'RIT Pune', 'branch': 'IT', 'class': 'Final Year'}, 'batchId': 'FLUTTERB01', 'totalFee': 12000.00, 'feePaid': 6000.00, 'feeRemaining': 6000.00, 'enrollmentDate': '2025-11-10', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'FTSTU02', 'name': 'Hari L.', 'email': 'hari@ftr.com', 'phoneNumber': '121-3434', 'address': '8, Metro View', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'haril', 'password': 'hashed_pass_12', 'collegeName': 'Delhi University', 'branch': 'BCA', 'class': '3rd Year'}, 'batchId': 'FLUTTERB01', 'totalFee': 12000.00, 'feePaid': 12000.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-01', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'FTSTU03', 'name': 'Kavya S.', 'email': 'kavya@ftr.com', 'phoneNumber': '565-7878', 'address': '33, Green Avenue', 'role': 'student', 'lastActive': '2025-12-07', 'username': 'kavyas', 'password': 'hashed_pass_13', 'collegeName': 'SRM University', 'branch': 'ECE', 'class': '2nd Year'}, 'batchId': 'FLUTTERB01', 'totalFee': 12000.00, 'feePaid': 3000.00, 'feeRemaining': 9000.00, 'enrollmentDate': '2025-11-20', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'FTSTU04', 'name': 'Vikas J.', 'email': 'vikas@ftr.com', 'phoneNumber': '909-1212', 'address': '9, Old Town', 'role': 'student', 'lastActive': '2025-12-06', 'username': 'vikasj', 'password': 'hashed_pass_14', 'collegeName': 'GEC Ahmedabad', 'branch': 'IT', 'class': 'Final Year'}, 'batchId': 'FLUTTERB01', 'totalFee': 12000.00, 'feePaid': 12000.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-15', 'batchStartDate': '2025-12-01'},
      {'student': {'id': 'FTSTU05', 'name': 'Neha R.', 'email': 'neha@ftr.com', 'phoneNumber': '343-5656', 'address': '21, New Colony', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'nehar', 'password': 'hashed_pass_15', 'collegeName': 'NIT Trichy', 'branch': 'CSE', 'class': '3rd Year'}, 'batchId': 'FLUTTERB01', 'totalFee': 12000.00, 'feePaid': 8000.00, 'feeRemaining': 4000.00, 'enrollmentDate': '2025-11-01', 'batchStartDate': '2025-12-01'},
    ],
  },
  
  // =========================================================================================
  // 4. DATA STRUCTURES & ALGORITHMS (DSA) COURSE
  // =========================================================================================
  {
    'id': 'C203',
    'title': 'Data Structures & Algorithms (DSA)',
    'description':
        'Build the fundamental problem-solving skills necessary for high-tier tech interviews and efficient coding. '
        'This course focuses on practical implementation of all major data structures (Trees, Graphs) and analysis of algorithms (Time and Space Complexity). '
        'A mandatory course for anyone aiming for top product-based companies.',
    'baseFee': 7500.00,
    'duration': '10 Weeks',
    'level': 'Beginner/Intermediate',
    'topics': [
      {'id': 'DSA01', 'title': 'Time and Space Complexity Analysis (Big O)', 'content': '...', 'isFree': true, 'order': 1, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'DSA02', 'title': 'Arrays and Strings: Basic Operations', 'content': '...', 'isFree': true, 'order': 2, 'videoUrl': '...', 'readingTime': '30 min'},
      {'id': 'DSA03', 'title': 'Linked Lists (Singly and Doubly)', 'content': '...', 'isFree': true, 'order': 3, 'videoUrl': '...', 'readingTime': '45 min'},
      {'id': 'DSA04', 'title': 'Stacks and Queues (GATED)', 'content': '...', 'isFree': false, 'order': 4, 'videoUrl': '...', 'readingTime': '50 min'},
      {'id': 'DSA05', 'title': 'Recursion and Backtracking', 'content': '...', 'isFree': false, 'order': 5, 'videoUrl': '...', 'readingTime': '60 min'},
      {'id': 'DSA06', 'title': 'Sorting Algorithms (Merge, Quick, Heap)', 'content': '...', 'isFree': false, 'order': 6, 'videoUrl': '...', 'readingTime': '75 min'},
      {'id': 'DSA07', 'title': 'Trees (BST, AVL, Red-Black)', 'content': '...', 'isFree': false, 'order': 7, 'videoUrl': '...', 'readingTime': '80 min'},
      {'id': 'DSA08', 'title': 'Hashing and HashMaps/Sets', 'content': '...', 'isFree': false, 'order': 8, 'videoUrl': '...', 'readingTime': '40 min'},
      {'id': 'DSA09', 'title': 'Graphs and Traversal (BFS, DFS)', 'content': '...', 'isFree': false, 'order': 9, 'videoUrl': '...', 'readingTime': '90 min'},
      {'id': 'DSA10', 'title': 'Dynamic Programming Introduction', 'content': '...', 'isFree': false, 'order': 10, 'videoUrl': '...', 'readingTime': '120 min'},
    ],
    'enrolledStudents': [
      // 5 Students added
      {'student': {'id': 'DSTU01', 'name': 'Alok Jha', 'email': 'alok@dsa.com', 'phoneNumber': '676-8989', 'address': '55, Tech Lane', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'alokj', 'password': 'hashed_pass_16', 'collegeName': 'IIT Madras', 'branch': 'CSE', 'class': '3rd Year'}, 'batchId': 'DSAB01', 'totalFee': 7500.00, 'feePaid': 7500.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-09-01', 'batchStartDate': '2025-11-01'},
      {'student': {'id': 'DSTU02', 'name': 'Divya P.', 'email': 'divya@dsa.com', 'phoneNumber': '101-2323', 'address': '19, Green Park', 'role': 'student', 'lastActive': '2025-12-07', 'username': 'divyap', 'password': 'hashed_pass_17', 'collegeName': 'GEC Gandhinagar', 'branch': 'IT', 'class': 'Final Year'}, 'batchId': 'DSAB01', 'totalFee': 7500.00, 'feePaid': 4000.00, 'feeRemaining': 3500.00, 'enrollmentDate': '2025-10-15', 'batchStartDate': '2025-11-01'},
      {'student': {'id': 'DSTU03', 'name': 'Kartik R.', 'email': 'kartik@dsa.com', 'phoneNumber': '454-6767', 'address': '3, Central Avenue', 'role': 'student', 'lastActive': '2025-12-06', 'username': 'kartikr', 'password': 'hashed_pass_18', 'collegeName': 'Anna University', 'branch': 'CSE', 'class': '2nd Year'}, 'batchId': 'DSAB01', 'totalFee': 7500.00, 'feePaid': 7500.00, 'feeRemaining': 0.00, 'enrollmentDate': '2025-10-25', 'batchStartDate': '2025-11-01'},
      {'student': {'id': 'DSTU04', 'name': 'Pooja K.', 'email': 'pooja@dsa.com', 'phoneNumber': '898-0101', 'address': '11, River Road', 'role': 'student', 'lastActive': '2025-12-08', 'username': 'poojak', 'password': 'hashed_pass_19', 'collegeName': 'Manipal University', 'branch': 'ECE', 'class': '3rd Year'}, 'batchId': 'DSAB01', 'totalFee': 7500.00, 'feePaid': 0.00, 'feeRemaining': 7500.00, 'enrollmentDate': '2025-11-20', 'batchStartDate': '2025-11-01'},
      {'student': {'id': 'DSTU05', 'name': 'Sanjay V.', 'email': 'sanjay@dsa.com', 'phoneNumber': '232-4545', 'address': '7, Quiet Street', 'role': 'student', 'lastActive': '2025-12-07', 'username': 'sanjayv', 'password': 'hashed_pass_20', 'collegeName': 'JNTU Kakinada', 'branch': 'IT', 'class': 'Final Year'}, 'batchId': 'DSAB01', 'totalFee': 7500.00, 'feePaid': 6000.00, 'feeRemaining': 1500.00, 'enrollmentDate': '2025-10-05', 'batchStartDate': '2025-11-01'},
    ],
  },
];