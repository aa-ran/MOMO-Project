package com.momo.spring.qna.domain;

public class Qna {

	private int qnaId;
	private String qUserId;
	private String aUserId;
	private String q;
	private String a;
	
	public Qna() {}

	public Qna(int qnaId, String qUserId, String aUserId, String q, String a) {
		super();
		this.qnaId = qnaId;
		this.qUserId = qUserId;
		this.aUserId = aUserId;
		this.q = q;
		this.a = a;
	}

	public int getQnaId() {
		return qnaId;
	}

	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}

	public String getqUserId() {
		return qUserId;
	}

	public void setqUserId(String qUserId) {
		this.qUserId = qUserId;
	}

	public String getaUserId() {
		return aUserId;
	}

	public void setaUserId(String aUserId) {
		this.aUserId = aUserId;
	}

	public String getQ() {
		return q;
	}

	public void setQ(String q) {
		this.q = q;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	@Override
	public String toString() {
		return "Qna [qnaId=" + qnaId + ", qUserId=" + qUserId + ", aUserId=" + aUserId + ", q=" + q + ", a=" + a + "]";
	}
}
