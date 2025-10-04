package cpu;

import java.util.Date;
public class CpuDTO {
	private String cpuManufacturer;
	private String cpuName;
	private Date cpuRelease_date;
	private int cpuCores;
	private int cpuThreads;
	private int cpuManufacturing;
	private float cpuBase_Clock;
	private float cpuTurbo_Clock;
	private int cpuTDP;
	private int cpuPrice;
	
	public String getCpuManufacturer() {
		return cpuManufacturer;
	}
	public void setCpuManufacturer(String cpuManufacturer) {
		this.cpuManufacturer = cpuManufacturer;
	}
	public String getCpuName() {
		return cpuName;
	}
	public void setCpuName(String cpuName) {
		this.cpuName = cpuName;
	}
	public Date getCpuRelease_date() {
		return cpuRelease_date;
	}
	public void setCpuRelease_date(Date cpuRelease_date) {
		this.cpuRelease_date = cpuRelease_date;
	}
	public int getCpuCores() {
		return cpuCores;
	}
	public void setCpuCores(int cpuCores) {
		this.cpuCores = cpuCores;
	}
	public int getCpuThreads() {
		return cpuThreads;
	}
	public void setCpuThreads(int cpuThreads) {
		this.cpuThreads = cpuThreads;
	}
	public int getCpuManufacturing() {
		return cpuManufacturing;
	}
	public void setCpuManufacturing(int cpuManufacturing) {
		this.cpuManufacturing = cpuManufacturing;
	}
	public float getCpuBase_Clock() {
		return cpuBase_Clock;
	}
	public void setCpuBase_Clock(float cpuBase_Clock) {
		this.cpuBase_Clock = cpuBase_Clock;
	}
	public float getCpuTurbo_Clock() {
		return cpuTurbo_Clock;
	}
	public void setCpuTurbo_Clock(float cpuTurbo_Clock) {
		this.cpuTurbo_Clock = cpuTurbo_Clock;
	}
	public int getCpuTDP() {
		return cpuTDP;
	}
	public void setCpuTDP(int cpuTDP) {
		this.cpuTDP = cpuTDP;
	}
	public int getCpuPrice() {
		return cpuPrice;
	}
	public void setCpuPrice(int cpuPrice) {
		this.cpuPrice = cpuPrice;
	}
	
	
}
