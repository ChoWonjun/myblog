package org.devnote.myblog.model.article;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.devnote.myblog.model.common.Page;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#getTotalCount()
	 */
	@Override
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("articles.getTotalCount");
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#insertArticle(org.devnote.myblog.model.article.Article)
	 */
	@Override
	public Article insertArticle(Article article) {
		sqlSessionTemplate.insert("articles.insertArticle", article);
		return article;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#getPagingArticles(org.devnote.myblog.model.common.Page)
	 */
	@Override
	public List<Article> getPagingArticles(Page page) {
		return sqlSessionTemplate.selectList("articles.getPagingArticles", page);
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#getArticlesByCategory(java.lang.String, org.devnote.myblog.model.common.Page)
	 */
	@Override
	public List<Article> getArticlesByCategory(String category, Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("page", page);
		return sqlSessionTemplate.selectList("articles.getArticlesByCategory", map);
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#getArticle(int)
	 */
	@Override
	public Article getArticle(int articleNo) {
		return sqlSessionTemplate.selectOne("articles.getArticle", articleNo);
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#updateArticle(org.devnote.myblog.model.article.Article)
	 */
	@Override
	public void updateArticle(Article article) {
		sqlSessionTemplate.update("articles.updateArticle", article);
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.article.ArticleDAO#deleteArticle(int)
	 */
	@Override
	public void deleteArticle(int articleNo) {
		sqlSessionTemplate.delete("articles.deleteArticle", articleNo);
	}
}
