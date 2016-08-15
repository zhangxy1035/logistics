package org.ankang.tianmao.entity;

public class Page {
	//显示第几页数据,默认第一页
	private Integer page=1;
	//一页显示几条,默认5条
	private Integer pageSize = 3;
	//最大页数
	private Integer totalPage=1;
	
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	//利用page和pageSize计算begin起点
	public Integer getBegin(){
		return (page-1)*pageSize;
	}
	//利用page和pageSize计算end结束点
	public Integer getEnd(){
		return page*pageSize+1;
	}
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
}
