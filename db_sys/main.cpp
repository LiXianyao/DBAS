#include "db_sys.h"
#include <QApplication>
#include <QtGui>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    db_sys w;
    w.show();

    return a.exec();
}