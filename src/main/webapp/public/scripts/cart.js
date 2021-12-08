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

window.onload = function() {
    let xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", "http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t=182&w=2000", false ); // false for synchronous request
    xmlHttp.send( null );
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText,"text/html");

    let x=xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    console.log(x);
    var numb = x.match(/\d/g);
    numb = numb.join("");
    console.log(numb);
    let moneyTransfer = document.getElementById("fee");
    console.log(moneyTransfer);
    let moneyFormat = <fmt:formatNumber
        type="number" maxFractionDigits="0"
        value=""/>;
    moneyTransfer.innerHTML = numb;
}