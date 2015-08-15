package org.devnote.myblog.controller;

import javax.servlet.http.HttpServletResponse;

import org.devnote.myblog.model.article.Article;
import org.devnote.myblog.model.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String registerArticle(Model model, Article article){
		System.out.println(article);
		articleService.insertArticle(article);
		return "redirect:/article/"+article.getArticleNo();
	}
	
	@RequestMapping(value = "/article/{articleNo}", method=RequestMethod.GET)
	public String getArticle(@PathVariable int articleNo, Model model,
			HttpServletResponse response){		
		model.addAttribute("article", articleService.getArticle(articleNo));
		return "board_default/write_result";
	}
}
