#include "SafeBuffer.h"
#include <string>
#include <queue>
#include <iostream>
using namespace std;

SafeBuffer::SafeBuffer() {
	pthread_mutex_init(&m, NULL);
}

SafeBuffer::~SafeBuffer() {
	pthread_mutex_destroy(&m);
	//How to destroy queue
	//https://stackoverflow.com/questions/709146/how-do-i-clear-the-stdqueue-efficiently
	queue<string> emptyQueue;
	swap(q,emptyQueue);
	//cout<<"Buffer destroyed"<<endl;
}

int SafeBuffer::size() {
	/*
	DONE
	Is this function thread-safe???
	Make necessary modifications to make it thread-safe
	*/
	
	pthread_mutex_lock(&m);
	int size = q.size();
	pthread_mutex_unlock(&m);
    return size;
}

void SafeBuffer::push(string str) {
	/*
	DONE
	Is this function thread-safe???
	Make necessary modifications to make it thread-safe
	*/
	
	pthread_mutex_lock(&m);
	
	//if(str == "quit")
		//cout<<"pushing "<<str<<endl;
	
	q.push (str);
	pthread_mutex_unlock(&m);
}

string SafeBuffer::pop() {
	/*
	DONE
	Is this function thread-safe???
	Make necessary modifications to make it thread-safe
	*/
	
	pthread_mutex_lock(&m);
	string s = q.front();
	q.pop();
	pthread_mutex_unlock(&m);
	return s;
}
