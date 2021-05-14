package com.sanxia.oa.unit;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;

/**
 *作者：杨 赢
 *时间：2018年2月25日
 *作用:获取当前的MAC地址
 */
public class MAC {
	public String getMAC(){
		 byte[] mac = new byte[0];
	     try {
	         InetAddress hostAndIP = InetAddress.getLocalHost();
	         mac = NetworkInterface.getByInetAddress(hostAndIP).getHardwareAddress();
	     } catch (SocketException e) {
	     } catch (UnknownHostException e) {
	     }
	     StringBuffer buffer = new StringBuffer("");
	     for (int i = 0; i < mac.length; i++) {
	         if (i != 0) {
	             buffer.append("-");
	         }
	         //字节转换为整数
	         int temp = mac[i] & 0xff;
	         String str = Integer.toHexString(temp);
	         if (str.length() == 1) {
	             buffer.append("0" + str);
	         } else {
	             buffer.append(str);
	         }
	     }
	     String ma= buffer.toString();
	     return ma;
	}
	
}
