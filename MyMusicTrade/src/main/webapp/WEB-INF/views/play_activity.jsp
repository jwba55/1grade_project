<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp"></jsp:include>
<style>
* {
	box-sizing: border-box;
}
.slider {
margin: 0 auto;
  width: 1000px;
  height: 400px;
}
.box {
  text-align: center;
  line-height: 100px;
  font-size: 60px;
  color: #fff;
  font-weight: bold;
}
img {vertical-align: middle;}
video {
	vertical-align: middle;
	max-width: 80%;
	max-height: 35%;
	margin: 0 auto;
	}

/* Slideshow container */
.slideshow-container {
  position: relative;
}

/* Slide buttons */
.slide-button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    font-size: 16px;
    color: white;
    background-color: transparent;
    border: none;
    outline: none;
}

.slide-button-prev {
    left: 10px;
}

.slide-button-next {
    right: 10px;
}

</style>
</head>
<body>
<br>
<br>
	<div>
		<div style="text-align: center;">
		<h1 style="color: #00ff9c; font-size: 54px;">ACTIVITY</h1>
		<p style="color: white;">MMT 당신의 꿈을 이루다!!</p>
		</div>

		<section id="slider1" class="slider">
		<div class="slideshow-container">
			<div class="box">
			  <video src="../resources/vid/o2music_1.mp4" preload="auto" muted controls autoplay loop></video>
			</div>
			<div class="box">
			  <video src="../resources/vid/o2music_1.mp4" preload="auto" muted controls autoplay loop></video>
			</div>
			<div class="box">
			  <video src="../resources/vid/o2music_1.mp4" preload="auto" muted controls autoplay loop></video>
			</div>
			<button class="slide-button slide-button-prev" onclick="prevSlide()">❮</button>
        	<button class="slide-button slide-button-next" onclick="nextSlide()">❯</button>
		</div>
		</section>
	</div>

<script>
function Slider(target, type) {
	  // 상태
	  let index = 1;
	  let isMoved = true;
	  const speed = 1000; // ms

	  // 방향
	  const transform = "transform " + speed / 1000 + "s";
	  let translate = (i) => "translateX(-" + 100 * i + "%)";
	  if (type === "V") {
	    translate = (i) => "translateY(-" + 100 * i + "%)";
	  }

	  // 슬라이더
	  const slider = document.querySelector(target);
	  const sliderRects = slider.getClientRects()[0];
	  slider.style["overflow"] = "hidden";

	  // 슬라이더 화면 컨테이너
	  const container = document.createElement("div");
	  container.style["display"] = "flex";
	  container.style["flex-direction"] = type === "V" ? "column" : "row";
	  container.style["width"] = sliderRects.width + "px";
	  container.style["height"] = sliderRects.height + "px";
	  container.style["transform"] = translate(index);

	  // 슬라이더 화면 목록
	  let boxes = [].slice.call(slider.children);
	  boxes = [].concat(boxes[boxes.length - 1], boxes, boxes[0]);

	  // 슬라이더 화면 스타일
	  const size = boxes.length;
	  for (let i = 0; i < size; i++) {
	    const box = boxes[i];
	    box.style["flex"] = "none";
	    box.style["flex-wrap"] = "wrap";
	    box.style["height"] = "100%";
	    box.style["width"] = "100%";
	    container.appendChild(box.cloneNode(true));
	  }

	  // 처음/마지막 화면 눈속임 이벤트
	  container.addEventListener("transitionstart", function () {
	    isMoved = false;
	    setTimeout(() => {
	      isMoved = true;
	    }, speed);
	  });
	  container.addEventListener("transitionend", function () {
	    // 처음으로 순간이동
	    if (index === size - 1) {
	      index = 1;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	    // 끝으로 순간이동
	    if (index === 0) {
	      index = size - 2;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	  });

	  // 슬라이더 붙이기
	  slider.innerHTML = "";
	  slider.appendChild(container);

	  return {
	    move: function (i) {
	      if (isMoved === true) {
	        index = i;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    next: function () {
	      if (isMoved === true) {
	        index = (index + 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    prev: function () {
	      if (isMoved === true) {
	        index = index === 0 ? index + size : index;
	        index = (index - 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    }
	  };
	}

	const s1 = new Slider("#slider1", "H");
	
	//3초에 한번씩 옆으로 이동
	setInterval(() => {
	  s1.next();
	}, 3000)
	
    // 슬라이드 버튼 클릭 이벤트
    function prevSlide() {
        s1.prev();
    }

    function nextSlide() {
        s1.next();
    }
</script>

</body>
</html> 