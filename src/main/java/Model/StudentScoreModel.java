/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;


/**
 *
 * @author admin
 */
public class StudentScoreModel {

    private int id;
    private int scoreMouth;
    private int scoreShortExam;    
    private int scoreMidSemester;
    private int scoreSemester;

    public StudentScoreModel() {
    }

    public StudentScoreModel(int id, int scoreMouth, int scoreShortExam, int scoreMidSemester, int scoreSemester) {
        this.id = id;
        this.scoreMouth = scoreMouth;
        this.scoreShortExam = scoreShortExam;
        this.scoreMidSemester = scoreMidSemester;
        this.scoreSemester = scoreSemester;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public int getScoreMouth() {
        return scoreMouth;
    }

    public void setScoreMouth(int scoreMouth) {
        this.scoreMouth = scoreMouth;
    }

    public int getScoreShortExam() {
        return scoreShortExam;
    }

    public void setScoreShortExam(int scoreShortExam) {
        this.scoreShortExam = scoreShortExam;
    }

    public int getScoreMidSemester() {
        return scoreMidSemester;
    }

    public void setScoreMidSemester(int scoreMidSemester) {
        this.scoreMidSemester = scoreMidSemester;
    }

    public int getScoreSemester() {
        return scoreSemester;
    }

    public void setScoreSemester(int scoreSemester) {
        this.scoreSemester = scoreSemester;
    }

    
    
}
