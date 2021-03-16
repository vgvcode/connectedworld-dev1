public with Sharing class Example{

    public ApexPages.StandardSetController stdCntrlr {get; set;}

    public Example(ApexPages.StandardSetController controller) {
        stdCntrlr = controller;
    }
    public Example(){
    }
    public Boolean displayInputputText{get;set;}
    public Boolean chkBx{get;set;}
    public String input{get;set;}
    public void click(){
        if(chkBx){
            displayInputputText = true;
        }
        else{
            displayInputputText = false;
        }
    }
}