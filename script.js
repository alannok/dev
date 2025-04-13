function checkDebt() {
    const nameInput = document.getElementById('nameInput').value;
    const result = document.getElementById('result');
    
    if (nameInput.toLowerCase() === 'danilo') {
        result.textContent = 'Essa pessoa está devendo o alemão.';
    } else {
        result.textContent = 'Pessoa sem dívida.';
    }
}