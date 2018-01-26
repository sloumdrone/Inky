document.addEventListener("DOMContentLoaded", addClickHandler);

function addClickHandler(){
    const toggler = document.querySelector('.modal-toggle');
    const cancel = document.getElementById('cancel');

    if (toggler){
        toggler.addEventListener("click", toggleModal);
    }

    if (cancel){
        cancel.addEventListener("click", toggleModal);
    }
}

function toggleModal(){
    const modal = document.getElementById('modal');
    modal.classList.toggle('hidden');
}
