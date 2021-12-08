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
    xmlHttp.open( "GET", "http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t=182&w=2000", false ); // false for synchronous request
    xmlHttp.send( null );
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText,"text/html");

    let x=xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    console.log(x);
    let numb = x.match(/\d/g);
    numb = numb.join("");
    console.log(numb);
    let moneyTransfer = document.getElementById("fee");
    // console.log(moneyTransfer);
    let format = numb + " đ";
    console.log(format);

    let format2 = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(numb);
    let format3 = format2 + ' đ';
    moneyTransfer.innerHTML = format3;

    let bill = document.getElementById('provisionalMoney').innerHTML;
    let numb2 = bill.match(/\d/g);
    numb2 = numb2.join("");
    // alert (numb2);
    // console.log(numb2);
    let totalMoney = parseInt(numb)  + parseInt(numb2);
    // let format4 = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 2 }).format(totalMoney);
    let format5 = formatNumber(totalMoney) + ' đ';
    document.getElementById("moneyTotal").innerHTML = format5;
}