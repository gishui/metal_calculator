import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.core.*;
import weka.core.converters.ConverterUtils.DataSource;
import java.io.*;
import weka.core.Instances;

public class demo {
    public static void main(String[] args) throws Exception {
        //设定数据源文件
        DataSource source = new DataSource("G:\\Density.csv");
        Instances data = source.getDataSet();//得到数据实例
        if (data.classIndex() == -1) {
            data.setClassIndex(data.numAttributes() - 1);//设置计算属性为最后一个
        }
        Classifier classifier = (Classifier) weka.core.SerializationHelper.read("G:\\weka\\Density-NN-log-20.model");
        Evaluation eval = new Evaluation(data);
        double pre=eval.evaluateModelOnce(classifier, data.instance(0));
        System.out.println(Math.pow(10,pre));
    }


    private static void CreateCsvFile(String[] Attr){
        if (Attr!=null && Attr.length > 0){
            // 表格头
            String[] headArr = new String[]{"T", "E_003Li",	"E004_Be",	"E005_B","E006_C","E011_Na","E012_Mg","E013_Al",
                    "E014_Si","E015_P","E016_S","E019_K","E020_Ca","E022_Ti","E023_V","E024_Cr","E025_Mn","E026_Fe","E027_Co",
                    "E028_Ni","E029_Cu","E030_Zn","E031_Ga","E032_Ge","E034_Se","E037_Rb","E038_Sr","E040_Zr","E041_Nb","E042_Mo",
                    "E044_Ru","E045_Rh","E046_Pd","E047_Ag","E048_Cd","E049_In","E050_Sn","E051_Sb","E052_Te","E055_Cs","E056_Ba",
                    "E072_Hf","E073_Ta","E074_W","E075_Re","E076_Os","E077_Ir","E078_Pt","E079_Au","E080_Hg","E081_Tl","E082_Pb",
                    "E083_Bi", "D"};
            //CSV文件路径及名称
            String filePath="G://";
            String fileName = "test.csv";//CSV文件名称
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
                csvWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(csvFile), "UTF-8"), 1024);
                // 写入文件头部标题行
                csvWriter.write(String.join(",", headArr));
                csvWriter.newLine();
                // 写入文件内容
                csvWriter.write(String.join(",",Attr));
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
    }
}
