package net.beans;

public class LearnResources {
	int resources_id;
	String title;
	String content;

	public LearnResources() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LearnResources(int resources_id, String title, String content) {
		super();
		this.resources_id = resources_id;
		this.title = title;
		this.content = content;
	}

	public LearnResources(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}

	public int getResources_id() {
		return resources_id;
	}

	public void setResources_id(int resources_id) {
		this.resources_id = resources_id;
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

}
