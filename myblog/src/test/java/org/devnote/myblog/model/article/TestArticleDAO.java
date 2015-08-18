package org.devnote.myblog.model.article;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestArticleDAO {

	@Autowired
	private ArticleDAO articleDAO;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Before
	public void setUp() throws Exception {
		assertNotNull(articleDAO);
	}

	String category = "first";
	String title = "second";
	String content = "third";
	boolean open = false;
	String writer = "admin";
		
	@Test
	public void testInsertArticle(){
		Article article = new Article(category,title,content,open,writer);
		articleDAO.insertArticle(article);
		log.info("게시글 번호는 {} 입니다.",article.getArticleNo());
		log.info("게시글 추천수는 {} 입니다.",article.getRecommend());
		log.info("게시글 작성일은 {} 입니다.",article.getWriteDate());
	}
	
	@Test
	public void testGetArticle() {
		Article article = articleDAO.getArticle(2);
		log.info("{}",article.getTitle());
	}
	
	@Test
	public void testGetTotalCounts(){
		int total = articleDAO.getTotalCounts("개발노트");
		log.info("글 갯수 : {}",total);
	}
	
	@Test
	public void testRecentArticle(){
		Article article = articleDAO.recentArticle("개발노트");
		log.info("최근 글 제목 : {}",article.getTitle());
	}
	
	@Test
	public void testGetArticleList(){
		int total = articleDAO.getTotalCounts("개발노트");
		ArticlePage page = new ArticlePage("개발노트", total);
		List<Article> list = articleDAO.getArticleList(page);
		System.out.println(list);
	}
}
