import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/education/model/article2.dart';
import 'package:govision/feature/education/provider/article2_provider.dart';

const double _kImageCoverSize = 0.45;
const double _kContentMinus = 0.04;

class ArticleDetail2Page extends ConsumerStatefulWidget {
  const ArticleDetail2Page({required this.articleId, super.key});

  final String articleId;

  @override
  ArticleDetail2PageState createState() => ArticleDetail2PageState();
}

class ArticleDetail2PageState extends ConsumerState<ArticleDetail2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.black.withOpacity(0.2)),
            ),
            child: const Icon(Icons.arrow_back_rounded),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: _widgetContent(context),
    );
  }

  String _formatDate(DateTime date) {
    final diff = DateTime.now().difference(date);
    if (diff.inDays > 7) {
      return '${date.day}/${date.month}/${date.year}';
    } else if (diff.inDays > 0) {
      return '${diff.inDays} hari lalu';
    } else if (diff.inHours > 0) {
      return '${diff.inHours} jam lalu';
    } else if (diff.inMinutes > 0) {
      return '${diff.inMinutes} menit lalu';
    } else {
      return 'Baru saja';
    }
  }

  Widget _widgetContent(BuildContext context) {
    final state = ref.watch(article2DetailNotifierProvider);

    return state.when(
      empty: () => const Center(child: Text('Tidak ada data')),
      loading: () {
        ref
            .read(article2DetailNotifierProvider.notifier)
            .fetchArticleDetail(widget.articleId);
        return const Center(child: CircularProgressIndicator());
      },
      loaded: (article) {
        return Stack(
          children: [
            ..._bodyImageCover(context, article),
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    height: MediaQuery.of(context).size.height *
                        (_kImageCoverSize - _kContentMinus),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          article.title,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  // Content
                  Container(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_today, size: 16),
                            const SizedBox(width: 8),
                            Text(
                              _formatDate(article.createdAt),
                              style: const TextStyle(fontSize: 14),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(Icons.remove_red_eye, size: 16),
                                const SizedBox(width: 8),
                                Text(
                                  article.readCount.toString(),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          article.body,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
      error: (e) => Center(child: Text(e.toString())),
    );
  }

  List<Widget> _bodyImageCover(BuildContext context, Article2Detail article) {
    final imageHeight = MediaQuery.of(context).size.height * _kImageCoverSize;

    return [
      SizedBox(
        height: imageHeight,
        child: Image.network(
          article.image,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child; // Show the image once loaded
            } else {
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              ); // Show a loading spinner while the image is loading
            }
          },
          errorBuilder:
              (BuildContext context, Object error, StackTrace? stackTrace) {
            return Center(
              child: Icon(Icons.error,
                  size: 64,
                  color: Colors
                      .grey), // Show an error icon if the image fails to load
            );
          },
        ),
      ),
      Container(
        height: imageHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.7),
              Colors.transparent,
            ],
          ),
        ),
      )
    ];
  }
}
