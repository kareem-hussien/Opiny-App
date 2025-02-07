import 'package:flutter/material.dart';

String image = "assets/image.png";

class SupportSingle extends StatelessWidget {
  const SupportSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
        title: const Text(
          "Support Ticket",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Color(0xFF4F46E5),
          ),
          Icon(
            Icons.more_vert,
            color: Color(0xFF4F46E5),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFEEF2FF),
                Color(0xFFEEF2FF),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: const SupportBody()),
      bottomNavigationBar: Container(
          height: 82,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              const Icon(
                Icons.attachment_rounded,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type a message",
                    hintStyle: const TextStyle(
                      color: Color(0XffADAEBC),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0XFFF1F5F9),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF4F46E5),
                ),
                child: const Icon(
                  Icons.send_sharp,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}

class SupportBody extends StatelessWidget {
  const SupportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0XFFDCFCE7),
                            ),
                            child: const Text(
                              "Active",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF15803D),
                              ),
                            )),
                        const Text(
                          "Ticket #2024-0123",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Payment Issue with Premium Plan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey, size: 14),
                        SizedBox(width: 4),
                        Text(
                          "Created on Jan 23, 2025 • 10:30 AM",
                          style: TextStyle(
                            color: Color(
                              0xFF64748B,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      // margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0XFFEEF2FF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF4F46E5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.support_agent_outlined,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Support Agent",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Michael Brown • Online",
                                style:
                                    TextStyle(color: Color(0xFF475569), fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Message(
              color: Colors.white,
              isSender: true,
              text:
                  " Hi, I'm having issues with my premium plan payment. The transaction failed but my account was still charged. 10:30 AM",
            ),
            const SizedBox(height: 10),
            const Message(
              color: Color(0Xff4F46E5),
              isSender: false,
              text:
                  " Hi, I'm having issues with my premium plan payment. The transaction failed but my account was still charged.",
            ),
            const SizedBox(height: 20),
            const Attachments(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message(
      {super.key,
      required this.text,
      required this.isSender,
      required this.color});

  final String text;
  final bool isSender;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isSender ? TextDirection.ltr : TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topRight: isSender
                      ? const Radius.circular(10)
                      : const Radius.circular(0),
                  topLeft: isSender
                      ? const Radius.circular(0)
                      : const Radius.circular(10),
                  bottomLeft: const Radius.circular(10),
                  bottomRight: const Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 16,
                      color: isSender ? const Color(0Xff1E1B4B) : Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                   Text("10:30 AM",
                      style: TextStyle(
                        fontSize: 14,
                        color: isSender ? const Color(0Xff64748B) : const Color(0xFFC7D2FE),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Attachments extends StatelessWidget {
  const Attachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Attachments",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      'assets/images/svgs/pdf_icon.png',
                    )),
                    // child: const Icon(Icons.picture_as_pdf, color: Colors.red)),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Transaction_Receipt.pdf",
                      style: TextStyle(
                        color: Color(0xFF1E1B4B),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "245 KB",
                      style: TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset('assets/images/svgs/download_icon.png'),
                // const Icon(Icons.download_outlined, color: Colors.grey),
                // const SizedBox(width: 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
