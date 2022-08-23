package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor		//vo 클래스 모든 프로퍼티를 select하지 않는다면 필요함
public class BookMember {
	private String name;
	private String email;
	private String tel;
	private String password;
	
}
