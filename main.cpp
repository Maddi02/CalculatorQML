#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "calcoperations.h"
#include <QDebug>
#include<QQmlContext>

int main(int argc, char *argv[])
{
    CalcOperations *calcOperations = new CalcOperations;

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("calcOperations", calcOperations);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if(engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
