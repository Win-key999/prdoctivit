package com.nkxgen.spring.orm.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class FunctionalUnitId implements Serializable {
	private int funId;
	private int modlId;

	public int getFunId() {
		return funId;
	}

	public void setFunId(int funId) {
		this.funId = funId;
	}

	public int getModlId() {
		return modlId;
	}

	public void setModlId(int modlId) {
		this.modlId = modlId;
	}

}
