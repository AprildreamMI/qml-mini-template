import QtQuick 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13
import QtQuick.Window 2.13

ApplicationWindow {
    id: root
    visible: true
    width: 1024
    height: 650
    minimumWidth: 1024
    maximumWidth: 1024
    minimumHeight: 650
    maximumHeight: 650

    // 全局变量 窗口宽度
    property int uniWidth: width
    // 全局变量 窗口高度
    property int uniHeight: height

    header: ToolBar {
        id: toolBar
        height: 50
        background: Rectangle {
            width: parent.width
            height: parent.height
        }
        Row  {
           anchors.fill: parent
           spacing: 10
           Button {
             width: 100
             height: 50
             text: '首页'
           }
           Button {
               width: 100
               height: 50
               text: '第二页'
           }
        }
    }

    Loader {
        id: appPage
        anchors.fill: parent
        source: "./pages/View1.qml"
    }

    Component.onCompleted: {
        console.log('挂载')
    }
}
