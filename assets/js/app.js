// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"
//     import socket from "./socket"
//
import "phoenix_html"
const deltamin = require("deltamin")

const delta = { insert: 'Grey', attributes: { color: '#ccc' } }

const min = deltamin.minify(delta);

/**
 * sanitise input to avoid XSS see: https://git.io/fjpGZ
 * function borrowed from: https://stackoverflow.com/a/48226843/1148249
 * @param {string} str - the text to be sanitised.
 * @return {string} str - the santised text
 */
function sanitise(str) {
  const map = {
      '&': '&amp;',
      '<': '&lt;',
      '>': '&gt;',
      '"': '&quot;',
      "'": '&#x27;',
      "/": '&#x2F;',
  };
  const reg = /[&<>"'/]/ig;
  return str.replace(reg, (match)=>(map[match]));
}


window.onload = function() {
  console.log('min', min);

  var d = document.getElementById('delta');
  var c = document.getElementById('contents');
  var text = document.getElementById('text');
  var html = '';

    // hide the text input if JS is available:
    text.style.display = 'none';
    // show the Quill editor if JS is available
    editor.style.display = 'block';


    var quill = new Quill('#editor', {
      modules: {
        toolbar: [
          [{ header: [1, 2, false] }],
          ['bold', 'italic', 'underline'],
          [{ 'list': 'ordered'}, { 'list': 'bullet' }, { 'list': 'check' }],
          ['image', 'link']
        ]
      },
      placeholder: 'Compose an epic...',
      theme: 'snow'  // or 'bubble'
    });

    quill.on('text-change', function(delta, oldDelta, source) {
      html = quill.root.innerHTML;
      d.innerHTML = JSON.stringify(delta.ops, null, 2);
      c.innerHTML = sanitise(html);
      text.value = JSON.stringify(quill.getContents())
    });
};
