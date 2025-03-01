
$(document).ready(function() {
	
	//신체분류 카테고리 뽑기
	$.ajax({
		url: "getBodyClassification"
		, method: "get"
		, success: function(data) {
			let innerHtml = "";
			
			data.forEach((body)=>{
				innerHtml += `
							<li class="bodyLink">
								<a href="#" class="bodyLink-btn">
									<span>${body.bodyPartName}</span>
									<input type="hidden" value="${body.bodyPartId}">
								</a>
							</li>
							`;
			});
		
			$('.tab-list').append(innerHtml);
		}
		, error: function(error) {
			alert('오류발생');
		}
	});
	
	
	let selectedBodyPart = "";
    let currentSearchKeyword = "";
    let currentPage = 1; // 현재 페이지
    const itemsPerPage = 12; // 한 번에 보여줄 카드 개수
    let cardsData = [];
	
 	// 초기 페이지 로드
    initializePage();
 	
  	//전체 데이터 로드
	function initializePage() {
		
		$.ajax({
			url: "getExaminationBoardListClientPage"
			, method : "get"
			, success : function(data) {
				cardsData = data;
				
				//초기 카드 로드
				addCards(0, itemsPerPage, true);
				
			}
			, error : function(error) {
				alert("실패 : " + error);
			}
		});
	};
	
	//카드 추가 함수
	function addCards(startIndex, endIndex, isNewLoad) {
		console.log("파라미터 확인 : " + startIndex + ", endIndex : " + endIndex);
		
		let innerHtml = "";
		
		//데이터 없으면
		if(cardsData == "" || cardsData.length === 0) {
			console.log("데이터 없음시 표시");
			
	        // '데이터 없음' 있다면 제거
	        $('.no-data-container').remove();
			
			innerHtml += `
						<div class="no-data-container">
							<div class="no-data">
								<img src="${contextPath}/resources/images/warning.png">
								<p>검색된 결과가 없습니다.</p>
							</div>
						</div>
						`;
			$('.row').html(innerHtml);
			loadMoreBtn.style.display = "none"; //더보기 버튼 숨기기
			
		} else { 
			if(isNewLoad) {
				$('.row').empty(); //새로운 로드인 경우 목록 초기화!!!
			}
			
			console.log("검색 실행 후 데이터 표시");

	        // '데이터 없음' UI가 이미 있다면 제거
	        $('.no-data-container').remove();
	        
			
			//더보기 버튼 
			if(endIndex >= cardsData.length) {
				loadMoreBtn.style.display = "none";
			} else {
                loadMoreBtn.style.display = "inline-block";
            }
			
			//데이터 출력
			cardsData.slice(startIndex, endIndex).forEach((card) => {
				innerHtml += `
							<div class="col">
								<a href="getExaminationBoardDetailPage?examinationId=${card.examinationId}">
									<div class="card h-100">
							`;
				if(card.filePath === null) {
					innerHtml += `
								<img src="${contextPath}/resources/images/no_image.jpg" class="card-img-top" alt="사진 없음">
								`;
				} else {
					innerHtml += `
								<img src="${contextPath}${card.filePath}" class="card-img-top" alt="${card.examinationName}">
								`;
				}
				innerHtml += `
							<div class="card-body">
								<p class="card-title">${card.examinationName}</p>
								</div>
							</div>
						</a>
					</div>
							`;
			});
			
			if(isNewLoad) {
				$('.row').html(innerHtml); //새로운 로드면 목록 교체
			} else {
				$('.row').append(innerHtml); //추가 로드면 목록 추가
			}
			
		} 
		
	}

	
	//더보기버튼 클릭 이벤트 연결
	const loadMoreBtn = document.getElementById('loadMoreBtn');
	loadMoreBtn.addEventListener('click', function() {
		const startIndex = currentPage * itemsPerPage;
		const endIndex = startIndex + itemsPerPage;
		
		addCards(startIndex, endIndex, false); //추가 로드니까 isNewLoad = false 
		currentPage++;
		
	});
	
	
	// 동적으로 추가된 신체 분류 li 요소 클릭 이벤트 연결
	$(document).on('click', '.bodyLink-btn', function(event) {
	    event.preventDefault(); // 기본 동작 방지
	    
	 	// 모든 버튼의 active 제거
        $('.bodyLink').removeClass('active');

        // 클릭한 버튼의 부모 li에 active 추가
        $(this).parent('.bodyLink').addClass('active');

	    // 선택한 신체부위 이름 가져오기
	    selectedBodyPart = $(this).find('span').text();
	    console.log("클릭한 신체부위 이름:", selectedBodyPart);

	    // 선택한 신체부위에 대한 처리 로직 추가
	   	searchAjax(selectedBodyPart, currentSearchKeyword); //검색어 없이 검색해도 특정 bodyPart 해당될 수 있도록
	});
	
	
	//검색 폼 
	$('#searchBtn').click(function(event) {
		 event.preventDefault();
		 
		 //emptyCheck
		 currentSearchKeyword = document.getElementById('searchBox').value.trim();
		 console.log("검색어 : " + currentSearchKeyword);
		 
		 if(selectedBodyPart === "" && currentSearchKeyword === "") { //초기 페이지 로드시 검색어 없이 검색버튼 눌렀을 때
		 	return;
		 }
		 
		 searchAjax(selectedBodyPart, currentSearchKeyword); //검색어 없어도 해당 카테고리 질환으로 검색되도록
		 
	});
	
	
	//검색 ajax
	function searchAjax(selectedBodyPart, keyword) {
		console.log("파라미터 확인_selectedBodyPart : " + selectedBodyPart + ", 키워드 : " + keyword);
		
		let searchData = "";
		
		if(selectedBodyPart === '전체' && keyword === "") { //전체 누르고 키워드 x = 전체 데이터 출력
			initializePage();
			return;
		} else if (selectedBodyPart === '전체' && keyword != "") { //전체 누르고 키워드 검색
			getDiseaseBoardOnlySearchByKeyword(keyword);
			return;
		} else if (keyword === "") { //검색어X 카테고리 선택O
			searchData = JSON.stringify({bodyPart : selectedBodyPart});
		} else if (selectedBodyPart === "" && keyword != "") { //검색어O, 카테고리 선택x 
			getDiseaseBoardOnlySearchByKeyword(keyword);
			return;
		} else { //검색어O 카테고리 선택O
			searchData = JSON.stringify({bodyPart : selectedBodyPart, keyword : keyword});
		}
		
		$.ajax({
			url : "getExaminListByBodyPartAndSearchKeyword"
			, method : "post"
			, contentType : "application/json"
			, data : searchData 
			, dataType : "json"
			, success : function(data) {
				console.log(data);
				
				cardsData = data;
				currentPage = 1; //페이지번호 초기화
				addCards(0, itemsPerPage, true); //새로운 검색이니까 isNewLoad = true
				
			} 
			, error : function() {
				alert('실패');
			}
		});
	}
	
	function getDiseaseBoardOnlySearchByKeyword(keyword) {
		console.log("전체에서 키워드 검색 실행 : " + keyword);
		
		$.ajax({
			url : "getExaminationBoardOnlySearchByKeyword"
			, method : "post"
			, contentType : "application/json"
			, data : JSON.stringify({keyword : keyword})
			, dataType : "json"
			, success : function(data) {
				console.log(data);
				
				cardsData = data;
				currentPage = 1;
				addCards(0, itemsPerPage, true); //새로운 검색이니까 isNewLoad = true
				
			} 
			, error : function() {
				alert('실패');
			}
		});
		
	}
	
});
