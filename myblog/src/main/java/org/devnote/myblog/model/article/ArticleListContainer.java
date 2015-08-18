package org.devnote.myblog.model.article;

import java.util.List;

public class ArticleListContainer {

	private List<Article> list; // 현재 페이지 목록에 포함되는 글 객체 묶음
	private ArticlePage page; // 글 목록 페이징 정보
	private Article article; // 선택한 글 객체

	public ArticleListContainer(List<Article> list, ArticlePage page, Article article) {
		super();
		this.list = list;
		this.page = page;
		this.article = article;
	}

	public List<Article> getList() {
		return list;
	}

	public void setList(List<Article> list) {
		this.list = list;
	}

	public ArticlePage getPage() {
		return page;
	}

	public void setPage(ArticlePage page) {
		this.page = page;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@Override
	public String toString() {
		return "ArticleListContainer [list=" + list + ", page=" + page + ", article=" + article + "]";
	}

}
