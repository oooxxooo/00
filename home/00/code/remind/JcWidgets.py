from PySide6 import QtCore, QtGui, QtWidgets
import sys


class JWindow(QtWidgets.QMainWindow):
    def __init__(self):
        QtWidgets.QMainWindow.__init__(self)
        # self.show()

    def set_timer(self,interval=1000):
        self.timer = QtCore.QTimer()
        self.timer.setInterval(interval)
        self.timer.start()
        # self.connect(self.timer, QtCore.SIGNAL('timeout()'), self, QtCore.SLOT('update_time()'))

    def set_style(self):
        #
        self.setWindowTitle('00')

    def set_size(self,times=0.8):
        self.screenG = QtWidgets.QApplication.primaryScreen().availableGeometry()
        self.windowH = self.screenG.height()*times
        self.windowW = self.screenG.height()*times
        self.setFixedSize(self.windowW, self.windowH)

    def set_position(self):
        self.centerH = (self.screenG.height()-self.windowH)/2
        self.centerW = (self.screenG.width() -self.windowW)/2
        self.setGeometry (self.centerW, self.centerH, 0, 0)

    def set_transparent(self):
        self.setAttribute(QtCore.Qt.WidgetAttribute.WA_TranslucentBackground)
        self.setWindowFlag(QtCore.Qt.WindowType.FramelessWindowHint)
        # self.setWindowFlag(QtCore.Qt.WindowType.WindowStaysOnBottomHint)
        # self.setWindowFlag(QtCore.Qt.WindowType.WindowMinMaxButtonsHint)


# def main():
#     app = QtWidgets.QApplication(sys.argv)
#     w = JWindow()
#     sys.exit(app.exec())
# if __name__ == "__main__":
#     main()


