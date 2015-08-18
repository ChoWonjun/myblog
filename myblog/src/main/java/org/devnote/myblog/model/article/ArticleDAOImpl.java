package org.devnote.myblog.model.article;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public Article insertArticle(Article article) {
		sqlSessionTemplate.insert("articles.insertArticle", article);
		return article;
	}

	@Override
	public Article getArticle(int articleNo) {
		return sqlSessionTemplate.selectOne("articles.getArticle", articleNo);
	}

	@Override
	public void deleteArticle(int articleNo) {
		sqlSessionTemplate.delete("articles.deleteArticle", articleNo);
	}

	@Override
	public Article recentArticle(String category) {
		return sqlSessionTemplate.selectOne("articles.recentArticle", category);
	}
	
	@Override
	public int getTotalCounts(String category){
		return sqlSessionTemplate.selectOne("articles.getTotalCounts", category);
	}
	
	@Override
	public List<Article> getArticleList(ArticlePage page){
		return sqlSessionTemplate.selectList("articles.getArticleList", page);
	}
}
