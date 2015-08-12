package org.devnote.myblog.model.article;

import java.util.List;

import org.devnote.myblog.model.common.Page;

public interface ArticleDAO {

	int getTotalCount();

	Article insertArticle(Article article);

	List<Article> getPagingArticles(Page page);

	List<Article> getArticlesByCategory(String category, Page page);

	Article getArticle(int articleNo);

	void updateArticle(Article article);

	void deleteArticle(int articleNo);

}