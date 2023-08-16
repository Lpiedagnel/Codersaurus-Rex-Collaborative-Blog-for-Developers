// This JS file is used on Article Form to help the user to know how many character he has left.
  
document.addEventListener('turbo:load', function() {
  
  /**
   * Initialize the character counter for the field and add event listener.
   *
   * @param {string} inputId - ID of the field from the DOM.
   * @param {number} maxLength - The maximum number of characters
   */
  function initializeCharacterCounter(inputId, maxLength) {
    const input = document.getElementById(inputId)
    if (input) {
      input.addEventListener('input', () => {
        const remainingLength = maxLength - input.value.length
        input.nextElementSibling.textContent = remainingLength + ' caractères restants'
      });
    }
  }

  // Initialize character counters for each field
  initializeCharacterCounter('article_title', 100)
  initializeCharacterCounter('article_extract', 100)
  initializeCharacterCounter('article_meta_title', 60)
  initializeCharacterCounter('article_meta_description', 160)

})