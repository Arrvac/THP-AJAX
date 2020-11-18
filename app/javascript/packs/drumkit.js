// initialize value that will hold key the number of the clicked key
var keyNumber;
var keysArray = Array.from(document.querySelectorAll(".key"));

function playSound(keyNumber) {
  // selecting matching audio element using data-key attribute value
  audio = document.querySelector("audio[data-key='" + keyNumber + "']");
  if (!audio.paused || audio.currentTime > 0 || !audio.ended) {
    //calling play method on matching audio element
    audio.currentTime = 0;
    audio.play();
  } else {
    //calling play method on matching audio element
    audio.play();
  }
}

function highlightNote(keyNumber) {
  var note = document.querySelector("div[data-key='" + keyNumber + "']");
  note.classList.toggle("playing");
  setTimeout(() => {
    note.classList.toggle("playing");
  }, 150);
}

// add keydown event listener on all key elements
document.addEventListener("keydown", function(event) {
  //getting code of key pressed
  keyNumber = event.which;
  playSound(keyNumber);
  highlightNote(keyNumber);
});

// add click event listener on all key elements
(function getKey() {
  for (let key of keysArray) {
    key.addEventListener("click", function() {
      // get data-key attribute value
      keyNumber = key.dataset.key;
      playSound(keyNumber);
      highlightNote(keyNumber);
    });
  }
})();