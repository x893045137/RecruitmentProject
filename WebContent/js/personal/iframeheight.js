function resizeMain(maindomain) {
  if(maindomain != '51job.com'){
    return;
  }
  document.domain = maindomain;
  var f = document.getElementById("joblist");
  if (f) 
  {
    
    if (f.contentDocument) {
      //ff
      if(f.contentDocument.body.innerHTML.indexOf("找不到该页") >= 0 || f.contentDocument.body.innerHTML.indexOf("无法找到该网页") >= 0 ) 
      {
        f.height=0;
      }
      else 
      { 
        f.height = f.contentDocument.body.scrollHeight-5;
        //alert(f.height);
      } 
    }
    
    else if (f.document && f.document.body.scrollHeight) 
    {
      //ie
      if(joblist.document.body.innerHTML.indexOf("找不到该页") >= 0 || joblist.document.body.innerHTML.indexOf("无法找到该网页") >= 0) 
      {
        f.height=0;
      } 
      else 
      {
        f.height = joblist.document.body.scrollHeight ;
      }
    }
  }
}

function reSize(obj,ifrname) {
  try {
    if(window.location.host.indexOf("51job.com") != -1){
        document.domain = "51job.com";
    } else {
      //return;
    }
    var iframeObj = window.frames[ifrname];
  
    if (!iframeObj.document) {
     return;
    }
    if (!iframeObj.document.body) {
     return;
    }
    var bHeight = iframeObj.document.body.scrollHeight;
    var dHeight = iframeObj.document.documentElement.scrollHeight;
    var height = Math.max(bHeight, dHeight);
    obj.height = height;
  } catch(e){
    //alert(e);
  };
}