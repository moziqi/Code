package org.mu.opencomm.code.entity;

import java.util.Date;

import org.bson.types.ObjectId;
import org.mu.opencomm.common.annotation.DBDocument;
import org.mu.opencomm.common.annotation.DBField;
import org.mu.opencomm.common.entity.Identifiable;

@DBDocument(collection = "ncsa_log", autoIndexId = false)
public class NCSALog implements Identifiable {

	@DBField
	private String remotehost;

	@DBField
	private String ident;

	@DBField
	private String authuser;

	@DBField
	private Date date;

	@DBField
	private RequestData request;

	@DBField
	private int status;

	@DBField
	private long bytes;

	@DBField
	private String referrer;

	@DBField
	private String agent;

	public String getRemotehost() {
		return remotehost;
	}

	public void setRemotehost(String remotehost) {
		this.remotehost = remotehost;
	}

	public String getIdent() {
		return ident;
	}

	public void setIdent(String ident) {
		this.ident = ident;
	}

	public String getAuthuser() {
		return authuser;
	}

	public void setAuthuser(String authuser) {
		this.authuser = authuser;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public RequestData getRequest() {
		return request;
	}

	public void setRequest(RequestData request) {
		this.request = request;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public long getBytes() {
		return bytes;
	}

	public void setBytes(long bytes) {
		this.bytes = bytes;
	}

	public String getReferrer() {
		return referrer;
	}

	public void setReferrer(String referrer) {
		this.referrer = referrer;
	}

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	@Override
	public ObjectId getId() {
		return null;
	}
	
}
