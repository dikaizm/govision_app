import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/education/model/article2.dart';
import 'package:govision/feature/education/provider/article2_provider.dart';
import 'package:govision/feature/education/widget/article_detail2_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';
import 'package:govision/shared/widget/image_loader.dart';

class Education2Page extends ConsumerStatefulWidget {
  const Education2Page({super.key});

  @override
  Education2PageState createState() => Education2PageState();
}

class Education2PageState extends ConsumerState<Education2Page> {
  final _searchController = TextEditingController();
  List<Article2> _filteredArticles = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final articleState = ref.watch(article2NotifierProvider);

    Future<void> _onRefresh() async {
      ref.read(article2NotifierProvider.notifier).fetchArticles(100);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MainAppBar(
        title: 'Edukasi',
        route: EducationRoute.path,
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        color: AppColors.green,
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _filteredArticles = articleState.maybeWhen(
                            loaded: (articles) => articles
                                .where((article) => article.title
                                    .toLowerCase()
                                    .contains(value.toLowerCase()))
                                .toList(),
                            orElse: () => []);
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Cari artikel...',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black54),
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                articleState.when(
                  empty: () => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: const Center(
                      child: Text('Tidak ada artikel',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  loading: () {
                    ref
                        .read(article2NotifierProvider.notifier)
                        .fetchArticles(100);
                    return _widgetLoading(context, ref);
                  },
                  error: (error) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Center(
                      child: Text(
                        error.toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  loaded: (articles) {
                    final List<Article2> articlesToDisplay =
                        _filteredArticles.isNotEmpty
                            ? _filteredArticles
                            : articles;
                    return Column(
                      children:
                          List.generate(articlesToDisplay.length, (index) {
                        final article = articlesToDisplay[index];
                        return ArticleItemWidget(
                          id: article.id,
                          title: article.title,
                          createdAt: article.createdAt,
                          readCount: article.readCount,
                          image: article.image,
                        );
                      }),
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }

  Widget _widgetLoading(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
        ),
      ),
    );
  }
}

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({
    super.key,
    required this.id,
    required this.title,
    required this.createdAt,
    required this.readCount,
    required this.image,
  });

  final String id;
  final String title;
  final DateTime createdAt;
  final int readCount;
  final String image;

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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ArticleDetail2Page(
            articleId: id,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            ImageProfileLoader(imageUrl: image, size: 80),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.timer_sharp,
                            color: Colors.grey,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            _formatDate(createdAt),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 24),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '$readCount dilihat',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
