import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class addProperty extends StatefulWidget {
  const addProperty({ Key key }) : super(key: key);

  @override
  State<addProperty> createState() => _addPropertyState();
}

class _addPropertyState extends State<addProperty> {
  TextEditingController address = new TextEditingController();
    TextEditingController Description = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  TextEditingController price = new TextEditingController();
  TextEditingController area = new TextEditingController();
String Nr="1";//هنا تخزن قيمه الbedroom
String NBr="1";//هنا تخزت قيمه ال bathroom
String Nk="1";//هنا تخزت قيمه الkitchen
String Ns="1";//هنا تخزت قيمه ال Living room
String Datselected="Irbid";
String ct="For Sale";
int selectedNR=0;
int selectedBR=0;
int selectedK=0;
int selectedSR=0;

List<String> lst = ['1','2','3','4','5','6'];
  @override
  //ال bedrooms
    void changeindexNR(int index,String t){
setState(() {
  selectedNR =index;
  Nr=t;
});
  }
  Widget radioNR(String txt,int index){
return ButtonTheme( minWidth: 70,
         
  child:   OutlineButton(onPressed: ()=> changeindexNR(index,txt),
  
  padding:  const EdgeInsets.only(top: 25,bottom: 25),
  
  borderSide: BorderSide(color: selectedNR == index ? Colors.brown:Colors.grey[700],
  
  width: selectedNR == index ? 2:1),
  
  child: Text(txt,style:TextStyle(color:  selectedNR == index ? Colors.brown:Colors.grey[700],fontSize:18 )),
  
  
  
  ),
);
  
  }
//bathroom

 void changeindexBR(int index,String t){
setState(() {
  selectedBR =index;
NBr=t; //اذا بدك تستدعي القيمه 
});
  }
  Widget radioBR(String txt,int index){
return ButtonTheme( minWidth: 70,
  child:   OutlineButton(onPressed: ()=> changeindexBR(index,txt),
  
  padding:  const EdgeInsets.only(top: 25,bottom: 25),
  
  borderSide: BorderSide(color: selectedBR == index ? Colors.brown:Colors.grey[700],
  
  width: selectedBR == index ? 2:1),
  
  child: Text(txt,style:TextStyle(color:  selectedBR == index ? Colors.brown:Colors.grey[700],fontSize:18 )),
  
  
  
  ),
);
  }
//KITCHEN
    void changeindexK(int index,String t){
setState(() {
  selectedK =index;
  Nk=t;
});
  }
  Widget radioK(String txt,int index){
return ButtonTheme( minWidth: 70,
  child:   OutlineButton(onPressed: ()=> changeindexK(index,txt),
  
  padding:  const EdgeInsets.only(top: 25,bottom: 25),
  
  borderSide: BorderSide(color: selectedK == index ? Colors.brown:Colors.grey[700],
  
  width: selectedK == index ? 2:1),
  
  child: Text(txt,style:TextStyle(color:  selectedK == index ? Colors.brown:Colors.grey[700],fontSize:18)),
  
  
  
  ),
);
  
  }
//LIVIING ROOM
   void changeindexSR(int index,String t){
setState(() {
  selectedSR =index;
  Ns=t;
});
  }
  Widget radioSR(String txt,int index){
return ButtonTheme( minWidth: 70,
  child:   OutlineButton(onPressed: ()=> changeindexSR(index,txt),
  
  padding:  const EdgeInsets.only(top: 25,bottom: 25),
  
  borderSide: BorderSide(color: selectedSR == index ? Colors.brown:Colors.grey[700],
  
  width: selectedSR == index ? 2:1),
  
  child: Text(txt,style:TextStyle(color:  selectedSR == index ? Colors.brown:Colors.grey[700] ,fontSize:18)),
  
  
  
  ),
);
  
  }

  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(title: Text('Add Property')
    
    ),
      body: Column(
        
        children: [
          Form(
            key: _formKey,
            child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [Padding(
                      padding: const EdgeInsets.only(left:16.0,top:30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Add New Property",style:TextStyle(fontFamily:'Crete Round' ,color:Colors.brown,fontSize: 40))),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("ADD DETAILS",style:TextStyle(color:Colors.grey,fontSize: 18))),
                    ),
SizedBox(
  height: 25,
),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Address:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
                  
                     Padding(
              child: TextFormField(
                 validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the property Address';
                            }
                            return null;
                          },
                decoration: InputDecoration(
                                    hintText: 'Address',
                                     errorBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    focusedErrorBorder:  OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:2, ),
                                      
                                    )
                                    
                                    
                                    ),
                                    controller: address,
                                    ),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 8),
               ),
              
                Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 12,top: 8,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Number of Bedrooms:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
          Row(
            children: [SizedBox(
  width:16
),
radioNR(lst[0],0),
SizedBox(
  width:12
),
radioNR(lst[1],1),SizedBox(
  width:12
),
radioNR(lst[2],2),SizedBox(
  width:12
),
radioNR(lst[3],3),SizedBox(
  width:12
),
radioNR(lst[4],4),

          ],),  /* 
                                  Padding(
               child: SpinBox(
                  min: 1,
                  max: 20,
                  value: 3,
                onChanged: (value) {
                        setState(() {
                          Nr = value.toString();
                        });
                        
                        } ),
                padding: const EdgeInsets.all(16),
              ),*/
              
                Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 12,top: 12,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Number of Bathrooms:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
                    /*              Padding(
                child: SpinBox(
                  min: 1,
                  max: 20,
                  value: 2,
                 onChanged: (value) {
                        setState(() {
                          NBr = value.toString();
                        },);
                        } 
                ),
                padding: const EdgeInsets.all(16),
              ),*/
               Row(
            children: [SizedBox(
  width:16
),
radioBR(lst[0],0),SizedBox(
  width:12
),
radioBR(lst[1],1),SizedBox(
  width:12
),
radioBR(lst[2],2),SizedBox(
  width:12
),
radioBR(lst[3],3),SizedBox(
  width:12
),
radioBR(lst[4],4),SizedBox(
  width:12
),
radioBR(lst[5],5),


          ],), 
             
              Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 12,top: 12,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Number of Kitchens:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
             Row(
            children: [SizedBox(
  width:16
),
radioK(lst[0],0),SizedBox(
  width:12
),
radioK(lst[1],1),SizedBox(
  width:12
),
radioK(lst[2],2),SizedBox(
  width:12
),



          ],), 
                              /*    Padding(
                child: SpinBox(
                  min: 1,
                  max: 15,
                  value: 1,
                 onChanged: (value) {
                        setState(() {
                          Nk = value.toString();
                        },);
                        } 
                ),
                padding: const EdgeInsets.all(16),
              ),*/



               Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 12,top: 12,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Number of Living rooms:",style:TextStyle(fontSize: 22))),
                    ),
                     
             Row(
            children: [SizedBox(
  width:16
),
radioSR(lst[0],0),SizedBox(
  width:12
),
radioSR(lst[1],1),SizedBox(
  width:12
),
radioSR(lst[2],2),SizedBox(
  width:12
),
radioSR(lst[3],3),SizedBox(
  width:12
),
radioSR(lst[4],4),SizedBox(
  width:12
),


          ],), 
                        /*          Padding(
                child: SpinBox(
                  min: 1,
                  max: 15,
                  value: 1,
                 onChanged: (value) {
                        setState(() {
                          Ns = value.toString();
                        },);
                        } 
                ),
                padding: const EdgeInsets.all(16),
              ),*/
              Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Price:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
                                  Padding(
                child: TextFormField(
                   validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the propety price  ';
                            } else if (isAlpha(value)) {
                              return 'Only Numbers Please';
                            } 
                            return null;
                          },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                                    hintText: 'Price',
                                     errorBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                      focusedErrorBorder:  OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:2, ),
                                      
                                    )
                                    
                                    
                                    ),
                                    controller: price,
                                    ),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 16),
              ),
                Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Area:",style:TextStyle(fontSize: 22))),
                    ),
                     
            
                                  Padding(
                child: TextFormField(      
                   validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the propety area  ';
                            } else if (isAlpha(value)) {
                              return 'Only Numbers Please';
                            } 
                            return null;
                          },
                              keyboardType: TextInputType.number,
