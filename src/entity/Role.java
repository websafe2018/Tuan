package entity;

/**
 * 角色表
 * @author Administrator
 *
 */
public class Role implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private String role;//角色

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** full constructor */
	public Role(String role) {
		this.role = role;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}