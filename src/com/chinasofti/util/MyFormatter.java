package com.chinasofti.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.format.Formatter;

/*时间类型转换器*/
public class MyFormatter implements Formatter<Date> {
	
	private String pattern;
	SimpleDateFormat sdf;

	public String getpattern() {
		return pattern;
	}

	public void setPattren(String pattern) {
		this.pattern = pattern;
	}

	public MyFormatter(String pattern) {
		this.pattern = pattern;
		sdf = new SimpleDateFormat(pattern);
	}

	public MyFormatter() {
	}

	@Override
	public String print(Date date, Locale arg1) {
		String dd = sdf.format(date);
		return dd;
	}

	@Override
	public Date parse(String date, Locale arg1) throws ParseException {
		return sdf.parse(date);
	}
}