decoration: InputDecoration(
                                    hintText: 'Area',
                                     errorBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                      focusedErrorBorder:  OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:2, ),
                                      
                                    )
                                    
                                    
                                    ),
                                    controller: area,
                                    ),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 8),
              ),
             Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("City:",style:TextStyle(fontSize: 22))),
                    ),
                     
                    Padding(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                             
                        ),
                isExpanded: true,
               value:Datselected, 
                items: [
                  "Irbid",
                  "Ajloun",
                  "Jerash",
                  "Mafraq",
                  "Balqa",
                  "Amman",
                  "Zarqa",
                  "Madaba",
                  "Karak",
                  "Tafilah",
                  "Ma'an",
                  "Aqaba",
                ].map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                      
                onChanged: (val) {
                  setState(() {
                 Datselected = val.toString();
                  });
                       
                },
              ),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 16),
   ),
              
          
                Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Property type:",style:TextStyle(fontSize: 22))),
                    ),
                     
                    Padding(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                                  
                        ),
                isExpanded: true,
               value:ct, 
                items: [
                  "For Sale",
                  "For Rent",
                ].map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                      
                onChanged: (val) {
                  setState(() {
                 ct = val.toString();
                  });
                },),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 8),
   ),
                
                
                      Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Description:",style:TextStyle(fontSize: 22))),
                    ),
            
                  
                     Padding(
              child: TextFormField(
                validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the property description';
                            }
                            return null;
                          },
                decoration: InputDecoration(
                                    hintText: 'Description',
                                      focusedErrorBorder:  OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    errorBorder: OutlineInputBorder(
borderSide:  BorderSide(color: Colors.red,
                                      width:1, ),

                                    ) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:1, ),
                                      
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.brown,
                                      width:2, ),
                                      
                                    )
                                    
                                    
                                    ),
                                    
                                    controller: Description,
                                    maxLines: 4,
                                    ),
                       padding: const EdgeInsets.only(left:16,right: 16,top:8,bottom: 8),
               ),
                    Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 30),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                             style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
  ), 
                            onPressed: () {
                               if (_formKey.currentState.validate() )
                                  {
print('complete')         ;                     }

            
 }, 
                            child: const Text(
                              'Add',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )))
                    ],),
            ),
          ))

        ],
      ),
    );
  }
}