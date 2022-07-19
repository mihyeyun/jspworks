package bean;

import java.io.Serializable;

//세제곱을 계산하는 자료형
public class CalcBean implements Serializable {
	
	public int calculate(int x) {
		return x * x * x;
	}
}
