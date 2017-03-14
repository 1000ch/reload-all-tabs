chrome.browserAction.onClicked.addListener(tab => {
  chrome.tabs.query({}, tabs => {
    for (const tab of tabs) {
      chrome.tabs.reload(tab.id, {
        bypassCache: false
      }, () => console.log(`Tab ${tab.id} is reloaded`));
    }
  });
});
