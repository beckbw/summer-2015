import processing.net.*;

Server me;
Client partner;
String partnerIP = "";
int port = 5204;
String myMessage = "";
String partnerMessage = "";
boolean connected = false;

void setup() {
  me = new Server(this, port);
  println("Server Running");
  partner = new Client(this, partnerIP, port);
  while( !partner.active() ){}
  println("Connected to partner at "+partnetIP);
}

void draw() {
  if( partner.available() > 0 ) {
    partnerMessage = partner.readString();
    println(partnetMessage);
}

void keyPressed() {
  partner.write(message);
}
