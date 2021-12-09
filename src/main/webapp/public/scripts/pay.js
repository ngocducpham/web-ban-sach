window.onload = function() {
    let xmlHttp = new XMLHttpRequest();

    let t= document.getElementById("province").innerText;
    console.log(t);
    let url="http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t="+t.toString()+"&w=510";
    // console.log(url);
    xmlHttp.open( "GET",url , false );

    xmlHttp.send( null );
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText,"text/html");

    let x=xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    // console.log(x);
    // let numb = x.match(/\d/g);
    // numb = numb.join("");
    // let moneyTransfer = document.getElementById("fee");
    // let format = numb + " đ";
    //
    // let format2 = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(numb);
    // let format3 = format2 + ' đ';
    // moneyTransfer.innerHTML = format3;
    //
    // let bill = document.getElementById('provisionalMoney').innerHTML;
    // let numb2 = bill.match(/\d/g);
    // numb2 = numb2.join("");
    // let totalMoney = parseInt(numb)  + parseInt(numb2);
    // let format5 = formatNumber(totalMoney) + ' đ';
    // document.getElementById("moneyTotal").innerHTML = format5;
}
