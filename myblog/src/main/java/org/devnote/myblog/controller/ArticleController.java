package org.devnote.myblog.controller;

import org.devnote.myblog.model.article.Article;
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
	public String getRegisterArticleForm(Article article) {
		return "article_wide/write_form";
	}
	
	@RequestMapping(value = "/article", method=RequestMethod.POST)
	public String registerArticle(Model model, Article article,  BindingResult result){
		articleService.insertArticle(article);
		return "redirect:/article/"+article.getArticleNo();
	}
	
	@RequestMapping(value = "/article/{articleNo}", method=RequestMethod.GET)
	public String getArticle(@PathVariable int articleNo, Model model){	
		model.addAttribute("article", articleService.getArticle(articleNo));
		return "article_default/write_result";
	}
}
