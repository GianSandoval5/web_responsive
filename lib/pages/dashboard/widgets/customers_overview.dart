import 'package:core_dashboard/responsive.dart';
import 'package:core_dashboard/shared/widgets/avatar/customer_avaatar.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/ghaps.dart';

class CoustomersOverview extends StatelessWidget {
  const CoustomersOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: "Welcome ",
                  children: [
                    TextSpan(
                      text: "857 customers",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.titleLarge!.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const TextSpan(text: " with a \npersonal message 😎")
                  ],
                ),
              ),
            ),
            gapW16,
            OutlinedButton(
              onPressed: () {},
              child: Text(
                Responsive.isMobile(context) ? 'Send' : "Send message",
              ),
            ),
          ],
        ),
        gapH24,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomerAvatar(
              name: "John Doe",
              imageSrc:
                  "https://cdn.pixabay.com/photo/2017/04/01/21/06/portrait-2194457_1280.jpg",
              onPressed: () {},
            ),
            CustomerAvatar(
              name: "Elbert",
              imageSrc:
                  "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
              onPressed: () {},
            ),
            if (!Responsive.isMobile(context))
              CustomerAvatar(
                name: "Joyce",
                imageSrc:
                    "https://cdn.pixabay.com/photo/2018/01/02/09/47/woman-3055841_1280.jpg",
                onPressed: () {},
              ),
            Column(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(64, 64),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(Icons.arrow_forward_outlined),
                ),
                gapH8,
                const Text("View all"),
              ],
            )
          ],
        ),
        gapH24,
      ],
    );
  }
}
