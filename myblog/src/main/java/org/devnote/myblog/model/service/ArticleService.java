package org.devnote.myblog.model.service;

import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.article.ArticleListContainer;

public interface ArticleService {

	Article insertArticle(Article article);

	Article getArticle(int articleNo);

	void deleteArticle(int articleNo);

	ArticleListContainer selectArticle(int articleNo, int currentPage);

	ArticleListContainer selectCategory(String category);

}