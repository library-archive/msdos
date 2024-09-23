let history = [];
let currentIndex = -1;

function loadPage() {
    const urlInput = document.getElementById('url').value;
    const iframe = document.getElementById('webview');

    if (urlInput) {
        // Agregar a historial
        if (currentIndex < history.length - 1) {
            history = history.slice(0, currentIndex + 1);
        }
        history.push(urlInput);
        currentIndex++;
        
        iframe.src = urlInput.startsWith('http') ? urlInput : 'http://' + urlInput;
    }
}

function goBack() {
    if (currentIndex > 0) {
        currentIndex--;
        document.getElementById('webview').src = history[currentIndex];
        document.getElementById('url').value = history[currentIndex];
    }
}

function goForward() {
    if (currentIndex < history.length - 1) {
        currentIndex++;
        document.getElementById('webview').src = history[currentIndex];
        document.getElementById('url').value = history[currentIndex];
    }
}
