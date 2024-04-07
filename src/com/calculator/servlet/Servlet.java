package com.calculator.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.core.*;
import weka.core.converters.ConverterUtils;
import weka.core.converters.ConverterUtils.DataSource;

public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集防止乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int i = 0;
        String[] Attr = new String[54];
        for (i = 0; i < Attr.length-1; i++)
            Attr[i] = "0";
        for (i = 0; i < Attr.length;) {
            if (request.getParameter("" + i + "") != "")
                Attr[i] = request.getParameter("" + i + "");
                i++;
            }
        double sum=Double.parseDouble(Attr[53]);
        double[] D_Attr=new double[52];
        //将获取的成分转成百分制
        try {
            for (i=1;i<Attr.length-1;i++) {
                D_Attr[i] = (Double.parseDouble(Attr[i]) / sum)*100;
                Attr[i] = String.valueOf(D_Attr[i]);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
       //定义模型文件路径名
        String[] models=new String[]{"C:\\Density.model","C:\\Viscosity.model"};
        //逐个将获得的值写入csv文件
        for(int n=0;n<models.length;n++){
            CreateCSV(Attr,models[n]);
        }
        //用于存储预测值的数组
        double[] pre=new double[2];
        //调用模型
        try {
            for(int j=0;j<models.length;j++)
            pre[j] = predict(models[j]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String Density=String.valueOf(Math.pow(10,pre[0]));
        String Viscosity=String.valueOf(Math.pow(10,pre[1]));
        response.getWriter().write(Density+",");
        response.getWriter().write(Viscosity);
    }

    private void CreateCSV(String[] Attr ,String model) {
        String fileName = "Density.csv";//CSV文件名称
        String[] headArr = new String[]{"T", "Li","Be", "B", "C", "Na", "Mg", "Al", "Si", "P", "S", "K", "Ca", "Ti", "V", "Cr",
                "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "Se", "Rb", "Sr", "Zr", "Nb", "Mo", "Ru", "Rh", "Pd", "Ag", "Cd",
                "In", "Sn", "Sb", "Te", "Cs", "Ba", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi",""};
        if(model=="C:\\Density.model"){
            headArr[53]="log_D";
        }else if(model=="C:\\Viscosity.model"){
            headArr[53]="log_v";
            fileName="Viscosity.csv";
        }
        Attr[53]="10";//设置最后一个属性预设值
        //CSV文件路径及名称
        String filePath = "C:\\";
        File csvFile = null;
        BufferedWriter csvWriter = null;
        try {
            csvFile = new File(filePath + File.separator + fileName);
            File parent = csvFile.getParentFile();
            if (parent != null && !parent.exists()) {
                parent.mkdirs();
            }
            csvFile.createNewFile();
            // GB2312使正确读取分隔符","
            csvWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(csvFile), "GB2312"), 1024);
            // 写入文件头部标题行
            csvWriter.write(String.join(",", headArr));
            csvWriter.newLine();
            // 写入文件内容
            csvWriter.write(String.join(",", Attr));
            csvWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                csvWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private double predict(String model) throws Exception {
        DataSource source = null;
            if(model=="C:\\Density.model"){
                source = new DataSource("C:\\Density.csv");
            }
            else if(model=="C:\\Viscosity.model"){
                source = new DataSource("C:\\Viscosity.csv");
            }
        Instances data = null;
            data = source.getDataSet();
        if (data.classIndex() == -1) {
            data.setClassIndex(data.numAttributes() - 1);//设置计算属性为最后一个
        }
        Classifier classifier = null;
        classifier = (Classifier) SerializationHelper.read(model);
        Evaluation eval = null;
        eval = new Evaluation(data);
        double pre = 0;
            pre = eval.evaluateModelOnce(classifier, data.instance(0));
        return pre;
    }
}
