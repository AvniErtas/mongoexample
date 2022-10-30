// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

BlogModel blogModelFromJson(String str) => BlogModel.fromJson(json.decode(str));

String blogModelToJson(BlogModel data) => json.encode(data.toJson());

class BlogModel {
  BlogModel({
    required this.blogPageArticleTitles,
    required this.blogPageArticleSubtitles,
    required this.blogPageArticles,
  });

  final List<dynamic> blogPageArticleTitles;
  final List<dynamic> blogPageArticleSubtitles;
  final List<dynamic> blogPageArticles;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'blogPageArticleTitles': blogPageArticleTitles,
      'blogPageArticleSubtitles': blogPageArticleSubtitles,
      'blogPageArticles': blogPageArticles,
    };
  }

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        blogPageArticleTitles: json["blogPageArticleTitles"],
        blogPageArticleSubtitles: json['blogPageArticleSubtitles'],
        blogPageArticles: json['blogPageArticles'],
      );
}
