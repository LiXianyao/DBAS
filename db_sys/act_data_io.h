#ifndef ACT_DATA_IO_H
#define ACT_DATA_IO_H

#include <QSqlDatabase>
#include <QSqlQuery>
#include<inputbuffer.h>
#include<QThread>

class act_data_io
{
public:
    virtual void  inporttb(tbUnit *[100],int){};
    QAxObject * inportExcel(QString,QAxObject* &,QAxObject* &,int&,int&);
    QVariantList readRows(QAxObject*,int,int&,int,int);
    QString getEndCol(int);

    QSqlDatabase db;
    QAxObject *excell;
};

class act_data_cell_io:public act_data_io
{
public:
    act_data_cell_io(QSqlDatabase);
    void inporttb(tbUnit *[100],int);
};

class act_data_mro_io:public act_data_io
{
public:
    act_data_mro_io(QSqlDatabase);
    void inporttb(tbUnit *[100],int);
};

class act_data_prb_io:public act_data_io
{
public:
    act_data_prb_io(QSqlDatabase);
    void inporttb(tbUnit *[100],int);
};

class act_data_kpi_io:public act_data_io
{
public:
    act_data_kpi_io(QSqlDatabase);
    void inporttb(tbUnit *[100],int);
};


class READThread:public QThread{
    Q_OBJECT
signals:
    void uiChanged(int,int);

public:
    int type;
    act_data_io* myIO;
    QAxObject *myworksheet;
    QVariantList allEnvDataList;
    int startRow,endRow,intRows,intCols;
    QString fileName;
    READThread(QString fName,int t,act_data_io* io,QAxObject *worksheet,int start,int end,int Rows,int Cols){
        this->myIO = io;
        myworksheet = worksheet;
        startRow = start;
        endRow = end;
        intRows = Rows;
        intCols = Cols;
        type = t;
        fileName = fName;
    }

    void run();
};
#endif // ACT_DATA_IO_H
