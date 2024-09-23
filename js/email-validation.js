document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('visitor-form');
    const email = document.getElementById('email');
    const confirmEmail = document.getElementById('confirm-email');

    form.addEventListener('submit', function(event) {
        if (email.value !== confirmEmail.value) {
            event.preventDefault();
            alert('Email addresses do not match. Please try again.');
        }
    });
});
