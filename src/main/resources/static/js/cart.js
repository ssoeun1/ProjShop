/**
 * 
 */
$().ready(function(){
	getTotal();
})

function cartUpdate(f, obj) {
	var url;
	var quantity = $(obj).closest('div').parent().find('input[name=quantity]').val();
	var price = $(obj).closest('div').parent().find('input[name=price]').val();
	var pno = $(obj).closest('div').parent().find('input[name=p_no]').val();
	var stock = $(obj).closest('div').parent().find('input[name=stock]').val();
	var q = quantity.replace(/[,]/g, '');
	var p = price.replace(/[,]/g, '');
	var s = stock.replace(/[,]/g, '');
	if(f == 'D'){
		url = 'cartProc?flag=delete';
		
		$(obj).closest('li').remove();
	} else if(f == 'U') {
		if(parseInt(q)>parseInt(s)) {
			alert('재고가 부족합니다');
			return false;
		}
		var a = parseInt(q)*parseInt(p);
		$(obj).closest('li').find('input[name=total]').val(numberWithCommas(a));
		url = 'cartProc?flag=update';
		getTotal();
	}
	
	
	$.ajax({
		async:true,
		type:'post',
		data:{"quantity":quantity,
			  "p_no":pno
			  },
		url:url,
		dataType:"json",
		success:msgAler()
	});
	
	function msgAler() {
		alert("처리완료했습니다.");
	}
}



function fnCalCount(type, ths){
    var $input = $(ths).closest(".cart_item_detail").find("input[name='quantity']");
    var tCount = Number($input.val());
    
    if(type == 'p'){
        $input.val(Number(tCount) + 1);
    } else {
        if(tCount > 1) {
            $input.val(Number(tCount) - 1);
        }
    }
}
function getTotal() {
	var arr = new Array();
	var total = 0;

	$('input[name=total]').each(function(index, item) {
		var item_price = $(item).val();
		item_price = parseInt(item_price.replace(/[,]/g, ""));
		arr.push(item_price);
	});

	arr.forEach((element)=> {
		total += element;
	});
	// $('strong[class=total_price_d]').text(numberWithCommas(total+3000));
	/*alert(total);*/
	$('strong[class=total_price]').text(numberWithCommas(total));
	$('input[name=amount]').val(total);
}