package org.devnote.myblog.model.article;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Article {
	private int articleNo;
	private String category;
	private String title;
	private String content;
	private int recommend;
	private boolean open;
	private Date writeDate;
	private String writer;

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(String category, String title, String content, boolean open, String writer) {
		super();
		this.category = category;
		this.title = title;
		this.content = content;
		this.open = open;
		this.writer = writer;
	}

	public int getArticleNo() {
		return articleNo;
	}

	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public boolean isOpen() {
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(writeDate);
		return date;
	}

	@Override
	public String toString() {
		return "Article [articleNo=" + articleNo + ", category=" + category + ", title=" + title + ", content="
				+ content + ", recommend=" + recommend + ", open=" + open + ", writeDate=" + writeDate + ", writer="
				+ writer + "]";
	}

}
