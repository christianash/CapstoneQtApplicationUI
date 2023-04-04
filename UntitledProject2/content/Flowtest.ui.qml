/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import FlowView 1.0

FlowView {
    id: flowView
    width: 800
    height: 600
    flowDecisions: [
        FlowDecision {
            id: secureDecide1
            targets: [flowTransition7,flowTransition10]
        },
        FlowDecision {
            id: secureDecide2
            targets: [flowTransition11,flowTransition5]
        }
    ]
    flowTransitions: [
        FlowTransition {
            id: flowTransition1
            to: videoSecureScreen
            from: clearCallScreen
        },
        FlowTransition {
            to: mainDialScreen
            from: flowView
        },
        FlowTransition {
            id: flowTransition2
            to: secureDecide1
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition3
            to: secureDecide2
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition
            to: audioSecureScreen
            from: clearCallScreen
        },
        FlowTransition {
            id: flowTransition4
            to: loadClearCall
            from: mainDialScreen
        },
        FlowTransition {
            id: flowTransition6
            to: clearCallScreen
            from: loadClearCall
        },
        FlowTransition {
            id: flowTransition7
            question: "Credentials Incorrect"
            to: videoSecureScreen
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition8
            to: loadEndCall
            from: clearCallScreen
        },
        FlowTransition {
            id: flowTransition9
            to: mainDialScreen
            from: loadEndCall
        },
        FlowTransition {
            id: flowTransition11
            question: "Credentials Incorrect"
            to: audioSecureScreen
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition12
            to: loadEndCall
            from: secureAudioScreen
        },
        FlowTransition {
            id: flowTransition13
            to: loadEndCall
            from: secureVideoScreen
        },
        FlowTransition {
            id: flowTransition5
            question: "Credentials correct"
            to: loadSecureCall
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition10
            question: "Credentials correct"
            to: loadSecureCall1
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition14
            to: secureAudioScreen
            from: loadSecureCall
        },
        FlowTransition {
            id: flowTransition15
            to: secureVideoScreen
            from: loadSecureCall1
        }
    ]

    defaultTransition: FlowTransition {
        id: defaultTransition
    }

    ClearCallScreen {
        id: clearCallScreen

        FlowActionArea {
            target: flowTransition
            x: 1044
            y: 550
            width: 219
            height: 78
        }

        FlowActionArea {
            target: flowTransition1
            x: 1044
            y: 634
            width: 219
            height: 78
        }

        FlowActionArea {
            target: flowTransition8
            x: 587
            y: 581
            width: 102
            height: 100
        }
    }

    SecurityScreen {
        id: videoSecureScreen

        FlowActionArea {
            target: flowTransition2
            x: 663
            y: 380
            width: 104
            height: 43
            goBack: false
        }
    }

    SecurityScreen {
        id: audioSecureScreen

        FlowActionArea {
            target: flowTransition3
            x: 662
            y: 379
            width: 105
            height: 45
        }
    }

    MainDialScreen {
        id: mainDialScreen

        FlowActionArea {
            target: flowTransition4
            x: 810
            y: 528
            width: 109
            height: 103
        }
    }

    LoadClearCall {
        id: loadClearCall

        FlowActionArea {
            target: flowTransition6
            x: 367
            y: 287
            width: 484
            height: 192
        }
    }

    SecureAudioScreen {
        id: secureAudioScreen

        FlowActionArea {
            target: flowTransition12
            x: 588
            y: 581
            width: 103
            height: 102
        }
    }

    SecureVideoScreen {
        id: secureVideoScreen

        FlowActionArea {
            target: flowTransition13
            x: 590
            y: 581
            width: 98
            height: 102
        }
    }

    LoadEndCall {
        id: loadEndCall

        FlowActionArea {
            target: flowTransition9
            x: 490
            y: 302
            width: 300
            height: 172
        }
    }

    LoadSecureCall {
        id: loadSecureCall

        FlowActionArea {
            target: flowTransition14
            x: 479
            y: 310
            width: 322
            height: 161
        }
    }

    LoadSecureCall {
        id: loadSecureCall1

        FlowActionArea {
            target: flowTransition15
            x: 474
            y: 304
            width: 332
            height: 166
        }
    }


}

/*##^##
Designer {
    D{i:0}D{i:1;flowX:4169.103734202678;flowY:2053.9408703613826}D{i:2;flowX:4237.989200010567;flowY:271.0107999894325}
D{i:21;flowX:869.2106461225521;flowY:81.4745228578659}D{i:25;flowX:2648.1801805578843;flowY:1069.3691304712409}
D{i:27;flowX:2635;flowY:298.2190591983914}D{i:29;flowX:1758.912849552658;flowY:1934.776977179697}
D{i:31;flowX:1735.7707439828082;flowY:3083.133813692182}D{i:33;flowX:6446.295789678781;flowY:720.530526452521}
D{i:35;flowX:6337.012110356406;flowY:2153.530526452521}D{i:37;flowX:256.00471284992284;flowY:1427.776730477795}
D{i:39;flowX:5113.35181134726;flowY:535.9900357731226}D{i:41;flowX:4924.535113210646;flowY:1408}
}
##^##*/
