package taskCode;

//Task.java
public class Task {
    private int id;
    private String description;
//    private boolean status;
    private String name;

    public Task(int id, String name, String description) {
        this.id = id;
        this.description = description;
//        this.status = status;
        this.name = name;
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
//
//    public boolean isStatus() {
//        return status;
//    }
//
//    public void setStatus(boolean status) {
//        this.status = status;
//    }
}
