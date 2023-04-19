import 'package:flutter/material.dart';

class NewsDetailAppBar extends StatelessWidget {
  const NewsDetailAppBar({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
  }) : super(key: key);

  final String? title;
  final String? backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    // if (backgroundImageUrl == null && title == null) {
    //   return const SliverToBoxAdapter(
    //     child: SizedBox(),
    //   );
    // }
    return SliverAppBar(
      stretch: true,
      pinned: true,
      backgroundColor: Colors.white,
      expandedHeight: backgroundImageUrl == null
          ? MediaQuery.of(context).padding.top
          : MediaQuery.of(context).size.height * 0.3,
      leading: const SizedBox(),
      actions: [
        const SizedBox(width: 20),
        _ActionsAvatar(
          icon: Icons.arrow_back_ios_new_rounded,
          onTap: () => Navigator.pop(context),
        ),
        const Spacer(),
        _ActionsAvatar(
          icon: Icons.share_rounded,
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(width: 12),
        _ActionsAvatar(
          icon: Icons.bookmark_border_rounded,
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(width: 12),
        _ActionsAvatar(
          icon: Icons.more_vert_rounded,
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(width: 20),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            if (backgroundImageUrl != null)
              Positioned.fill(
                child: ShaderMask(
                  blendMode: BlendMode.dstIn,
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // Colors.white,
                        Theme.of(context).scaffoldBackgroundColor,
                        Colors.transparent,
                      ],
                    ).createShader(bounds);
                  },
                  child: Image.network(
                    backgroundImageUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            if (backgroundImageUrl != null)
              Positioned(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
                //TODO: add a fading
                child: Text(
                  title ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    height: 1.5,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ActionsAvatar extends StatelessWidget {
  const _ActionsAvatar({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.amber,
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
