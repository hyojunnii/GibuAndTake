<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부앤테이크</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<style>
    *{
        box-sizing: border-box;
    }
    


    .review_update_header{
        width: 100%;
        background-image: url();
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
        height: 376px;
    }

    .review_update_header *{
        color: white;
    }

    .review_update_header input{
        background-color: rgba(255, 255, 255, 0);;
        border: 1px solid white;
    }

    .review_header_title{
        font-size: 40px;
    }

    .review_header_title::placeholder{
        color: white;
    }

    .review_header_corp{
        opacity: 0.6;
    }

    #review_body_content{
        width: 1164px;
        margin: 0 auto;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }



    #review_update_footer_btn{
        display: flex;
        align-items: flex-end;
        justify-content: flex-end;
    }

    .review_update_btn{
        height: 30px;
        background-color: #E4F4D2;
        border-color: #e6e6e6;
        border-radius: 15px;
        outline: none;
        box-shadow: none;
        
    }

    .note-editable{
        width: 1000px;
        height: 500px;
    }




</style>

</head>
<body>
<%@include file="/views/common/header.jsp" %>

    <section>
        <form action="/review/update" method="post">
        <div id="review_update_wrap">
            <div class="review_update_header">
                <label for="review_header_img_btn">상단배경선택</label>
                <input type="file" id="review_header_img_btn" value="사진첨부하기" name="f">
                <input type="text" class="review_header_title" placeholder="후기제목"></input>
            </div>
            <div id="review_body_content">
                <textarea id="summernote" name="editordata"></textarea>
            </div>
            <div id="review_update_footer_btn">
                <input type="submit" value="수정하기" class="review_update_btn">
                <input type="button" value="뒤로가기" class="review_update_btn" onclick="history.go(-1)"> 
            </div>
        </div>
        </form>
    </section>

<%@include file="/views/common/footer.jsp" %>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
	            height: 1500,                 // 에디터 높이
				minHeight: null,             // 최소 높이
				maxHeight: null,             // 최대 높이
				focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
				lang: "ko-KR",					// 한글 설정
	            placeholder: '내용을 작성하세요',
	            toolbar: [
		            ['style', ['bold']],
		            ['fontsize', ['fontsize']],
		            ['height', ['height']]
	            ]
	        	
			       callbacks: {	//여기 부분이 이미지를 첨부하는 부분
					onImageUpload : function(files) {
						uploadSummernoteImageFile(files[0],this);
					},
					onPaste: function (e) {
						var clipboardData = e.originalEvent.clipboardData;
						if (clipboardData && clipboardData.items && clipboardData.items.length) {
							var item = clipboardData.items[0];
							if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
								e.preventDefault();
							}
						}
					}
				}
	            
	            function uploadSummernoteImageFile(file, editor) {
	        		data = new FormData();
	        		data.append("file", file);
	        		$.ajax({
	        			data : data,
	        			type : "POST",
	        			url : "/uploadSummernoteImageFile",
	        			contentType : false,
	        			processData : false,
	        			success : function(data) {
	                    	//항상 업로드된 파일의 url이 있어야 한다.
	        				$(editor).summernote('insertImage', data.url);
	        			}
	        			
	        			fail : function(e){
	        				console.log("실패");
	        			}
	        		});
	        	}
        });
    });
    
    $("div.note-editable").on('drop',function(e){
        for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
        	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
        }
       e.preventDefault();
  })
    
    

	/**
	* 이미지 파일 업로드
	*/
	
</script>


</body>
</html>