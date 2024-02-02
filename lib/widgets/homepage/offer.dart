import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/images/${index + 1}.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: row(currentSlide),
        );
      },
      itemCount: 3,
      onPageChanged: (value) {
        setState(() {
          currentSlide = value;
        });
      },
    );
  }

  Widget row(value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          value == 0
              ? const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
          value == 1
              ? const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
          value == 2
              ? const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
        ],
      ),
    );
  }
}
