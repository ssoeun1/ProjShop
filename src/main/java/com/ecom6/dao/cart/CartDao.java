package com.ecom6.dao.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ecom6.VO.cart.CartVO;
import com.ecom6.VO.order.OrderVO;

@Mapper
public interface CartDao {


	List<CartVO> getCartItemList(CartVO cvo);

	Boolean findCart(CartVO cvo);

	int insertCart(CartVO cvo);

	int updateCart(CartVO cvo);

	int countCart(CartVO cvo);

	List<OrderVO> getCartItemList(String mem_id);

	void deleteCart(String mem_id);

	void deleteCartItem(CartVO cvo);

	void updateCartItem(CartVO cvo);

	int getCartItemCnt(String mem_id);

	int getCartTotalPrcie(String mem_id);


}