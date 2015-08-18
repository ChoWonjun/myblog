package org.devnote.myblog.model.article;

import java.util.List;

public interface ArticleDAO {

	Article insertArticle(Article article);

	Article getArticle(int articleNo);

	void deleteArticle(int articleNo);

	List<Article> getArticleList(ArticlePage page);

	int getTotalCounts(String category);

	Article recentArticle(String category);

}