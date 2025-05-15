'use strict';

/* eslint-disable camelcase */
const url = new URL(document.body.getAttribute('data-js-path'));
__webpack_public_path__ = url.origin + '/' + __webpack_public_path__;
/* eslint-enable camelcase */

//
// EOF
//
