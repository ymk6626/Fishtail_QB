package com.easyjob.entity.po;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import com.easyjob.entity.enums.DateTimePatternEnum;
import com.easyjob.utils.DateUtil;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;


/**
 * 
 */
public class AppUserInfo implements Serializable {


	/**
	 * 用户ID
	 */
	private String userId;

	/**
	 * 邮箱
	 */
	private String email;

	/**
	 * 昵称
	 */
	private String nickName;

	/**
	 * 头像
	 */
	private String avatar;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 性别 0:女 1:男
	 */
	private Integer sex;

	/**
	 * 创建时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date joinTime;

	/**
	 * 最后登录时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date lastLoginTime;

	/**
	 * 最后使用的设备ID
	 */
	private String lastUseDeviceId;

	/**
	 * 手机品牌
	 */
	private String lastUseDeviceBrand;

	/**
	 * 最后登录IP
	 */
	private String lastLoginIp;

	/**
	 * 0:禁用 1:正常
	 */
	private Integer status;


	public void setUserId(String userId){
		this.userId = userId;
	}

	public String getUserId(){
		return this.userId;
	}

	public void setEmail(String email){
		this.email = email;
	}

	public String getEmail(){
		return this.email;
	}

	public void setNickName(String nickName){
		this.nickName = nickName;
	}

	public String getNickName(){
		return this.nickName;
	}

	public void setAvatar(String avatar){
		this.avatar = avatar;
	}

	public String getAvatar(){
		return this.avatar;
	}

	public void setPassword(String password){
		this.password = password;
	}

	public String getPassword(){
		return this.password;
	}

	public void setSex(Integer sex){
		this.sex = sex;
	}

	public Integer getSex(){
		return this.sex;
	}

	public void setJoinTime(Date joinTime){
		this.joinTime = joinTime;
	}

	public Date getJoinTime(){
		return this.joinTime;
	}

	public void setLastLoginTime(Date lastLoginTime){
		this.lastLoginTime = lastLoginTime;
	}

	public Date getLastLoginTime(){
		return this.lastLoginTime;
	}

	public void setLastUseDeviceId(String lastUseDeviceId){
		this.lastUseDeviceId = lastUseDeviceId;
	}

	public String getLastUseDeviceId(){
		return this.lastUseDeviceId;
	}

	public void setLastUseDeviceBrand(String lastUseDeviceBrand){
		this.lastUseDeviceBrand = lastUseDeviceBrand;
	}

	public String getLastUseDeviceBrand(){
		return this.lastUseDeviceBrand;
	}

	public void setLastLoginIp(String lastLoginIp){
		this.lastLoginIp = lastLoginIp;
	}

	public String getLastLoginIp(){
		return this.lastLoginIp;
	}

	public void setStatus(Integer status){
		this.status = status;
	}

	public Integer getStatus(){
		return this.status;
	}

	@Override
	public String toString (){
		return "用户ID:"+(userId == null ? "空" : userId)+"，邮箱:"+(email == null ? "空" : email)+"，昵称:"+(nickName == null ? "空" : nickName)+"，头像:"+(avatar == null ? "空" : avatar)+"，密码:"+(password == null ? "空" : password)+"，性别 0:女 1:男:"+(sex == null ? "空" : sex)+"，创建时间:"+(joinTime == null ? "空" : DateUtil.format(joinTime, DateTimePatternEnum.YYYY_MM_DD_HH_MM_SS.getPattern()))+"，最后登录时间:"+(lastLoginTime == null ? "空" : DateUtil.format(lastLoginTime, DateTimePatternEnum.YYYY_MM_DD_HH_MM_SS.getPattern()))+"，最后使用的设备ID:"+(lastUseDeviceId == null ? "空" : lastUseDeviceId)+"，手机品牌:"+(lastUseDeviceBrand == null ? "空" : lastUseDeviceBrand)+"，最后登录IP:"+(lastLoginIp == null ? "空" : lastLoginIp)+"，0:禁用 1:正常:"+(status == null ? "空" : status);
	}
}
