<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/login_form.css">

        <!-- Bootstrap 3.x -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- DAUM 주소검색 API -->
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
        $(document).ready(function () {

            //ID입력창에서 키가눌렸다 떼어지면
            $("#mem_id").keyup(function (event) {

                //가입버튼 기능을 disabled
                $("#btn_register").attr("disabled", true); //비활성화

                let mem_id = $(this).val();
                //console.log(mem_id);
                if (mem_id.length < 3) {
                    $("#id_msg").html("아이디는 3자리 이상입력하세요").css("color", "red");
                    return;
                }

                //Ajax이용해서 중복아이디 체크
                $.ajax({
                    url: "check_id.do",      //MemberCheckIdAction
                    data: { "mem_id": mem_id }, //parameter  -> check_id.do?mem_id=one
                    dataType: "json",           //결과값의 Data Type
                    success: function (res_data) {
                        // res_data = {"result": true}  or {"result": false}
                        if (res_data.result) {
                            //사용가능한 아이디
                            $("#id_msg").html("사용가능한 아이디입니다").css("color", "blue");

                            //가입버튼을 활성화
                            $("#btn_register").attr("disabled", false);
                        } else {
                            //이미사용중인 아이디
                            $("#id_msg").html("이미 사용중인 아이디입니다").css("color", "red");
                        }
                    },
                    error: function (err) {

                        alert(err.responseText);
                    }
                });

            });//end :  keyup

        })//end: $(document).ready()

    function find_addr() {
        new daum.Postcode({
            oncomplete: function(data) { //json
                //data = {"zonecode":"13529", "address":"경기 성남시 분당구",..."}
                // 주소창에서 선택된 주소값을 입력창에 넣어준다
                $("#mem_zipcode").val(data.zonecode);
                $("#mem_addr").val(data.roadaddress);
            }
        }).open();
    }//end: fine_addr()

    	//이메일 정규식
	const regular_email = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
	function send(f) {
		
		//폼에서 입력된값 체크...
		let mem_name = f.mem_name.value.trim();
		let mem_pwd = f.mem_name.value.trim();
		let mem_email = f.mem_email.value;
		let mem_zipcode = f.mem_zipcode.value;
		let mem_addr = f.mem_addr.value;
		
		if (mem_name=='') {
			alert('이름을 입력하세요!')
			f.mem_name.value='';
			f.mem_name.focus();
			return;
		}
		
		if (mem_pwd=='') {
			alert('비밀번호을 입력하세요!')
			f.mem_pwd.value='';
			f.mem_pwd.focus();
			return;
		}
		
		if (regular_email.test(mem_email)==false) {
			alert('이메일을 입력하세요! \n 옳바른 형식으로 입력하세요!')
			f.mem_email.value='';
			f.mem_email.focus();
			return;
		}
		
		if (mem_zipcode=='') {
			alert('우편번호을 입력하세요!')
			f.mem_zipcode.value='';
			f.mem_zipcode.focus();
			return;
		}
		if (mem_addr=='') {
			alert('주소을 입력하세요!')
			f.mem_addr.value='';
			f.mem_addr.focus();
			return;
		}
		
		f.action = "insert.do"; //MemberInsertAction
		f.submit();				//전송	
	}

</script>
        
    </head>

    <body>


        <h3>sign up</h3>

        <div class="container">
            <form class="form-inline">
                <div class="panel-body">
                    <table class="table">
                        <tr>
                            <th><label>이름</label></th>
                            <td><input class="form-control" name="mem_name"></td>
                        </tr>
                        <tr>
                            <th><label>아이디</label></th>
                            <td><input class="form-control" name="mem_id" id="mem_id">
                                <!-- name : parameter로 서버로 넘어가는 data
                     id : 서버로 보이지 않음 -->
                                <span id="id_msg"></span>
                            </td>
                        </tr>
                        <tr>
                            <th><label>비밀번호</label></th>
                            <td><input class="form-control" type="password" name="mem_pwd"></td>
                        </tr>
                        <tr>
                            <th><label>이메일</label></th>
                            <td><input class="form-control" name="mem_email"></td>
                        </tr>
                        <tr>
                            <th><label>우편번호</label></th>
                            <td>

                                <input class="form-control" name="mem_zipcode" id="mem_zipcode" style="width: 300px;">
                                <input class="btn btn-info" type="button" value="주소검색" onclick="find_addr();"
                                    style="width: 100px;">

                            </td>
                        </tr>
                        <tr>
                            <th><label>주소</label></th>
                            <td><input class="form-control" name="mem_addr" id="mem_addr" size="50"></td>
                        </tr>
                    </table>
                    
                </div>
            </form>
        </div>
        <div class="bottom-container">
            <div class="row">
                <div class="col">
                    <a href="../member/login_form.do" style="color:white" class="btn" onclick="send(this.form);">회원가입</a>
                </div>
                <div class="col">
                    <a onclick="location.href='../movie_main.do'" style="color:white" class="btn">메인화면</a>
                </div>
            </div>
        </div>

      

    </body>

    </html>