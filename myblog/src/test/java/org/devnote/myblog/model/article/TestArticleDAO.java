package org.devnote.myblog.model.article;

import static org.junit.Assert.assertNotNull;
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
	boolean share = true;
	boolean open = false;
	String writer = "admin";
	
	@Test
	public void testGetTotalCount() {
		int totalCount = articleDAO.getTotalCount();
		log.info("총 {}개의 게시물이 있습니다.", totalCount);
	}
	
	@Test
	public void testInsertArticle(){
		Article article = new Article(category,title,content,share,open,writer);
		articleDAO.insertArticle(article);
		log.info("게시글 번호는 {} 입니다.",article.getArticleNo());
		log.info("게시글 추천수는 {} 입니다.",article.getRecommend());
		log.info("게시글 작성일은 {} 입니다.",article.getWriteDate());
	}
}
