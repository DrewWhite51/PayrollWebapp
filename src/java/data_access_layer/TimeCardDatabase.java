/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data_access_layer;

import business_layer.Timecard;

import java.util.ArrayList;

public class TimeCardDatabase {
    static ArrayList<Timecard> timecards_arr = new ArrayList<Timecard>();
// Test data to prove proof of concept for the first lab
    static Timecard h1_timecard = new Timecard("2/7/22",4,40,10);
    static Timecard h2_timecard = new Timecard("2/7/22",5,40,10);
    static Timecard h3_timecard = new Timecard("2/7/22",6,40,10);
//    Static method to initialize data in the databse
    static {
        timecards_arr.add(h1_timecard);
        timecards_arr.add(h2_timecard);
        timecards_arr.add(h3_timecard);
    }
//    Method to return the ArraryList of timecards
    public static ArrayList<Timecard> getTimecards_arr() {return timecards_arr;}
// Method to manually set Timecards in the Timecard ArrayList
    public static void setTimecards_arr(ArrayList<Timecard> timecards_arr) {
        TimeCardDatabase.timecards_arr = timecards_arr;
    }
}