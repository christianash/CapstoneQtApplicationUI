// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.2
import QtQuick.Window 6.2
import UntitledProject2

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "UntitledProject2"

    Flowtest {
        id: mainScreen
    }

}

