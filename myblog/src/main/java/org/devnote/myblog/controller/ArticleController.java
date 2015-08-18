package org.devnote.myblog.controller;

import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.article.ArticleListContainer;
import org.devnote.myblog.model.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value = "/article/write_form")
	public String getWriteForm(Article article) {
		return "article_wide/write_form";
	}
	
	@RequestMapping(value = "/article", method=RequestMethod.POST)
	public String registerArticle(Model model, Article article,  BindingResult result){
		articleService.insertArticle(article);
		return "redirect:/article/1/"+article.getArticleNo();
	}
	
	@RequestMapping(value = "/article/{currentPage}/{articleNo}", method=RequestMethod.GET)
	public String selectArticle(@PathVariable int articleNo,@PathVariable int currentPage, Model model){	
		ArticleListContainer listContainer = articleService.selectArticle(articleNo, currentPage);
		model.addAttribute("listContainer",listContainer);
		return "article_default/read_view";
	}
	
	@RequestMapping(value = "/article/{category}", method=RequestMethod.GET)
	public String selectCategory (@PathVariable String category, Model model) {
		ArticleListContainer listContainer = articleService.selectCategory(category);
		model.addAttribute("listContainer",listContainer);
		return "article_default/read_view";
	}
	
}
