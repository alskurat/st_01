#ifndef CALCULATE_H
#define CALCULATE_H

#include <QObject>

class Calculate : public QObject {
  Q_OBJECT

public:
  Q_INVOKABLE QString calculate(QString str);
};

#endif // CALCULATE_H
