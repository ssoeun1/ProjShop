<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<!-- <link rel="stylesheet" type="text/css" href="./css/ProductList.css" /> -->
<link rel="stylesheet" type="text/css" href="../css/OrderList.css" />
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script src="./js/product.js" defer="defer"></script>
<script src="./js/cart.js" defer="defer"></script>
<script src="./js/layout.js" defer="defer"></script>
<script src="./js/zipCheck.js" defer="defer"></script>
</head>
<body id="userStyle">
	<!-- [상단영역] -->
	<header id="header">
		<!-- app tag -->
		<div id="ec-orderform-header-head"></div>
		<div class="header">
			<h1 class="xans-element- xans-layout xans-layout-logotop ">
				<a href="/index.html">Modi studio</a>
			</h1>
			<div class="headerMenu gLeft">
				<span class="xans-element- xans-layout xans-layout-mobileaction btnBack ">
					<a href="#none" onclick="document.referrer ? history.go(-1) : location.href='/';return false;">
					"뒤로가기"
					</a>
				</span>
			</div>
			<div class="headerMenu gRight">
				<span class="xans-element- xans-layout xans-layout-orderbasketcount btnBasket ">
					<a href="cartlist">
					"장바구니"
						<span class="count EC-Layout_Basket-count-display">
							<span class="EC-Layout-Basket-count">
							1
							</span>
						</span>
					</a>
				</span>
				<a href="/myshop/index.html" class="xans-element- xans-layout xans-layout-statelogon btnMy ">
				마이쇼핑
				</a>
			</div>
		</div>
		<div class="titleArea">
			<h1>주문/결제</h1>
		</div>
		<!-- app tag -->
		<div id="ec-orderform-header-tail"></div>
	</header>
	<div id="titleArea" class="titleArea">
		<h1>주문/결제</h1>
	</div>
	<form id="frm_order_act" name="frm_order_act" action method="post"
	target="_self" enctype="multipart/form-data">
		<input id="move_order_after" name="move_order_after" value="/order/order_result.html" type="hidden">
		<input id="orderform_id" name="orderform_id" value="O-20240716-2109514842f85215" type="hidden">
		<input id="use_join_privacy_policy_required" name="use_join_privacy_policy_required" value="T" type="hidden">
		<input id="order_agreement_member_use_flag" name="order_agreement_member_use_flag" value type="hidden">
		<input id="order_agreement_nonmember_use_flag" name="order_agreement_nonmember_use_flag" value type="hidden">
		<input id="is_crowd_funding" name="is_crowd_funding" value="F" type="hidden">
		<input id="member_group_price" name="member_group_price" value="0" type="hidden">
		<input id="mileage_generate3" name="mileage_generate3" value="0" type="hidden">
		<input id="total_group_dc" name="total_group_dc" value="0" type="hidden">
		<input id="total_plusapp_mileage_price" name="total_plusapp_mileage_price" value type="hidden">
		<input id="basket_type" name="basket_type" value="all_buy" type="hidden">
		<input id="productPeriod" name="productPeriod" value type="hidden">
		<input id="member_id" name="member_id" value="dfgh2877" type="hidden">
		<input id="delvType" name="delvType" value="A" type="hidden">
		<input id="isUpdateMemberEmailOrder" name="isUpdateMemberEmailOrder" value="F" type="hidden">
		<input id="isSimplyOrderForm" name="isSimplyOrderForm" value="F" type="hidden">
		<input id="__ocountry" name="__ocountry" value="KOR" type="hidden">
		<input id="__oaddr1" name="__oaddr1" value type="hidden">
		<input id="__ocity" name="__ocity" value type="hidden">
		<input id="__ostate" name="__ostate" value type="hidden">
		<input id="sSinameZhAreaWord" name="sSinameZhAreaWord" value="省/市" type="hidden">
		<input id="sSinameTwAreaWord" name="sSinameTwAreaWord" value="市/縣" type="hidden">
		<input id="sGunameZhAreaWord" name="sGunameZhAreaWord" value="区" type="hidden">
		<input id="sGunameTwAreaWord" name="sGunameTwAreaWord" value="區/市" type="hidden">
		<input id="__addr1" name="__addr1" value type="hidden">
		<input id="__city_name" name="__city_name" value type="hidden">
		<input id="__state_name" name="__state_name" value type="hidden">
		<input id="__isRuleBasedAddrForm" name="__isRuleBasedAddrForm" value="T" type="hidden">
		<input id="message_autosave" name="message_autosave" value="F" type="hidden">
		<input id="hope_date" name="hope_date" value type="hidden">
		<input id="hope_ship_begin_time" name="hope_ship_begin_time" value type="hidden">
		<input id="hope_ship_end_time" name="hope_ship_end_time" value type="hidden">
		<input id="is_fast_shipping_time" name="is_fast_shipping_time" value type="hidden">
		<input id="eguarantee_id" name="eguarantee_id" value="F" type="hidden">
		<input id="is_hope_shipping" name="is_hope_shipping" value="F" type="hidden">
		<input id="is_fast_shipping" name="is_fast_shipping" value type="hidden">
		<input id="fCountryCd" name="fCountryCd" value type="hidden">
		<input id="sCpnPrd" name="sCpnPrd" value="0" type="hidden">
		<input id="sCpnOrd" name="sCpnOrd" value="0" type="hidden">
		<input id="coupon_saving" name="coupon_saving" value="0" type="hidden">
		<input id="coupon_discount" name="coupon_discount" value="0" type="hidden">
		<input id="coupon_shipfee" name="coupon_shipfee" value="0" type="hidden">
		<input id="is_used_with_mileage" name="is_used_with_mileage" value="F" type="hidden">
		<input id="is_used_with_member_discount" name="is_used_with_member_discount" value="F" type="hidden">
		<input id="is_used_with_coupon" name="is_used_with_coupon" value="F" type="hidden">
		<input id="is_no_ozipcode" name="is_no_ozipcode" value="F" type="hidden">
		<input id="is_no_rzipcode" name="is_no_rzipcode" value="F" type="hidden">
		<input id="is_cashreceipt_displayed_on_screen" name="is_cashreceipt_displayed_on_screen" value="F" type="hidden">
		<input id="is_taxrequest_displayed_on_screen" name="is_taxrequest_displayed_on_screen" value="F" type="hidden">
		<input id="app_scheme" name="app_scheme" value type="hidden">
		<input id="is_store" name="is_store" value type="hidden">
		<input id="defer_commission" name="defer_commission" value="0" type="hidden">
		<input id="order_form_simple_type" name="order_form_simple_type" value="T" type="hidden">
		<input id="information_agreement_check_val" name="information_agreement_check_val" value="F" type="hidden">
		<input id="consignment_agreement_check_val" name="consignment_agreement_check_val" value="F" type="hidden">
		<input id="thirdParty_agreement_check_val" name="thirdParty_agreement_check_val" value="F" type="hidden">
		<input id="basket_sync_flag" name="basket_sync_flag" value="F" type="hidden">
		<input id="app_discount_data" name="app_discount_data" value type="hidden">
		<input id="is_shipping_address_readonly_by_app" name="is_shipping_address_readonly_by_app" value type="hidden">
		<input id="is_app_delivery" name="is_app_delivery" value="F" type="hidden">
		<input id="app_delivery_data" name="app_delivery_data" value type="hidden">
		<input id="is_available_shipping_company_by_app" name="is_available_shipping_company_by_app" value type="hidden">
		<input id="is_multi_delivery" name="is_multi_delivery" value="F" type="hidden">
		<input id="is_no_shipping_required" name="is_no_shipping_required" value="F" type="hidden">
		<input id="use_shipping_manager" name="use_shipping_manager" value="F" type="hidden">
		<input id="shipping_manager_data" name="shipping_manager_data" value="{&quot;reason_for_not_calculating_shipping_fee&quot;:null,&quot;shipping_manager_shipping_fees&quot;:null,&quot;selected_shipping_manager_shipping_fees&quot;:null,&quot;shipping_manager_shipping_fees_response&quot;:null,&quot;shipping_manager_shipping_fee_detail&quot;:null}" type="hidden">
		<input id="selected_shipping_manager_data" name="selected_shipping_manager_data" value="null" type="hidden">
		<input id="ex_mileage" name="ex_mileage" value type="hidden">
		<input id="pagetype" name="pagetype" value type="hidden">
		<input id="is_direct_buy" name="is_direct_buy" value="F" type="hidden">
		<input id="is_subscription_invoice" name="is_subscription_invoice" value="F" type="hidden">
		<input id="order_enable" name="order_enable" value type="hidden">
		<input id="use_tax_manager" name="use_tax_manager" value="F" type="hidden">
		<input id="use_external_tax_app" name="use_external_tax_app" value="NA" type="hidden">
		<input id="app_tax_data" name="app_tax_data" value type="hidden">
		<input id="include_tax_in_prices" name="include_tax_in_prices" value="T" type="hidden">
		<input id="total_tax_raw" name="total_tax_raw" value="0" type="hidden">
		<input id="jwt" name="jwt" value type="hidden">
		<input id="service_code" name="service_code" value type="hidden">
		<input id="used_card" name="used_card" value type="hidden">
		<input id="sEleID" name="sEleID" value="total_price||productPeriod||ophone1_1||ophone1_2||ophone1_3||ophone2_1||ophone2_2||ophone2_3||ophone1_ex1||ophone1_ex2||ophone2_ex1||ophone2_ex2||basket_type||oname||oname2||english_oname||english_name||english_name2||input_mile||input_deposit||hope_date||hope_ship_begin_time||hope_ship_end_time||is_fast_shipping_time||fname||fname2||paymethod||eguarantee_flag||eguarantee_ssn1||eguarantee_ssn2||eguarantee_year||eguarantee_month||eguarantee_day||eguarantee_user_gender||eguarantee_personal_agreement||question||question_passwd||delvType||f_country||fzipcode||faddress||fphone1_1||fphone1_2||fphone1_3||fphone1_4||fphone1_ex1||fphone1_ex2||fphone2_ex1||fphone2_ex2||fphone2||fmessage||fmessage_select||rname||rzipcode1||rzipcode2||raddr1||raddr2||rphone1_1||rphone1_2||rphone1_3||rphone2_1||rphone2_2||rphone2_3||omessage||omessage_select||ozipcode1||ozipcode2||oaddr1||oaddr2||oemail||oemail1||oemail2||ocity||ostate||ozipcode||eguarantee_id||coupon_discount||coupon_saving||order_password||is_fast_shipping||fCountryCd||message_autosave||oa_content||gift_use_flag||pname||bankaccount||regno1||regno2||escrow_agreement0||addr_paymethod||member_group_price||chk_purchase_agreement||total_plusapp_mileage_price||mileage_generate3||is_hope_shipping||sCpnPrd||sCpnOrd||coupon_shipfee||np_req_tx_id||np_save_rate||np_save_rate_add||np_use_amt||np_mileage_use_amount||np_cash_use_amount||np_total_use_amount||np_balance_amt||np_use||np_sig||flagEscrowUse||flagEscrowIcashUse||add_ship_fee||total_group_dc||pron_name||pron_name2||pron_oname||faddress2||si_gun_dosi||ju_do||is_set_product||basket_prd_no||move_order_after||is_no_ozipcode||is_no_rzipcode||__ocountry||__oaddr1||__ocity||__ostate||__addr1||__city_name||__state_name||__isRuleBasedAddrForm||sSinameZhAreaWord||sSinameTwAreaWord||sGunameZhAreaWord||sGunameTwAreaWord||delivcompany||is_store||cashreceipt_user_type||cashreceipt_user_type2||cashreceipt_regist||cashreceipt_user_mobile1||cashreceipt_user_mobile2||cashreceipt_user_mobile3||cashreceipt_reg_no||is_cashreceipt_displayed_on_screen||tax_request_regist||tax_request_name||tax_request_phone1||tax_request_phone2||tax_request_phone3||tax_request_email1||tax_request_email2||tax_request_company_type||tax_request_company_regno||tax_request_company_name||tax_request_president_name||tax_request_zipcode||tax_request_address1||tax_request_address2||tax_request_company_condition||tax_request_company_line||is_taxrequest_displayed_on_screen||isSimplyOrderForm||use_safe_phone||app_scheme||isUpdateMemberEmailOrder||defer_commission||defer_p_name||order_form_simple_type||gmo_order_id||gmo_transaction_id||receiver_id_card_key||receiver_id_card_type||simple_join_is_check||simple_join_agree_use_info||etc_subparam_member_id||etc_subparam_email1||etc_subparam_passwd||etc_subparam_user_passwd_confirm||etc_subparam_passwd_type||etc_subparam_is_sms||etc_subparam_is_news_mail||information_agreement_check_val||consignment_agreement_check_val||remind_id||remind_code||shipping_additional_fee_show||shipping_additional_fee_hide||shipping_additional_fee_name_show||save_paymethod||allat_account_nm||basket_sync_flag||member_id||input_pointfy||set_main_address0||app_discount_data||is_shipping_address_readonly_by_app||is_app_delivery||app_delivery_data||is_available_shipping_company_by_app||is_direct_buy||is_subscription_invoice||subscription_start_date||order_enable||is_crowd_funding||is_multi_delivery||is_no_shipping_required||use_tax_manager||use_external_tax_app||app_tax_data||include_tax_in_prices||total_tax_raw||pagetype||jwt||service_code||used_card||use_shipping_manager||shipping_manager_data||selected_shipping_manager_data||hope_shipping_date||ex_mileage||etc_is_user_defined||etc_is_marketing||simple_order_agreement_check_box||marketing_agreement_checkbox0||simple_join_agreement_checkbox0||privacy_optional_agreement_check_box||privacy_optional_agreement_checkbox||sms_agreement_checkbox0||email_agreement_checkbox0||third_party_providet_agreement_checkbox0||privacy_optional_agreement_checkbox0||thirdParty_agreement_check_val||marketing_message_agreement_checkbox0||marketing_message_agreement_checkbox1||orderform_id||use_join_privacy_policy_required||order_agreement_member_use_flag||order_agreement_nonmember_use_flag||is_used_with_mileage||is_used_with_member_discount||is_used_with_coupon" type="hidden">
		<div id="mCafe24Order" class="xans-element- xans-order xans-order-form typeHeader xans-record-">
			<div id="ec-jigsaw-area-productdetail"></div>
			<div class="billingNshipping">
				<!-- 주문자정보 -->
				<div id="ec-jigsaw-area-billingInfo" class="ec-base-fold eToggle displaynone">
					<div id="ec-jigsaw-title-billingInfo" class="title">
						<h2>주문 정보</h2>
						<span id="ec-jigsaw-heading-billingInfo" class="txtEm gRight">undefined(dfgh2877@naver.com)
						</span>
					</div>
				</div>
				<!-- 배송정보 -->
				<div id="lShippingCompanyLists" class="ec-area-shipping-companies ec-base-fold eToggle selected displaynone">
					<div class="title">
						<h2>상품 수령</h2>
					</div>
					<div class="contents">
						<div class="segment">
							<!-- 배송업체(방식) 선택 -->
							<p class="ec-base-help displaynone">
							스토어픽업을 사용할 수 없는 상품이 포함되어 있어 일반 배송사만 선택 가능합니다.
							</p>
							<span class="ec-base-label" id="delivery_app_list"></span>
							<ul class="ec-base-help " id="deliv_info_view">
								<li class="txtEm ">
									배송비 :
									<span id="deliv_company_price_custom_type">0</span>
								</li>
								<li class="displaynone">
									<div class="ec-shop-shipping_additional_fee_show displaynone">
										<span class="txtEm">
											배송비 : ₩
											<span id="f_addr_total_ship_fee_id">
											</span>
											원
										</span>
										=해외배송비 ₩
										<span id="f_addr_delv_price_id">
										</span>
										원 + 보험료 ₩
										<span id="f_addr_insurance_price_id">
										</span>
										원 
										<span class="ec-shop-shipping_additional_fee_name_show">
											+ 
											<span id="f_addr_shipping_additional_fee_name_id">
											</span>
											 ₩
											<span id="f_addr_shipping_additional_fee_id"></span>
											원
										</span>
										<p class="ec-base-help typeDash gIndent10">
										보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.
										</p>
									</div>
									<div class="ec-shop-shipping_additional_fee_hide ">
										<span class="txtEm">
											배송비 : ₩
											<span id="f_addr_total_ship_fee_id"></span>
											원
										</span>
										 = 해외배송비 ₩
										<span id="f_addr_delv_price_id"></span>
										원 + 보험료 ₩
										<span id="f_addr_insurance_price_id"></span>
										원
										<ul class="ec-base-help typeDash gIndent10">
											<li>
											배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시 고객님이 추가로 지불하셔야 합니다.
											</li>
											<li>
											보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.
											</li>
										</ul>
									</div>
								</li>
								<li class="ec-deliv-company-shipping-info">
									배송안내 : 
									<span id="deliv_company_shipping_info"></span>
								</li>
								<li>
									배송소요기간 : 
									<span id="deliv_company_period_custom_type"></span>
								</li>
								<li class="displaynone" id="ordertime">
									주문가능 시간 : 
									<span id="deliv_company_ordertime_custom_type"></span>
								</li>
								<li class="displaynone" id="areaname">
									<div>
										배송가능 지역 : 
										<span id="deliv_company_areaname_custom_type"></span>
									</div>
									<div class="ec-base-button">
										<button type="button" id class="btnNormal mini">배송가능지역</button>
									</div>
								</li>
								<li></li>
							</ul>
							<ul class="ec-base-help displaynone" id="store_info_view">
								<li class="txtEm">
									<span id="store_receive_period"></span>
								</li>
								<li>
									<span id="store_receive_addr"></span>
								</li>
								<li>
									영업시간 : 
									<span id="store_office_hour"></span>
								</li>
								<li>
									<span id="store_receive_map"></span>
								</li>
								<li>
									<div class="ec-base-button">
										<button type="button" id="btnStoreListOpen" class="btnNormal mini">
										수령지 안내
										</button>
									</div>
								</li>
							</ul>
							<ul class="ec-base-help" id="delivery_app_info">
								<li class="txtEm" id="delivery_app_shipfee_div">
									배송비 : 
									<span id="delivery_app_shipfee"></span>
								</li>
								<li id="delivery_app_description_div">
									배송안내 : 
									<span id="delivery_app_description"></span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 수령자 정보 -->
				<div id="ec-jigsaw-area-shippingInfo" class="ec-base-fold eToggle selected">
					<div id="ec-jigsaw-title-shippingInfo" class="title">
						<h2>배송지</h2>
						
					</div>
					<div class="contents">
						<!-- app tag -->
						<div id="ec-orderform-billingNshipping-head"></div>
						<!-- 국내배송 정보 -->
						<div class>
							<div id="ec-jigsaw-tab-shippingInfo" class="ec-base-tab ">
								<ul>
									<li id="ec-jigsaw-tab-shippingInfo-recentAddress" class>
										<a href="#none">최근 배송지</a>
									</li>
									<li id="ec-jigsaw-tab-shippingInfo-newAddress" class="selected">
										<a href="#none">직접입력</a>
									</li>
								</ul>
							</div>
							<!-- 최근배송지 -->
							<div id="ec-shippingInfo-recentAddress" class="tabCont recentShipArea 1" style="display: none;">
								<div id="ec-shippingInfo-recentAddressText" class="segment">
									<div class="ec-shop-deliveryInfoText recent">
										<strong class="name">
											<span class="txtEm" id="ec-shop-deliveryInfoMainLabel"></span>
											<span id="ec-shop-deliveryInfoName">이지호</span>
										</strong>
										<p class="address gBlank10">
											[
											<span id="ec-shop-deliveryInfoZipcode"></span>
											] 
											<span id="ec-shop-deliveryInfoAddress"> </span>
										</p>
										<dl class="contact">
											<dt class>휴대전화</dt>
											<dd class id="ec-shop-deliveryInfoCell">010-4711-7805</dd>
											<dt class="displaynone">일반전화</dt>
											<dd class="displaynone" id="ec-shop-deliveryInfoTel"></dd>
										</dl>
									</div>
									<span class="sideRight">
										<button type="button" id="ec-shippingInfo-showRecentAddressList" class="btnNormal mini">
										배송지 목록
										</button>
									</span>
								</div>
								<div id="ec-shippingInfo-recentAddressList" class="segment" style="display:none;">
									<ul class="shippingList">
										<li class="xans-element- xans-order xans-order-deliverylist ">
											<strong class="name">
												<span id="ec-shippingInfo-recentAddressList-mainLabel-" class="txtEm"></span>
											</strong>
											<div class="description">
												<span class="choice">
													<input type="radio" id="ec-shippingInfo-recentAddressList-choice-select-" name="ec-shippingInfo-recentAddressList-choice" value class="fRadio" autocomplete="off">
												</span>
												<p class="address gBlank10">
													[
													<span class="ec-shippingInfo-recentAddressList-zipcode-"></span>
													] 
													<span class="ec-shippingInfo-recentAddressList-addr1-"></span>
													<br>
													<span class="ec-shippingInfo-recentAddressList-addr2-"></span>
												</p>
												<dl class="contact">
													<dt>휴대전화</dt>
													<dd></dd>
													<dt>일반전화</dt>
													<dd></dd>
												</dl>
											</div>
											<span class="button">
												<button type="button" id="ec-shippingInfo-recentAddressList-choice-modify-" class="btnText">수정</button>
											</span>
										</li>
									</ul>
									<span class="sideRight">
										<button type="button" id="ec-shippingInfo-closeRecentAddressList" class="btnBase mini">닫기</button>
									</span>								
								</div>
							</div>
							<!-- 새 배송지 -->
							<div id="ec-shippingInfo-newAddress" class="tabCont newShipArea ">
								<div class="segment ec-shippingInfo-sameaddr ">
									<input id="sameaddr0" name="sameaddr" fw-filter fw-label="1" fw-msg value="M" type="radio" autocomplete="off">
									<label for="sameaddr0">회원 정보와 동일</label>
									<input id="sameaddr1" name="sameaddr" fw-filter fw-label="1" fw-msg value="F" type="radio" autocomplete="off">
									<label for="sameaddr1">새로운 배송지</label>
								</div>
								<div class="ec-base-table typeWrite">
									<table border="1">
										<caption>배송 정보 입력</caption>
										<colgroup>
											<col style="width:102px">
											<col style="width:auto">
										</colgroup>
										<tbody>
											<tr class="ec-shippingInfo-newAddress-name">
												<th scope="row">
													받는사람 
													<span class="icoRequired">필수</span>
												</th>
												<td>
													<input id="rname" name="rname" fw-filter="isFill" fw-label="수취자 성명" class="inputTypeText" placeholder size="15" value type="text">
												</td>
											</tr>
											<tr id="ec-receiver-address">
														<th scope="row">주소 <span class=""><span class="icoRequired">필수</span></span>
													</th>
			                                <td>
			                                    <ul class="ec-address">
											            <li id="receiver_country_wrap" class="displaynone" style="display: none;">
											                <span id="receiver_directInputCheck_wrap" class="ec-base-label">
											                     <input id="receiver_directInputCheck" name="receiver_directInputCheck" type="checkbox" disabled="">
											                        <label id="receiver_directInputCheckLabel" for="receiver_directInputCheckLabel">직접입력</label>
											                </span>
											            </li>
											            <li id="receiver_zipcode_wrap" class="ec-address-zipcode" style="">
											                <input type="text" name="zipcode" id="rzipcode1" class="chk form-control" value="${mvo.zipcode}">
											                  <button class="btnBasic" type="button" onclick="zipCheck()">주소검색</button> 
							               				      <span class="ec-base-label">
							                                      <input id="no_rzipcode0" name="no_rzipcode0" class="displaynone" type="checkbox" disabled="" fw-filter="" style="display: none; cursor: unset;">
							                                      <label id="receiver_zipcode_check_label" for="no_rzipcode0" class="displaynone" disabled="" style="display: none;" fw-filter="">우편번호 없음</label>
							                                  </span>
							                                  <span id="receiver_zipcodeNotFoundMsg_wrap" class="ec-base-label displaynone">
							                                    우편번호가 정확하지 않습니다. 다시 확인해 주세요.
							                                  </span>
							                             </li>
							                             <li id="sample6_address" class="" style="">
													          <input id="sample6_address" name="raddr1" value="${mvo.address}" placeholder="기본주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="100" readonly="" fw-label="기본주소" style="">
													     </li>
													     <li id="sample6_extraAddress" class="" style="">
													          <input id="sample6_extraAddress" name="raddr2"  value="${mvo.address2}" placeholder="나머지 주소(선택 입력 가능)" fw-filter="" class="inputTypeText" type="text" size="60" maxlength="255" fw-label="나머지 주소(선택 입력 가능)" style="">
													     </li>
												 </ul> 
											 </td>
							                </tr>
											<tr class="ec-shippingInfo-receiverCell ">
												<th scope="row">
													휴대전화
													<span class>
														<span class="icoRequired">필수</span>
													</span>
												</th>
												<td>
													<div class="ec-base-mail">
														<select id="rphone2_1" name="rphone2_[]" fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg>
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>
														-
														<input id="rphone2_2" name="rphone2_[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg placeholder size="4" value type="text">
														-
														<input id="rphone2_3" name="rphone2_[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg placeholder size="4" value type="text">
													</div>
												</td>
											</tr>
											<tr class="ec-orderform-emailRow ec-shop-deliverySimpleForm ">
												<th scope="row">
													이메일
													<span class="icoRequired icon_order_email" style>필수</span>
												</th>
												<td>
													<div class="ec-base-mail">
														<input id="oemail1" name="oemail1" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg class="mailId" value type="text">
														@ 
														<span class="mailAddress">
															<select id="oemail3" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg>
																<option value selected="selected">
																-이메일 선택-
																</option>
																<option value="naver.com">naver.com</option>
																<option value="daum.net">daum.net</option>
																<option value="gmail.com">gmail.com</option>
																<option value="etc">직접입력</option>
															</select>
															<span class="directInput ec-compact-etc">
																<input id="oemail2" name="oemail2" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg placeholder="직접입력" readonly="readonly" value type="text">
															</span>
														</span>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 주문상품 -->
				<div id="ec-jigsaw-area-orderProduct" class="ec-base-fold eToggle selected">
				    <div id="ec-jigsaw-title-orderProduct" class="title">
				        <h2>주문상품</h2>
				        <span id="ec-jigsaw-heading-orderProduct" class="txtStrong gRight" style="display: none;">1개</span>
				    </div>
					    <div class="contents">
					        <!-- app tag -->
					        <div id="ec-orderform-orderProduct-head"></div>
					        <!-- 국내배송상품 주문내역 -->
					        <div class="orderArea ">
					            <!-- 기본배송 -->
					            <div class="xans-element- xans-order xans-order-normallist"><!-- 참고: 상품반복 -->
									<div class="ec-base-prdInfo xans-record-">
					                    <div class="prdBox">
					                        <div class="displaynone"><input id="chk_order_cancel_list0" name="chk_order_cancel_list_basic0" value="49:0BZL:F:6218" type="checkbox" disabled=""></div>
					                        <div class="thumbnail"><a href="/product/detail.html?product_no=49&amp;cate_no=24"><img src="//mo-di.co.kr/web/product/tiny/202204/eab6306948211a7627f9f6d00efc5bd8.jpg" alt="" width="90" height="90"></a></div>
					                        <div class="description">
					                            <strong class="prdName" title="상품명"> <a href="/product/mini-checker-board/49/category/24/" class="ec-product-name">mini checker board</a></strong>
					                            <ul class="info">
					                                <li title="옵션">
					                                    <p class="option ">[옵션: black/아이폰 13 mini]</p>
					                                    </li>
					                                <li>수량: 1개</li>
					                                <li id="" class="displaynone">
					                                    <span class="txtWarn displaynone">()</span>
					                                </li>
					                                <li class="displaynone" title="배송">[조건] / 기본배송 </li>
					                            </ul>
					                            <div class="proPrice">
					                                <span class="displaynone">₩18,000원</span>
					                                <span class="displaynone"></span>
					                                <span class="display">
					                                    <span id="">₩18,000원 </span>
					                                    <span class="displaynone">()</span>
					                                </span>
					                            </div>
					                        </div>
					                        <button type="button" class="btnRemove " id="btn_product_one_delete_id0" prd="49:0BZL:F:6218" set_prd_type="">삭제</button>
					                    </div>
					                </div>
					<!-- //참고 -->
					<!-- 참고: 상품반복 -->
					<!-- //참고 -->
					</div>
				            <div class="totalPrice ">
				                <div class="title">
				                    <h3>배송비</h3>
				                    <span class="deliveryFee">₩<span id="domestic_ship_fee">3,000</span>원</span>
				                </div>
				            </div>
				        <!-- app tag -->
				        <div id="ec-orderform-orderProduct-tail"></div>
				    </div>
				    <div id="ec-shop-directbuy-order-product-info" class="displaynone"></div>
				</div>
			</div>
			<!-- 결제정보 -->
			<div id="ec-jigsaw-area-payment" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-payment" class="title">
        <h2>결제정보</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-payment-head"></div>

        <div class="segment">
            <div class="ec-base-table gCellNarrow">
                <table border="1">
