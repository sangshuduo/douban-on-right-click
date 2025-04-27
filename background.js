chrome.runtime.onInstalled.addListener(() => {
  chrome.contextMenus.create({
    id: "searchOnDouban",
    title: "在豆瓣搜索：%s",
    contexts: ["selection"]
  });
});

chrome.contextMenus.onClicked.addListener((info, tab) => {
  if (info.menuItemId === "searchOnDouban" && info.selectionText) {
    const query = encodeURIComponent(info.selectionText);
    const url = `https://www.douban.com/search?q=${query}`;
    chrome.tabs.create({ url });
  }
});