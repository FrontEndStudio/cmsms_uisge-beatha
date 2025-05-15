/* eslint-disable no-invalid-this */

// Content with blockquotes is missing a class.
// Script to add it otherwise Bootstrap wouldn't understand it
$( 'blockquote' ).last().addClass( 'blockquote' );

// Material Select Initialization
// Material Select Initialization
$(document).ready(function() {
  $('.mdb-select').materialSelect();
  // eslint-disable-next-line max-len
  $('.select-wrapper.md-form.md-outline input.select-dropdown').bind('focus blur', function() {
    $(this).closest('.select-outline').find('label').toggleClass('active');
    $(this).closest('.select-outline').find('.caret').toggleClass('active');
  });
});

// init dyscrollup -->
dyscrollup.init({
  showafter: 600,
  scrolldelay: 500,
  position: 'right',
  image: './uploads/images/cms/image-dyscrollup/32.png',
  shape: 'circle',
  width: 30,
  height: 30,
});

// Youtube
document.addEventListener('DOMContentLoaded',
  function() {
    var div; var n;
    var v = document.getElementsByClassName('youtube-player');
    for (n = 0; n < v.length; n++) {
      div = document.createElement('div');
      div.setAttribute('data-id', v[n].dataset.id);
      div.innerHTML = labnolThumb(v[n].dataset.id);
      div.onclick = labnolIframe;
      v[n].appendChild(div);
    }
  });

/**
 * @todo document
 * @param {*} id
 * @return {String} - thumb
 */
function labnolThumb(id) {
  var thumb = '<img src="https://i.ytimg.com/vi/ID/hqdefault.jpg" alt="Youtube Uisge Beatha">';
  var play = '<div class="play"></div>';
  return thumb.replace('ID', id) + play;
}
/**
 * @todo document
 */
function labnolIframe() {
  var iframe = document.createElement('iframe');
  var embed = 'https://www.youtube.com/embed/ID?autoplay=1';
  iframe.setAttribute('src', embed.replace('ID', this.dataset.id));
  iframe.setAttribute('frameborder', '0');
  iframe.setAttribute('allowfullscreen', '1');
  this.parentNode.replaceChild(iframe, this);
}

/* eslint-enable no-invalid-this */

//
// EOF
//
