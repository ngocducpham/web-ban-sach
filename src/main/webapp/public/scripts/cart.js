function incrementValue(e) {
    e.preventDefault();
    var fieldName = $(e.target).data('field');
    var parent = $(e.target).closest('div');
    var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

    if (!isNaN(currentVal)) {
        parent.find('input[name=' + fieldName + ']').val(currentVal + 1);
    } else {
        parent.find('input[name=' + fieldName + ']').val(0);
    }
}

function decrementValue(e) {
    e.preventDefault();
    var fieldName = $(e.target).data('field');
    var parent = $(e.target).closest('div');
    var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

    if (!isNaN(currentVal) && currentVal > 0) {
        parent.find('input[name=' + fieldName + ']').val(currentVal - 1);
    } else {
        parent.find('input[name=' + fieldName + ']').val(0);
    }
}

// $('.input-group').on('click', '.button-plus', function(e) {
//     incrementValue(e);
// });
//
// $('.input-group').on('click', '.button-minus', function(e) {
//     decrementValue(e);
// });

function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}

window.onload = function() {
    let xmlHttp = new XMLHttpRequest();
    let quantity=document.getElementById("quantỉty_books").innerHTML;

    let t= document.getElementById("province").innerHTML;
    let url="http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t="+t.toString()+"&w=510";

    xmlHttp.open( "GET",url , false ); // false for synchronous request

    xmlHttp.send( null );
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText,"text/html");

    let x=xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    let numb = x.match(/\d/g);
    numb = numb.join("");
    let moneyTransfer = document.getElementById("fee");
    let format = numb + " đ";

    let format2 = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(numb);
    let format3 = format2 + ' đ';
    moneyTransfer.innerHTML = format3;

    let bill = document.getElementById('provisionalMoney').innerHTML;
    let numb2 = bill.match(/\d/g);
    numb2 = numb2.join("");
    let totalMoney = parseInt(numb)  + parseInt(numb2);
    let format5 = formatNumber(totalMoney) + ' đ';
    document.getElementById("moneyTotal").innerHTML = format5;
}