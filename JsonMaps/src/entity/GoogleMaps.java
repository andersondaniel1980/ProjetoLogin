package entity;

public class GoogleMaps {
	private String rua;
	private String cep;
	private String bairro;
	private String pais;
	
	public GoogleMaps(String rua, String cep, String bairro, String pais) {
		this.rua = rua;
		this.cep = cep;
		this.bairro = bairro;
		this.pais = pais;
	}
	public GoogleMaps() {
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	@Override
	public String toString() {
		return "GoogleMaps [rua=" + rua + ", cep=" + cep + ", bairro=" + bairro + ", pais=" + pais + "]";
	}
	
	
	
	
}
