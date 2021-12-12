function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}

function formatComma(num) {
    let numb = num.match(/\d/g);
    numb = numb.join("");
    return numb;
}

window.onload = function () {
    let xmlHttp = new XMLHttpRequest();

    let t = document.getElementById("province").innerText;
    let url = "http://localhost:8080/do_an_cntt/ShipFeeServlet?f=184&t=" + t.toString() + "&w=510";
    xmlHttp.open("GET", url, false);

    xmlHttp.send(null);
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlHttp.responseText, "text/html");

    let x = xmlDoc.getElementsByTagName("table").item(0).rows[1].cells[2].innerHTML;
    let numb = x.match(/\d/g);
    numb = numb.join("");

    console.log(numb);

    let moneyProduct = document.getElementById("totalMoneyProduct").innerText;
    let numb2 = moneyProduct.match(/\d/g);
    numb2 = numb2.join("");

    let totalPay = parseInt(numb) + parseInt(numb2);
    let format5 = formatNumber(totalPay) + " đ";
    document.getElementById("detailMoneyProduct").innerText = format5;

    numb=formatNumber(numb)+" đ";
    document.getElementById("detailMoney").innerText = numb;
}