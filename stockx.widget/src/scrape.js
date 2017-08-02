const phantom = require('phantom');
let _ph;
let _page;

phantom.create()
  .then(ph => {
    _ph = ph;
    return _ph.createPage();
  })
  .then(page => {
    _page = page;
    return _page.open('http://stockx.com/');
  })
  .then(status => {
    if (status != 'success') {
      return Promise.reject('Unable to access network');
    }
    else {
      return _page.evaluate(() => document.querySelector('.ticker').outerHTML);
    }
  })
  .then(content => {
    console.log('~' + content + '~'); // hacky way to isolate the content, using regex before rendering
  })
  .then(() => {
    _page.close();
    _ph.exit();
  })
  .catch((e) => {
    console.log(e);
    _ph.exit();
  });
