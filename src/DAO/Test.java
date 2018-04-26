package DAO; //package 必须要有，要不jsp要调用那一个包下的类

public class Test {
    public String saySomething;

    public Test() {
        saySomething = "hello!";
    }

    public void setSaySomething(String saySomething) {
        this.saySomething = saySomething;
    }

    public String getSaySomething() {
        return saySomething;
    }
}
