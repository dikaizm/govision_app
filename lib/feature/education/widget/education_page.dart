import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/auth/widget/text_input.dart';
import 'package:govision/feature/education/model/article.dart';
import 'package:govision/feature/education/provider/articles_provider.dart';
import 'package:govision/feature/education/widget/article_detail_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';

class EducationPage extends ConsumerStatefulWidget {
  const EducationPage({super.key});

  @override
  EducationPageState createState() => EducationPageState();
}

class EducationPageState extends ConsumerState<EducationPage> {
  final _searchController = TextEditingController();
  List<Article> _filteredArticles = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MainAppBar(
        title: 'Edukasi',
        route: EducationRoute.path,
      ),
      body: _tabArticle(),
    );
  }

  Widget _tabArticle() {
    final articleState = ref.watch(articleNotifierProvider);

    return SingleChildScrollView(
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
                  hintStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
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
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
                child: Text(
                  error,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              loaded: (articles) {
                final List<Article> articlesToDisplay =
                    _filteredArticles.isNotEmpty ? _filteredArticles : articles;
                return Column(
                  children: List.generate(articlesToDisplay.length, (index) {
                    final article = articlesToDisplay[index];
                    return ArticleItemWidget(
                      id: article.id,
                      title: article.title,
                      date: article.date,
                      view: article.view,
                      image: article.image,
                    );
                  }),
                );
              },
            ),
          ],
        ));
  }
}

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({
    super.key,
    required this.id,
    required this.title,
    required this.date,
    required this.view,
    required this.image,
  });

  final String id;
  final String title;
  final DateTime date;
  final int view;
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
        log('Article ID: $id');
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ArticleDetailPage(
            articleId: id,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                width: 84,
                height: 84,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
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
                            _formatDate(date),
                            style: const TextStyle(
                              fontSize: 14,
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
                            '$view dilihat',
                            style: const TextStyle(
                              fontSize: 14,
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