<caption>결제정보 상세</caption>
                    <colgroup>
<col style="width:155px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">주문상품</th>
                        <td class="right"><span id="total_product_base_price_id" class="price">₩18,000원</span></td>
                    </tr>
<tr class="">
<th scope="row">배송비 <span class="displaynone info">(착불 상품 포함)</span>
</th>
                        <td class="right"><span class="price"><span id="total_ship_price_id">₩3,000원</span></span></td>
                    </tr>
<tr id="ec-shop-payment_discount_list_view" class="paymentList" style="display: none;">
<td colspan="2">
			</td>
			                    </tr>
			</tbody>
			</table>
			</div>
			        </div>
			        <div class="totalPay paymentPrice">
			            <h3 class="heading">최종 결제 금액</h3>
			            <strong class="txtStrong">
			                ₩<span id="payment_total_order_sale_price_view">21,000</span>원                <span class="refer displaynone">(<span id="payment_total_order_sale_price_ref_view"><span class="eRefPrice"></span></span>)</span>
			            </strong>
			            <span class="displaynone"><input id="total_price" name="total_price" fw-filter="isFill" fw-label="결제금액" fw-msg="" class="inputTypeText" placeholder="" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;" size="10" readonly="1" value="21000" type="text" disabled=""></span>
			        </div>
			
			        <!-- app tag -->
			        <div id="ec-orderform-payment-tail"></div>
			    </div>
			</div>
			<!-- 결제수단 -->
			<div id="ec-jigsaw-area-paymethod" class="ec-base-fold eToggle selected">
  			 <div id="ec-jigsaw-title-paymethod" class="title">
        <h2>결제수단</h2>
   			 </div>
   		 </div>
		</div>
		</div>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<%-- <div id="productMgt">
	<h2 class="head-title">주문리스트</h2>
	<div class="totalitem" align="right">주문 건 : ${orderTot}</div>
	<table>
		<tr>
			<th class="pcol3">상품명</th>
			<th class="pcol3">주문수량</th>
			<th class="pcol3">단가</th>
			<th class="pcol5">결제금액</th>
			<th class="pcol5">결제일</th>
			<th class="pcol6">주문상태</th>

		</tr>
		<c:choose>
			<c:when test="${fn:length(orders)==0}">
				<tr>
					<th colspan="6" align="center">주문내역이 없습니다.</th>
				</tr>
			</c:when>
			<c:when test="${fn:length(orders)>0}">
				<c:forEach items="${orders}" var="order">
				<tr>
					<th class="pcol3">
						<input type="text" name="p_name" value="${order.p_name}"
	    					class="" readonly="readonly" 
	    					onclick="javascript:orderDetail(this)">
						<input type="hidden" name="p_no" value="${order.p_no}" readonly="readonly">
						<input type="hidden" name="o_no" value="${order.o_no}" readonly="readonly">
						<input type="hidden" name="mem_id" value="${order.mem_id}" readonly="readonly">
	    			</th>
	    			<th class="pcol3">
	    				<input type="text" name="quantity" value="${order.quantity}"
	    					class="num" readonly="readonly">
	    			</th>
	    			<th class="pcol3">
	    				<input type="text" name="price" value="${order.price}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol5">
	    				<input type="text" name="amount" value="${order.amount}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol5">
	    				<input type="text" name="o_regdate" value="${order.o_regdate}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol6">
	    				<c:choose>
	    					<c:when test="${order.state==1}">결재중</c:when>
	    					<c:when test="${order.state==2}">배송준비</c:when>
	    					<c:when test="${order.state==3}">배송중</c:when>
	    					<c:when test="${order.state==4}">배송완료</c:when>
	    					<c:when test="${order.state==5}">구매확정</c:when>
	    				</c:choose>
	    			</th>
				</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	
	<!-- 페이지  -->
     <div align="center">
     <c:if test="${pgVo.startPg>PBlock}">
	     <font color="4c5317">
	         <a href="/orderList?curPg=${pgVo.startPg-PBlock}&curBl=${pgVo.curBl-1}">[이전]</a>
	     </font>
     </c:if>
     <c:forEach var="pgno" begin="${pgVo.startPg}" end="${pgVo.endPg}" step="1">
         <c:set scope="page" var="list" 
                  value="./orderList?curPg=${pgno}&curBl=${pgVo.curBl}"/> 
         <a href="${list}" style=" text-decoration:none;">
          <c:choose>
              <c:when test="${pgVo.curPg==pgno}">
                <font color="4c5317" style="font-weight: bold;">[${pgno}]</font>
              </c:when>
              <c:otherwise>
               <font color="4c5317">[${pgno}]</font>
              </c:otherwise>
           </c:choose>
         </a>                  
    	</c:forEach>
      <c:if test="${pgVo.endPg<pgVo.pgCnt}">
             <font color="4c5317">
               <a href="./orderList?curPg=${pgVo.startPg+PBlock}&curBl=${pgVo.curBl+1}">[다음]</a>
             </font>
       </c:if> 
     </div>
     <div style="margin-bottom: 15px;"></div>
     <!-- 페이지 끝 -->
     
	<form action="custOrderDetail" name="form1" method="post">
		<input type="hidden" name="p_no" value="">
		<input type="hidden" name=o_no value="">
		<input type="hidden" name="mem_id" value="">
	</form>
</div>
			 --%>
</body>
</html>