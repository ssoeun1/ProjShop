package com.ecom6.VO.order;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class OrderInfo {
	private int rn;
	private int o_no;
	private String mem_id;
	private String o_regdate;
	private int total_amount;
	private String transactionId;
	private String m_role;
	private int start;
	private int end;
}
