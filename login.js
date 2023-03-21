const loginLink = document.getElementById('login-link');
const loginOverlay = document.getElementById('login-overlay');
const loginPopup = document.getElementById('login-popup');
const closeButton = document.getElementById('close-button');

if (loginLink) {
  loginLink.addEventListener('click', function() {
    loginOverlay.style.display = 'flex';
  });
}

if (closeButton) {
  closeButton.addEventListener('click', function() {
    loginOverlay.style.display = 'none';
  });
}

window.addEventListener('click', function(event) {
  if (event.target == loginOverlay) {
    loginOverlay.style.display = 'none';
  }
});
                                                                                                                                             