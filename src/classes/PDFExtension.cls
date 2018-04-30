public with sharing class PDFExtension {

    public static Account account {get; private set;}
    private static Map<String, String> tocMap = new Map<String,String>{
        '{table of contents line name}' => '{associated id}'
    };

    public BusinessContinutiyPlanExtension(ApexPages.StandardController stdController) {
        account = (Account)stdController.getRecord();
        createTableOfContents();
    }

    private static void createTableOfContents(){
        tableOfContents = new List<tocLine>();
        tocLine prev;
        for(String toc: tocMap.keySet()){
            tocLine line = new tocLine(toc, tocMap.get(toc));
            if(toc.equals({key value that has subcategories})){
                Integer index = 0;
                for(Id key: serviceOrder){
                    index++;
					//get subcategories for key
                    String title = {subcategory name};
                    String elementId = {subcategory element id};
                    prev.addSubLines(new tocLine(title, elementId));
                }
            }else{
                tableOfContents.add(line);
            }
            prev = line;
        }
    }

    public class tocLine{
        public String title {get; private set;}
        public String elementId {get; private set;}
        public String fill {get; private set;}
        public List<tocLine> subLines {get; private set;}

        public tocLine(String title, String elementId){
            this.title = title;
            this.elementId = elementId;
            this.subLines = new List<tocLine>();
            this.setfill();
        }

        public void addSubLines(tocLine line){
            this.subLines.add(line);
        }

        public void setfill(){
            fill = '';

            for(Integer i = 0; i < (100 - title.length()); i++){
                fill += '&middot;';
            }
        }
    }
}