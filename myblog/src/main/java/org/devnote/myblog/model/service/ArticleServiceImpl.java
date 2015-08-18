package org.devnote.myblog.model.service;

import java.util.List;

import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.article.ArticleDAO;
import org.devnote.myblog.model.article.ArticleListContainer;
import org.devnote.myblog.model.article.ArticlePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDAO articleDAO;

	@Override
	public Article insertArticle(Article article) {
		articleDAO.insertArticle(article);
		return article;
	}

	@Override
	public Article getArticle(int articleNo) {
		return articleDAO.getArticle(articleNo);
	}
	
	@Override
	public void deleteArticle(int articleNo) {
		articleDAO.deleteArticle(articleNo);
	}
	
	@Override
	public ArticleListContainer selectCategory(String category){
		int totalListSize = articleDAO.getTotalCounts(category);
		ArticlePage page = new ArticlePage(category, totalListSize);
		List<Article> list = articleDAO.getArticleList(page);
		Article article = articleDAO.recentArticle(category);
		return new ArticleListContainer(list, page, article);
	}
	
	@Override
	public ArticleListContainer selectArticle(int articleNo, int currentPage){
		Article article = articleDAO.getArticle(articleNo);
		String category = article.getCategory();
		int totalListSize = articleDAO.getTotalCounts(category);
		ArticlePage page = new ArticlePage(category, currentPage, totalListSize);
		List<Article> list = articleDAO.getArticleList(page);
		return new ArticleListContainer(list, page, article);		
	}
}
