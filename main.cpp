#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication  app(argc, argv);
    QQmlApplicationEngine engine;

    QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    engine.load(url);

    return app.exec();
}
