// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nft_app_project/models/auction.dart';
import 'package:nft_app_project/utils/extensions.dart';
import 'package:nft_app_project/widgets/user.avatar.dart';

/// [Auction) details page
class AuctionPage extends StatefulWidget {
  final Auction auction;

  const AuctionPage({super.key, required this.auction});

  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) => AnimationLimiter(
        child: Scaffold(
          /// extend body behind bottom navigation
          extendBody: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,

            /// because we are using a property declared in the stateful widget,
            /// we need to call widget.auction to get the auction variable defined there
            title: Transform(
              transform: Matrix4.translationValues(-120.0, 0.0, 0.0),
              child: Text(
                'Auctions',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: context.colorScheme.surface,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),

            // Actions
            // Icons
            actions: [
              IconButton(
                onPressed: () {/*todo => perform some action*/},
                icon: Icon(
                  Icons.favorite,
                  color: context.colorScheme.error,
                ),
              ),

              // Icons
              IconButton(
                onPressed: () {/*todo => perform some action*/},
                icon: Icon(
                  TablerIcons.dots_vertical,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.fromLTRB(
              24,
              40,
              24,
              context.height * 0.15,
            ),
            children: [
              Container(
                width: context.width,
                height: context.height * 0.45,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.5,
                    color: context.theme.disabledColor.withOpacity(0.1),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Hero(
                  tag: widget.auction.imageUrl,
                  child: CachedNetworkImage(
                    imageUrl: widget.auction.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Animation will come in
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// tags for the day and the time
                  Text(
                    widget.auction.tag,
                    style: context.theme.textTheme.headlineMedium,
                  ),

                  SizedBox(height: 24),

                  /// artist
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Artist avatar
                      UserAvatar(
                          avatar: widget.auction.artistAvatarUrl, size: 36),

                      SizedBox(width: 8),

                      Text('@${widget.auction.artist}',
                          style: context.theme.textTheme.titleMedium),
                    ],
                  ),

                  SizedBox(height: 24),
                  Text(
                    widget.auction.description,
                    style: context.theme.textTheme.bodyLarge,
                    maxLines: 3,
                    // sets three dots at the end of the text if the length exceeds
                    // 3 lines max.
                    overflow: TextOverflow.ellipsis,
                  ),

                  // set a divider
                  Divider(height: 40),

                  /// Bider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// bidder profile details
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Avatar
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              // force image to be bound by the decoration of the (Container]
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: context.theme.disabledColor
                                    .withOpacity(0.1),
                              ),
                              height: 56,
                              width: 56,

                              /// however, this image provider does not cache the image
                              /// and downloads it every time the user visits the page
                              /// which is not ideal. So let's use a package called
                              /// 'cached_network_image. By the way I have added all of the needed
                              ///dependencies

                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFkeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',

                                // crop in on the image
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Highest Bid Placed By',
                                    style: context.theme.textTheme.titleSmall),
                                Text(
                                  'Merry Rose',
                                  style: context.theme.textTheme.titleMedium
                                      ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // SizeBox
                      SizedBox(width: 24),
                      Text(
                        '15.97 ETH',
                        style: context.theme.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          // bottom navigation bar
          bottomNavigationBar: SafeArea(
            top: false,
            child: GestureDetector(
              onTap: () {
                /*todo => blace bid for auction*/
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: context.colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Place Bid',
                      style: context.theme.textTheme.titleLarge?.copyWith(
                        color: context.colorScheme.surface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '20h: 35min: 08s',
                      style: context.theme.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.surface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
