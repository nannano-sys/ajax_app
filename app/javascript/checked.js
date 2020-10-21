function check(){
  const posts = document.querySelectorAll(".post");
  posts.forEach(function(post){ 
      if (post.getAttribute("data-load") != null){
        return null;
      }
      post.setAttribute("data-load", "true");
    post.addEventListener("click", ()=>　{　//　()=>はアロー関数です。functionを省いて、()=>で関数を定義できます。
      const postId = post.getAttribute("data-id");
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/posts/${postId}`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = ()=> {
        if (XHR.status != 200) {
          alert(`Error ${XHR.status}: ${XHR.statusText}`);
          return null; //処理を中止する記述。15行目以降の処理は行われない。
        }
        const item =XHR.response.post; //postコントローラのcheckedアクションで返したrender json:{ post: item }のpostはここで受け取る
        if (item.checked === true ){
          post.setAttribute("data-check", "true")
      } else if (item.checked === false){
          post.removeAttribute("data-check")
        }
      };
    });
  });
}
setInterval(check, 1000);

