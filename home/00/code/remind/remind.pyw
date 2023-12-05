#!/usr/bin/env python
import sys, time, math
    # from PySide6 import QtCore, QtGui, QtWidgets
    # from JcWidgets import JcWindow
from PySide6.QtCore    import *
from PySide6.QtGui     import *
from PySide6.QtWidgets import *
from JcWidgets         import *


class MainWindow(JWindow):
    def __init__(self):
        JWindow.__init__(self)
        self.set_timer(1000)
        self.set_size(0.8)
        self.set_position()
        self.set_transparent()
        self.new_variable()
        self.set_connect()
        # self.show()
    def event(self, event):
        if event.type() == QtCore.QEvent.WindowDeactivate :
            self.hide()
        # elif event.type() == QtCore.QEvent.WindowActivate :
        return super().event(event)
    def paintEvent(self, event):
        self.paint_text()

    def new_variable(self):
        t0 = "HELLO！！！\n"
        t1 = "白头发，鱼尾纹，黑眼圈，\n"
        t2 = "怕不怕 ...\n"
        t4 = "请休息一会儿吧！！！\n"
        self.text = t0+t1+t2+t4

    def set_connect(self):
        self.connect(self.timer, SIGNAL('timeout()'), self, SLOT('update_window()'))
    def update_window(self):
        tm = time.localtime(time.time())
        # if tm.tm_sec%2 == 0 :
        if ( tm.tm_min >= 0 and tm.tm_min < 5 ) or \
                ( tm.tm_min >= 30 and tm.tm_min < 35 ) :
            self.showFullScreen()
        else :
            self.hide()
        # self.update()

    def paint_text(self):
        pr = QPainter(self)
        ft = QFont("", 30)
        rt = self.rect()
        pr.setFont(ft)
        pr.drawText(rt, Qt.AlignCenter, self.text)


def main():
    app = QtWidgets.QApplication(sys.argv)
    win = MainWindow()
    sys.exit(app.exec())
if __name__ == "__main__":
    main()


