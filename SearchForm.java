package jp.co.internous.lion.model.form;

import java.io.Serializable;

public class SearchForm implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	//検索ワードとカテゴリidの属性
	private String keywords;
	private int category;
	
	//各属性のゲッターとセッター
	public String getKeywords() {
		return keywords;
	}
	
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	public int getCategory() {
		return category;
	}
	
	public void setCategory(int category) {
		this.category = category;
	}

}
