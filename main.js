//javascript

//function called onLoad
function onLoad () {
    console.log ("Hello world")
    const button = document.querySelector ('.menu-button')
    const nav= document.querySelector ('.main-navigation')
    // make the button for a click
    button.addEventListener ("click", function () {
        if (nav.classList.contains("open")) {
            nav.classList.remove ("open")
        }
        else {
            nav.classList.add ("open")
        }
    })
}
window.addEventListener("load", onLoad)