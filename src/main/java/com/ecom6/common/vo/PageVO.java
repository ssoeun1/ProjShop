package com.ecom6.common.vo;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PageVO {
	private int pgCnt;		// 총 페이지
	private int BlCnt;	// 총 페이지 블록 수
	private int curPg = 1;	// 현재 페이지 수
	private int curBl = 1;	// 현재 페이지 블록 수
	private int startPg = 1;	// 현재 블록의 시작 페이지
	private int endPg = 1;	// 현재 블록의 끝 페이지
}
