package com.sanxia.oa.unit;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 作者：杨 赢 
 * 时间：2018年2月2日
 * 作用：字符串MD5加密
 */
public class MD5 {
	/**
	 * MD5加密
	 */
	public String encrypt(String str) {

		// 生成一个MD5加密计算摘要
		MessageDigest md;
		String string = null;
		try {
			//获取实例对象
			md = MessageDigest.getInstance("MD5");
			// 计算md5函数
			md.update(str.getBytes());
			// digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
			// BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
			string = new BigInteger(1, md.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			//打印出错信息
			e.printStackTrace();
		}
		return string;
	}
}
