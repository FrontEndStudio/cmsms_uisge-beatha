// Parallax script
// eslint-disable-next-line no-unused-vars
var rellax = new Rellax('.rellax', {
// center: true
  callback: function(position) {
    // callback every position change
    console.log(position);
  },
});
