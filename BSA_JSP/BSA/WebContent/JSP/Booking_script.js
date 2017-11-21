/**
 * 
 */
function BookingSave(){
	if(document.writeForm.pickup.value == ""){
		alert("태울장소를 입력하세요.");
		document.writeForm.pickup.focus();
		return false;
	}
	if(document.writeForm.dropft.value == ""){
		alert("내릴장소를 입력하세요.");
		document.writeForm.dropft.focus();
		return false;
	}
	if(document.writeForm.start_airline_no.value == ""){
		alert("비행기 번호를 입력하세요.");
		document.writeForm.start_airline_no.focus();
		return false;
	}
	if(document.writeForm.start_flight_time.value == ""){
		alert("비행 출발시간을 설정하세요.");
		document.writeForm.start_flight_time.focus();
		return false;
	}
	if(document.writeForm.arrival_airline_no.value == ""){
		alert("비행기 번호를 입력하세요");
		document.writeForm.arrival_airline_no.focus();
		return false;
	}
	if(document.writeForm.arrival_airline_time.value == ""){
		alert("비행 도착시간을 설정하세요.");
		document.writeForm.arrival_airline_time.focus();
		return false;
	}
	if(document.writeForm.start_date.value == ""){
		alert("출발날짜를 선택하세요.");
		document.writeForm.start_date.focus();
		return false;
	}
	if(document.writeForm.arrival_date.value == ""){
		alert("도착날짜를 선택하세요.");
		document.writeForm.arrival_date.focus();
		return false;
	}
	if(document.writeForm.adults.value == ""){
		alert("승객수를 선택하세요.");
		document.writeForm.adults.focus();
		return false;
	}
	if(document.writeForm.round_trip.value == ""){
		alert("왕복 또는 편도를 선택해주세요.");
		document.writeForm.round_trip.focus();
		return false;
	}
}

function BookingSaves(){
	if(document.writeForm.where_from.value == "#"){
		alert("목적지를 고르세요");
		document.writeForm.pickup.focus();
		return false;
	}else {
		if(document.writeForm.where_from.value == "Busan"){
			if(document.writeForm.pickup.value == ""){
				alert("태울장소를 입력하세요.");
				document.writeForm.pickup.focus();
				return false;
			}
			if(document.writeForm.start_airline_name.value == "#"){
				alert("비행사를 선택하세요.");
				document.writeForm.start_airline_name.focus();
				return false;
			}
			if(document.writeForm.start_airline_no.value == ""){
				alert("비행기 번호를 입력하세요.");
				document.writeForm.start_airline_no.focus();
				return false;
			}
			if(document.writeForm.start_airline_time.value == ""){
				alert("비행 출발시간을 설정하세요.");
				document.writeForm.start_airline_time.focus();
				return false;
			}
			
			if(document.writeForm.start_date.value == ""){
				alert("출발날짜를 선택하세요.");
				document.writeForm.start_date.focus();
				return false;
			}
		}
		else if(document.writeForm.where_from.value=="GimheaAirporter"){
			if(document.writeForm.dropft.value == ""){
				alert("내릴장소를 입력하세요.");
				document.writeForm.dropft.focus();
				return false;
			}
			if(document.writeForm.arrival_airline_name.value == "#"){
				alert("비행사를 선택하세요.");
				document.writeForm.arrival_airline_name.focus();
				return false;
			}
			if(document.writeForm.arrival_airline_no.value == ""){
				alert("비행기 번호를 입력하세요");
				document.writeForm.arrival_airline_no.focus();
				return false;
			}
			if(document.writeForm.arrival_airline_time.value == ""){
				alert("비행 도착시간을 설정하세요.");
				document.writeForm.arrival_airline_time.focus();
				return false;
			}
			if(document.writeForm.arrival_date.value == ""){
				alert("도착날짜를 선택하세요.");
				document.writeForm.arrival_date.focus();
				return false;
			}
		}
	}

	if(document.writeForm.adults.value == "0" && document.writeForm.young.value == "0" && document.writeForm.child.value == "0" && document.writeForm.infatns.value == "0"){
		alert("승객수를 선택하세요.");
		document.writeForm.adults.focus();
		return false;
	}
	
}