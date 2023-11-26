//Copy asset srip into the same directory as this code
//set the variable values in setup for your fileName etc- lines 34..38
//Run the code
//copy numbered image files to your assignment directory
class StripSplit
{
  private PImage splitImage;
  private int NumberImages=0;
 
  
  StripSplit(int numberImages,String fileName, String fileExt,int wide, int tall) //load assetStrip Image, write to file numbered same filename
  {
    this.NumberImages = numberImages;
    
    PImage assetStrip = loadImage(fileName+"."+fileExt);
    int partImageWidth = assetStrip.width/NumberImages;
    int Xget=0;
    
    for(int i=0;i<NumberImages;i++)
    {
      splitImage = createImage(wide,tall,ARGB);
      //splitImage  = new PImage();
        splitImage.copy(assetStrip,Xget,0,wide, tall, 0,0, wide, tall); //copy part of the imageStrip to the new image
        
        //replaceColour(sequence[i],backGround);
        Xget+=wide; //move right by partImageWidth
        splitImage.save("./"+fileName+i+"."+fileExt);
    }
  }
}

void setup()
{ //Set the following variables for your strip - png files will keep transparent background
  int NumberOfImagesInStrip = 9;
  String FileName = "assetStripFileName"; //replace with name of your file
  String FileExtension = "png";  //image file extension
  int WidthSplitImage = 64;
  int HeightSplitImage = 64;
  
  //split the file and write to new numbered filed
  StripSplit strip = new StripSplit(NumberOfImagesInStrip, FileName, FileExtension, WidthSplitImage, HeightSplitImage);
 
}
  
