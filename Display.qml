 /****************************************************************************
 **
 ** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
 ** All rights reserved.
 ** Contact: Nokia Corporation (qt-info@nokia.com)
 **
 ** This file is part of the QtDeclarative module of the Qt Toolkit.
 **
 ** $QT_BEGIN_LICENSE:LGPL$
 ** GNU Lesser General Public License Usage
 ** This file may be used under the terms of the GNU Lesser General Public
 ** License version 2.1 as published by the Free Software Foundation and
 ** appearing in the file LICENSE.LGPL included in the packaging of this
 ** file. Please review the following information to ensure the GNU Lesser
 ** General Public License version 2.1 requirements will be met:
 ** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
 **
 ** In addition, as a special exception, Nokia gives you certain additional
 ** rights. These rights are described in the Nokia Qt LGPL Exception
 ** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
 **
 ** GNU General Public License Usage
 ** Alternatively, this file may be used under the terms of the GNU General
 ** Public License version 3.0 as published by the Free Software Foundation
 ** and appearing in the file LICENSE.GPL included in the packaging of this
 ** file. Please review the following information to ensure the GNU General
 ** Public License version 3.0 requirements will be met:
 ** http://www.gnu.org/copyleft/gpl.html.
 **
 ** Other Usage
 ** Alternatively, this file may be used in accordance with the terms and
 ** conditions contained in a signed written agreement between you and Nokia.
 **
 **
 **
 **
 **
 ** $QT_END_LICENSE$
 **
 ****************************************************************************/ 

 import QtQuick 1.1
 import "qrc:/js/calculator.js" as CalcEngine

 Item {
     Text {
         id: displayText
         anchors {
             right: operationText.left; rightMargin: 6;
             left: parent.left; leftMargin: 6;
             verticalCenter: parent.verticalCenter; verticalCenterOffset: -1
         }
         font.pixelSize: parent.height * .6; text: calcwindow.displayText; horizontalAlignment: Text.AlignRight; elide: Text.ElideRight
         color: "#FF8600"; smooth: true; font.bold: true
     }
     Text {
        id: operationText
        font.bold: true; font.pixelSize: parent.height * .7
        color: "#CD6600"; smooth: true
        anchors {
             leftMargin: 6;
             verticalCenterOffset: -3; verticalCenter: parent.verticalCenter;
             right: leftArrowButton.left }
        text: calcwindow.displayOperation
     }
     CalcButton {
        id: leftArrowButton
        width: height;
        height: parent.height * 0.6;
        color: '#888888'; operation: CalcEngine.leftArrow
        anchors {
            right: parent.right; rightMargin: 6
            verticalCenter: parent.verticalCenter; verticalCenterOffset: -1
        }
     }
 }
