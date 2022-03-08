#ifndef CALCOPERATIONS_H
#define CALCOPERATIONS_H
#include <QObject>
#include <QDebug>

class CalcOperations : public QObject
{
    Q_OBJECT
public:
    explicit CalcOperations(QObject *parent = nullptr);

signals:
    void valueChanged(QString s);

public slots:
    void changeValue(double a);
    void operationEmitted(QString operation);
    void operationReset();

private:
    QString buildEnterdNumber(double number);
    void calculate(QString a);
    QString number;
    double firstNumber;
    QString operation;
};
#endif // CALCOPERATIONS_H
