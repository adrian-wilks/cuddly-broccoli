function numberOne() {
    
    var value = document.querySelector("#pageBodyContainer > div:nth-child(1) > div.styles__StyledRow-sc-wmoju4-0.kVSHGU > div.styles__StyledCol-sc-fw90uk-0.hjiGwz.styles__StyledSecondCol-sc-y0ahq4-2.fAgMvT.h-padding-h-default > div > div.h-margin-b-tiny > div > span > span").innerHTML; 
    
    var price = parseFloat(value.replace("$", "")); //remove the dollar sign so it's just the price itself, then convert to float

    productInfo = {
        price: price,
        currency : 'USD' //couldn't find any reference to the currency anywhere...
    };

    return productInfo;
}


function numberTwo() {

    var button1 = document.querySelector("#main > div > div > div > div:nth-child(1) > div.w-full.overflow-hidden.z-50.top-0.transition-opacity.sticky.opacity-100.duration-100 > nav > div > div.hidden.tablet\\:block.pl-2 > a"); // top button
    
    var button2 = document.querySelector("#main > div > div > div > div:nth-child(1) > div.relative.Landing_v2-landing-background__orJSO > div > div.text-center.mb-2.self-center.desktop\\:w-1\\/2.desktop\\:text-left > span > a"); //middle button

    // event listners for the buttons
    button1.addEventListener("click", function () {alert("Header Sign-up Button Pressed!");});
    button2.addEventListener("click", function () {alert("Middle Sign-up Button Pressed!");});
}


function numberThree () {

var listItems = document.getElementsByClassName('level0 css-1iu1lyr e1wjqk2t1'); //grab list of elements in header

var final = Array.from(listItems) //turning element list into Array

// below, we add event listeners to each item in the array.     

final.forEach((item) => {
  item.addEventListener("click", function () {
    if (document.cookie
  .split('; ')
  .find((row) => row.startsWith('buttonClick=')) //checking for existence of cookie named "buttonClick"
  ?.split('=')[1]) {alert(document.cookie
  .split('; ')
  .find((row) => row.startsWith('buttonClick=')) // alerts buttonClick value if existing
  ?.split('=')[1])} else {document.cookie = "buttonClick=" + event.target.text} //sets cookie with last button clicked if nonexistent. 
  });
 });
}