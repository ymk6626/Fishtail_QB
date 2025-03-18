package com.easyjob.entity.po;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import com.easyjob.entity.enums.DateTimePatternEnum;
import com.easyjob.utils.DateUtil;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;


/**
 * 设备信息
 */
public class AppDevice implements Serializable {


	/**
	 * 设备ID
	 */
	private String deviceId;

	/**
	 * 手机品牌
	 */
	private String deviceBrand;

	/**
	 * 创建时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	/**
	 * 最后使用时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date lastUseTime;

	/**
	 * ip
	 */
	private String ip;


	public void setDeviceId(String deviceId){
		this.deviceId = deviceId;
	}

	public String getDeviceId(){
		return this.deviceId;
	}

	public void setDeviceBrand(String deviceBrand){
		this.deviceBrand = deviceBrand;
	}

	public String getDeviceBrand(){
		return this.deviceBrand;
	}

	public void setCreateTime(Date createTime){
		this.createTime = createTime;
	}

	public Date getCreateTime(){
		return this.createTime;
	}

	public void setLastUseTime(Date lastUseTime){
		this.lastUseTime = lastUseTime;
	}

	public Date getLastUseTime(){
		return this.lastUseTime;
	}

	public void setIp(String ip){
		this.ip = ip;
	}

	public String getIp(){
		return this.ip;
	}

	@Override
	public String toString (){
		return "设备ID:"+(deviceId == null ? "空" : deviceId)+"，手机品牌:"+(deviceBrand == null ? "空" : deviceBrand)+"，创建时间:"+(createTime == null ? "空" : DateUtil.format(createTime, DateTimePatternEnum.YYYY_MM_DD_HH_MM_SS.getPattern()))+"，最后使用时间:"+(lastUseTime == null ? "空" : DateUtil.format(lastUseTime, DateTimePatternEnum.YYYY_MM_DD_HH_MM_SS.getPattern()))+"，ip:"+(ip == null ? "空" : ip);
	}
}
