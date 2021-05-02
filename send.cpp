#include <iostream>
#include <iomanip>
#include <vector>
#include <set>
#include <string>
#include <cstdlib>
#include <pthread.h>
#include <unistd.h>
#include <tins/ip.h>
#include <tins/tcp.h>
#include <tins/ip_address.h>
#include <tins/rawpdu.h>
#include <tins/ethernetII.h>
#include <tins/network_interface.h>
#include <tins/sniffer.h>
#include <tins/utils.h>
#include <tins/packet_sender.h>

using std::cout;
using std::endl;
using std::vector;
using std::pair;
using std::setw;
using std::string;
using std::set;
using std::runtime_error;
using std::bind;
using std::exception;

using namespace Tins;

int main(){
	PacketSender sender;
	IP pkt = IP("127.0.0.1") / TCP(80);
	for(uint32_t i ; i < 40 ; i++){
	pkt /= RawPDU(std::to_string(i));
	sender.send(pkt);
	}
}
