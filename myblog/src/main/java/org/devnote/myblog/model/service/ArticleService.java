package org.devnote.myblog.model.service;

import java.util.List;

import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.common.Page;

public interface ArticleService {

	int getTotalCount();

	Article insertArticle(Article article);

	List<Article> getPagingArticles(Page page);

	List<Article> getArticlesByCategory(String category, Page page);

	Article getArticle(int articleNo);

	void updateArticle(Article article);

	void deleteArticle(int articleNo);

}