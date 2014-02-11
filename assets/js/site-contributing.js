(function() {
   var filename = window.location.hash.substring(1);
   document.getElementById('page-to-improve').innerHTML = '<code>' + filename + '</code>';
   document.getElementById('edit-with-prose').setAttribute('href', 'http://prose.io/#dandelion/dandelion.github.io/edit/source' + filename);
})();