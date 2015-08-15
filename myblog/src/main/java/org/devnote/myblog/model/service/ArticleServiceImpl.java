package org.devnote.myblog.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.article.ArticleDAO;
import org.devnote.myblog.model.common.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDAO articleDAO;
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#getTotalCount()
	 */
	@Override
	public int getTotalCount() {
		return articleDAO.getTotalCount();
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#insertArticle(org.devnote.myblog.model.article.Article)
	 */
	@Override
	public Article insertArticle(Article article) {
		articleDAO.insertArticle(article);
		return article;
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#getPagingArticles(org.devnote.myblog.model.common.Page)
	 */
	@Override
	public List<Article> getPagingArticles(Page page) {
		return articleDAO.getPagingArticles(page);
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#getArticlesByCategory(java.lang.String, org.devnote.myblog.model.common.Page)
	 */
	@Override
	public List<Article> getArticlesByCategory(String category, Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("page", page);
		return articleDAO.getArticlesByCategory(category, page);
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#getArticle(int)
	 */
	@Override
	public Article getArticle(int articleNo) {
		return articleDAO.getArticle(articleNo);
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#updateArticle(org.devnote.myblog.model.article.Article)
	 */
	@Override
	public void updateArticle(Article article) {
		articleDAO.updateArticle(article);
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.service.ArticleService#deleteArticle(int)
	 */
	@Override
	public void deleteArticle(int articleNo) {
		articleDAO.deleteArticle(articleNo);
	}
}
