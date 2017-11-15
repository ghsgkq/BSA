/**
 * 
 */
function Booking_Save(){
	if(document.writeForm.pickup.value == ""){
		alert("태울장소를 입력하세요.");
		document.writeForm.writer.focus();
		return false;
	}
	if(document.writeForm.dropft.value == ""){
		alert("내릴장소를 입력하세요.");
		document.writeForm.subject.focus();
		return false;
	}
	if(document.writeForm.start_airline_no.value == ""){
		alert("비행기 번호를 입력하세요.");
		document.writeForm.content.focus();
		return false;
	}
	if(document.writeForm.start_flight_time.value == ""){
		alert("비행 출발시간을 설정하세요.");
		document.writeForm.pass.focus();
		return false;
	}
	if(document.writeForm.arrival_airline_no.value == ""){
		alert("비행기 번호를 입력하세요");
		document.writeForm.pass.focus();
		return false;
	}
	if(document.writeForm.arrival_airline_time.value == ""){
		alert("비행 도착시간을 설정하세요.");
		document.writeForm.pass.focus();
		return false;
	}
	if(document.writeForm.start_date.value == ""){
		alert("출발날짜를 선택하세요.");
		document.writeForm.pass.focus();
		return false;
	}
	if(document.writeForm.arrival_date.value == ""){
		alert("도착날짜를 선택하세요.");
		document.writeForm.pass.focus();
		return false;
	}
	if(document.writeForm.adults.value == ""){
		alert("승객수를 선택하세요.");
		document.writeForm.pass.focus();
		return false;
	}
}