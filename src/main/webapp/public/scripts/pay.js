function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}

function formatComma(num) {
    let numb = num.match(/\d/g);
    numb = numb.join("");
    return numb;
}

window.onload = function() {
    let xmlHttp = new XMLHttpRequest();

    let t= document.getElementById("province").innerText;
    // console.log(t);
    let url="http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t="+t.toString()+"&w=510";
    // console.log(url);
    xmlHttp.open( "GET",url , false );

    xmlHttp.send( null );
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText,"text/html");

    let x=xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    // console.log(x);
    //Tien van chuyen
    let numb = x.match(/\d/g);
    numb = numb.join("");
    let moneyTransfer = document.getElementById("fee");
    let format = numb + " đ";

    let format2 = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(numb);
    let format3 = format2 + ' đ';
    detailMoney.innerHTML = format3;

    let moneyProduct = document.getElementById("totalMoneyProduct").innerHTML;
    // console.log(moneyProduct);
    let numb2 = moneyProduct.match(/\d/g);
    numb2 = numb2.join("");
    // console.log(numb2);

    let totalPay = parseInt(numb) + parseInt(numb2);
    let format5 =  formatNumber(totalPay) + " đ";
    document.getElementById("detailMoneyProduct").innerHTML = format5;

    moneyProduct = formatNumber(numb2) + " đ";
    document.getElementById("totalMoneyProduct").innerHTML = moneyProduct;
}

// let bookMoney = document.getElementById("bookMoney");
// let quantity = document.getElementById("quantity");
// let moneyQuantity = document.getElementById("moneyQuantity");
// let format = formatNumber(bookMoney.innerText);
// let numb3 = bookMoney.innerText.match(/\d/g);
// numb3 = numb3.join("");
//
// let money = parseInt(quantity.innerText) * numb3;
// moneyQuantity.innerHTML = formatNumber(money) + "đ";
// console.log(money);
