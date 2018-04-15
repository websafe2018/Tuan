package entity;

/**
 * 项目类型
 * @author Administrator
 *
 */

public class Projecttype implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private String typeName;//项目名
	private String itype;//投资类型名

	// Constructors

	/** default constructor */
	public Projecttype() {
	}

	/** full constructor */
	public Projecttype(String typeName, String itype) {
		this.typeName = typeName;
		this.itype = itype;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getItype() {
		return this.itype;
	}

	public void setItype(String itype) {
		this.itype = itype;
	}

}