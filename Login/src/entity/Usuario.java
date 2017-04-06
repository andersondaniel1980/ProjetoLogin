package entity;

public class Usuario {
	private Integer idUsuario;
	private String email;
	private String senha;
	
	public Usuario() {
	}

	public Usuario(Integer idUsuario, String email, String senha) {
		super();
		this.idUsuario = idUsuario;
		this.email = email;
		this.senha = senha;
	}

	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", email=" + email + "]";
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	

}
