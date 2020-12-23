package jp.co.internous.lion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.lion.model.domain.MstCategory;
import jp.co.internous.lion.model.domain.MstProduct;
import jp.co.internous.lion.model.form.SearchForm;
import jp.co.internous.lion.model.mapper.MstCategoryMapper;
import jp.co.internous.lion.model.mapper.MstProductMapper;
import jp.co.internous.lion.model.session.LoginSession;



@Controller
@RequestMapping("/lion")
public class IndexController {
	
	@Autowired
	private MstProductMapper productMapper;
	
	@Autowired
	private MstCategoryMapper categoryMapper;
	
	@Autowired
	private LoginSession loginSession;

	//初期表示
	@RequestMapping("/")
	public String index(Model m) {
		//仮ユーザ－idの取得
		if(!loginSession.getLoginFlag() && loginSession.getTemporaryUserId() == 0) {
			//9桁のidをランダム取得
			int temporaryUserId = (int)(Math.random() * 1000000000 * -1);
			while (temporaryUserId > -100000000) {
				temporaryUserId *= 10;
			}
			loginSession.setTemporaryUserId(temporaryUserId);
		}
		
		//カテゴリ取得
		List<MstCategory> categories = categoryMapper.find();
		
		//商品情報取得
		List<MstProduct> products = productMapper.find();
		
		m.addAttribute("categories", categories);
		//初期表示カテゴリ0で表示
		m.addAttribute("selected", 0);
		m.addAttribute("products", products);
		//page_header.htmlでsessionの変数を表示させているため、loginSessionも画面に送る
		m.addAttribute("loginSession", loginSession);
		
		return "index";
	}
	
	//検索機能
	@RequestMapping("/searchItem")
	public String search(SearchForm f, Model m) {
		//初期表示で取得した商品情報を空にする
		List<MstProduct> products = null;
		
		String keywords = f.getKeywords().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();
		if(f.getCategory() == 0) {
			//カテゴリ未選択のとき
			products = productMapper.findByProductName(keywords.split(" "));
			//カテゴリが選択されたとき
		} else {
			products = productMapper.findByCategoryAndProductName(f.getCategory(), keywords.split(" "));
		}
		
		//カテゴリ取得
		List<MstCategory> categories = categoryMapper.find();
		m.addAttribute("keywords", keywords);
		//検索後選択されたカテゴリを表示
		m.addAttribute("selected", f.getCategory());
		m.addAttribute("categories", categories);
		m.addAttribute("products", products);
		//page_header.htmlでsessionの変数を表示させているため、loginSessionも画面に送る
		m.addAttribute("loginSession", loginSession);
		
		return "index";
	}
	
}
