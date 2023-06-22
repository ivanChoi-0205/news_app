import 'dart:ui';

import 'package:flutter/material.dart';

class PodcastsView extends StatelessWidget {
  const PodcastsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
                // decoration: BoxDecoration(
                //   color: Colors.grey.shade200.withOpacity(0.5),
                // ),
                ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
              const Text('podcasts layout'),
            ],
          ),
        ),
      ],
    );
  }
}
