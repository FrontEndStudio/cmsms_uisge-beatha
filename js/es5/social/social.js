/* 24jul17 +++++ Facebook Share / like button +++++ */
(function(d, s, id) {
  var js; var fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.async=true;
  js.src = 'https://www.connect.facebook.net/nl_NL/sdk.js#version=v3.2&xfbml=1'; /* &appID=175931732519501"; */
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
/* +++++ End of Facebook Share / like button +++++ */

/* +++++ Facebook Reply Box +++++ */
(function(d, s, id) {
  var js; var fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.async=true;
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
/* +++++ End Facebook Reply Box +++++ */

/* +++++ Code for Twitter +++++ */
(function(d, s, id) {
  var js; var fjs = d.getElementsByTagName(s)[0];
  var t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.async=true;
  js.src = 'https://platform.twitter.com/widgets.js';
  fjs.parentNode.insertBefore(js, fjs);
  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };
  return t;
}(document, 'script', 'twitter-wjs'));
/* +++++ End code for Twitter +++++ */

//
// EOF
//
