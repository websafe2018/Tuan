package entity;

/**
 * 借款方式
 * @author Administrator
 *
 */

public class Loadtype implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private String loadType;//一级目录
	private String loadName;//二级目录

	// Constructors

	/** default constructor */
	public Loadtype() {
	}

	/** full constructor */
	public Loadtype(String loadType, String loadName) {
		this.loadType = loadType;
		this.loadName = loadName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoadType() {
		return this.loadType;
	}

	public void setLoadType(String loadType) {
		this.loadType = loadType;
	}

	public String getLoadName() {
		return this.loadName;
	}

	public void setLoadName(String loadName) {
		this.loadName = loadName;
	}

}