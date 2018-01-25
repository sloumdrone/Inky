document.addEventListener("DOMContentLoaded", addClickHandler);

function addClickHandler(){
    const toggler = document.querySelector('.modal-toggle');
    toggler.addEventListener("click",function(){
        console.log('clicked');
        const modal = document.getElementById('modal');
        modal.classList.toggle('hidden');
    });
}
