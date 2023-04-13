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
        },
        FlowDecision {
            id: flowDecision
            targets: [flowTransition17,flowTransition16]
        },
        FlowDecision {
            id: flowDecision1
            targets: [flowTransition21,flowTransition22]
        },
        FlowDecision {
            id: flowDecision2
            targets: [flowTransition24,flowTransition26]
        }
    ]
    flowTransitions: [
        FlowTransition {
            id: flowTransition1
            to: videoSecureScreen
            from: clearCallScreen
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
            effect: FlowFadeEffect {
                duration: 300
            }
            to: loadClearCall
            from: mainDialScreen
        },
        FlowTransition {
            id: flowTransition7
            question: "Credentials Incorrect"
            to: videoSecureScreen
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition11
            question: "Credentials Incorrect"
            to: audioSecureScreen
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition5
            effect: FlowFadeEffect {
                duration: 300
            }
            question: "Credentials correct"
            to: loadSecureCall
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition10
            effect: FlowFadeEffect {
                duration: 300
            }
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
        },
        FlowTransition {
            id: flowTransition6
            to: flowDecision
            from: loadClearCall
        },
        FlowTransition {
            id: flowTransition17
            question: "Connected to Call"
            to: clearCallScreen
            from: loadClearCall
        },
        FlowTransition {
            id: flowTransition16
            question: "Connection Failed"
            to: mainDialScreen
            from: loadClearCall
        },
        FlowTransition {
            id: flowTransition25
            to: clearCallScreen
        },
        FlowTransition {
            to: mainLandingScreenGuest
            from: flowView
        },
        FlowTransition {
            id: flowTransition18
            to: loginScreen
            from: mainLandingScreenGuest
        },
        FlowTransition {
            id: flowTransition19
            to: mainLandingScreenGuest
            from: loginScreen
        },
        FlowTransition {
            id: flowTransition20
            to: flowDecision1
            from: loginScreen
        },
        FlowTransition {
            id: flowTransition21
            question: "Valid Credentials"
            to: mainDialScreen
            from: loginScreen
        },
        FlowTransition {
            id: flowTransition22
            question: "Invalid Credentials"
            to: loginScreen
            from: loginScreen
        },
        FlowTransition {
            id: flowTransition24
            question: "Connection Failed"
            to: mainLandingScreenGuest
            from: mainLandingScreenGuest
        },
        FlowTransition {
            id: flowTransition26
            question: "Connected to Call"
            to: clearCallScreen
            from: mainLandingScreenGuest
        },
        FlowTransition {
            id: flowTransition8
            effect: FlowFadeEffect {
                duration: 300
            }
            to: loadEndCall
            from: clearCallScreen
        },
        FlowTransition {
            id: flowTransition12
            effect: FlowFadeEffect {
                duration: 300
            }
            to: loadEndCall
            from: secureAudioScreen
        },
        FlowTransition {
            id: flowTransition13
            effect: FlowFadeEffect {
                duration: 300
            }
            to: loadEndCall
            from: secureVideoScreen
        },
        FlowTransition {
            id: flowTransition9
            to: mainLandingScreenGuest
            from: loadEndCall
        },
        FlowTransition {
            id: flowTransition23
            to: loadClearCall
            from: mainLandingScreenGuest
        },
        FlowTransition {
            effect: FlowFadeEffect {
                duration: 300
            }
            to: flowDecision2
            from: loadClearCall
        },
        FlowTransition {
            id: flowTransition27
            effect: FlowFadeEffect {
                duration: 300
            }
            to: loadLogout
            from: mainDialScreen
        },
        FlowTransition {
            id: flowTransition28
            to: mainLandingScreenGuest
            from: loadLogout
        },
        FlowTransition {
            id: flowTransition29
            to: mainLandingScreenGuest
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition30
            to: mainLandingScreenGuest
            from: audioSecureScreen
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

        FlowActionArea {
            target: flowTransition29
            x: 8
            y: 626
            width: 166
            height: 72
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

        FlowActionArea {
            target: flowTransition30
            x: 8
            y: 630
            width: 167
            height: 72
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

        FlowActionArea {
            target: flowTransition27
            x: 41
            y: 555
            width: 105
            height: 102
        }
    }

    LoadClearCall {
        id: loadClearCall

        FlowActionArea {
            target: flowTransition6
            x: 71
            y: 98
            width: 1151
            height: 555
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
            x: 51
            y: 51
            width: 1191
            height: 612
        }
    }

    LoadSecureCall {
        id: loadSecureCall

        FlowActionArea {
            target: flowTransition14
            x: 44
            y: 48
            width: 1185
            height: 642
        }
    }

    LoadSecureCall {
        id: loadSecureCall1

        FlowActionArea {
            target: flowTransition15
            x: 41
            y: 43
            width: 1185
            height: 648
        }
    }

    MainLandingScreenGuest {
        id: mainLandingScreenGuest

        FlowActionArea {
            target: flowTransition18
            x: 46
            y: 551
            width: 101
            height: 101
        }

        FlowActionArea {
            target: flowTransition23
            x: 813
            y: 527
            width: 105
            height: 103
        }
    }

    LoginScreen {
        id: loginScreen

        FlowActionArea {
            target: flowTransition19
            x: 8
            y: 17
            width: 80
            height: 53
        }

        FlowActionArea {
            target: flowTransition20
            x: 835
            y: 364
            width: 180
            height: 43
        }
    }

    LoadLogout {
        id: loadLogout

        FlowActionArea {
            target: flowTransition28
            x: 29
            y: 33
            width: 1212
            height: 649
        }
    }


}

/*##^##
Designer {
    D{i:0}D{i:48;flowX:869.2106461225521;flowY:81.4745228578659}D{i:52;flowX:2648.1801805578843;flowY:1069.3691304712409}
D{i:55;flowX:2635;flowY:298.2190591983914}D{i:58;flowX:1758.912849552658;flowY:1934.776977179697}
D{i:61;flowX:1735.7707439828082;flowY:3083.133813692182}D{i:63;flowX:6446.295789678781;flowY:720.530526452521}
D{i:65;flowX:6337.012110356406;flowY:2153.530526452521}D{i:67;flowX:256.00471284992284;flowY:1427.776730477795}
D{i:69;flowX:5113.35181134726;flowY:535.9900357731226}D{i:71;flowX:4924.535113210646;flowY:1408}
D{i:73;flowX:3177.97883752953;flowY:5458.731427770792}D{i:76;flowX:1252.3657138853957;flowY:4258.043427210346}
D{i:79;flowX:4309.865456750432;flowY:3748.46013673284}D{i:1;flowX:4169.103734202678;flowY:2053.9408703613826}
D{i:2;flowX:4237.989200010567;flowY:271.0107999894325}
}
##^##*/
