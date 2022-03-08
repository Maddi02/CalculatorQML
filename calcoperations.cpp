#include "calcoperations.h"
#include <iostream>
#include <QDebug>
CalcOperations::CalcOperations(QObject *parent) : QObject(parent)
{

}
void CalcOperations::operationReset()
{
    this->number = "";
     valueChanged("");
}
void CalcOperations::changeValue(double a)
{
    valueChanged(buildEnterdNumber(a));
}

void CalcOperations::operationEmitted(QString operation)
{
    calculate(operation);
}

void CalcOperations::calculate(QString operation)
{
    if(operation == "."){
        this->number += QString(operation);
        emit valueChanged(number);
    }

    if(operation == "sign")
    {
     number += "-";
    }
    if(operation == "+" ||operation == "-" || operation == "/" || operation == "X")
    {
        this->operation = operation;
        firstNumber = std::stod(number.toStdString());
        number = "";
        valueChanged(number);
    }

    if(operation == "=")
    {
       if(this->operation == "+")
       {
           valueChanged(QString::number(firstNumber + std::stod(number.toStdString())));
       }
       if(this->operation == "-")
       {
           valueChanged(QString::number(firstNumber - std::stod(number.toStdString())));
       }

       if(this->operation == "X")
       {
           valueChanged(QString::number(firstNumber * std::stod(number.toStdString())));
       }

       if(this->operation == "/")
       {
           valueChanged(QString::number(firstNumber / std::stod(number.toStdString())));
       }
    }
}


QString CalcOperations::buildEnterdNumber(double number){
    this->number += QString::number(number);
    qDebug()<<this->number;
    return this->number;

}
