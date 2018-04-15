package entity;

/**
 * 还款方式
 * @author Administrator
 *
 */

public class Rebacktype implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private String rname;//还款方式

	// Constructors

	/** default constructor */
	public Rebacktype() {
	}

	/** full constructor */
	public Rebacktype(String rname) {
		this.rname = rname;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

}