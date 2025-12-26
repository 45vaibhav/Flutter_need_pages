import 'package:flutter/material.dart';

class ToatalStudentPage extends StatelessWidget {
  const ToatalStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildHeader(context),
            const SizedBox(height: 20),
            _buildTotalStudents(),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: const [
                  StudentCard(
                    name: "Aryan Sharma",
                    email: "aryan.sharma@codegurucool.com",
                    image: "https://i.pravatar.cc/150?img=16",
                    status: "Active",
                  ),
                  StudentCard(
                    name: "Priya Patel",
                    email: "priya.patel@codegurucool.com",
                    image: "https://i.pravatar.cc/150?img=47",
                    status: "Active",
                  ),
                  StudentCard(
                    name: "Rohan Mehta",
                    email: "rohan.mehta@codegurucool.com",
                    image: "https://i.pravatar.cc/150?img=12",
                    status: "Pending",
                  ),
                  StudentCard(
                    name: "Anjali Rao",
                    email: "anjali.rao@codegurucool.com",
                    image: "https://i.pravatar.cc/150?img=56",
                    status: "Inactive",
                  ),
                  StudentCard(
                    name: "Vikram Singh",
                    email: "vikram.singh@codegurucool.com",
                    image: "https://i.pravatar.cc/150?img=32",
                    status: "Active",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.arrow_back_ios_rounded,
                  color: Colors.white),
            ),
          ),

          const Text(
            "Batch: Elite '24",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
  Widget _buildTotalStudents() {
    return Container(
      // height removed to fix overflow
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Students",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            "45",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
class StudentCard extends StatelessWidget {
  final String name, email, image, status;

  const StudentCard({
    super.key,
    required this.name,
    required this.email,
    required this.image,
    required this.status,
  });

  Color getStatusColor() {
    if (status == "Active") return Colors.greenAccent;
    if (status == "Pending") return Colors.amber;
    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(image),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  email,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 13),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.circle,
                        color: getStatusColor(), size: 10),
                    const SizedBox(width: 5),
                    Text(
                      status,
                      style: TextStyle(color: getStatusColor(), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded,
              color: Colors.white54, size: 18),
        ],
      ),
    );
  }
}
