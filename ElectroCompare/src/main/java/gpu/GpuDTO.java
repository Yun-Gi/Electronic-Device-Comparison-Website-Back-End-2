package gpu;

import java.sql.Date;

public class GpuDTO {
	
	private String Manufacturer;
	private String name;
	private Date Release;
	private int core;
	private float bclock;
	private float clock;
	private int memory;
	private int iface;
	private int tdp;
	private int price;
	
	public String getManufacturer() {
		return Manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		Manufacturer = manufacturer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRelease() {
		return Release;
	}
	public void setRelease(Date release) {
		Release = release;
	}
	public int getCore() {
		return core;
	}
	public void setCore(int core) {
		this.core = core;
	}
	public float getBclock() {
		return bclock;
	}
	public void setBclock(float bclock) {
		this.bclock = bclock;
	}
	public float getClock() {
		return clock;
	}
	public void setClock(float clock) {
		this.clock = clock;
	}
	public int getMemory() {
		return memory;
	}
	public void setMemory(int memory) {
		this.memory = memory;
	}
	public int getIface() {
		return iface;
	}
	public void setIface(int iface) {
		this.iface = iface;
	}
	public int getTdp() {
		return tdp;
	}
	public void setTdp(int tdp) {
		this.tdp = tdp;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	

}
