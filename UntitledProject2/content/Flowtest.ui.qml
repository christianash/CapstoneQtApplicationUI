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
            targets: [flowTransition10,flowTransition7]
        },
        FlowDecision {
            id: secureDecide2
            targets: [flowTransition5,flowTransition11]
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
        },
        FlowTransition {
            id: flowTransition31
            to: mainDialScreen
            from: wIPScreen2
        },
        FlowTransition {
            id: flowTransition32
            to: wIPScreen2
            from: mainDialScreen
        },
        FlowTransition {
            id: flowTransition33
            to: wIPScreen
            from: mainLandingScreenGuest
        },
        FlowTransition {
            id: flowTransition34
            to: mainLandingScreenGuest
            from: wIPScreen
        },
        FlowTransition {
            id: flowTransition22
            question: "Invalid Credentials"
            to: loginErrorScreen
            from: loginScreen
        },
        FlowTransition {
            id: flowTransition35
            to: flowDecision1
            from: loginErrorScreen
        },
        FlowTransition {
            id: flowTransition7
            question: "Credentials Incorrect"
            to: securityErrorScreen1
            from: videoSecureScreen
        },
        FlowTransition {
            id: flowTransition11
            question: "Credentials Incorrect"
            to: securityErrorScreen
            from: audioSecureScreen
        },
        FlowTransition {
            id: flowTransition36
            to: secureDecide2
            from: securityErrorScreen
        },
        FlowTransition {
            id: flowTransition37
            to: secureDecide1
            from: securityErrorScreen1
        },
        FlowTransition {
            id: flowTransition38
            to: mainLandingScreenGuest
            from: securityErrorScreen1
        },
        FlowTransition {
            id: flowTransition39
            to: mainLandingScreenGuest
            from: securityErrorScreen
        },
        FlowTransition {
            id: flowTransition16
            question: "Failed to Connect to Call"
            to: mainLandingScreenGuest
            from: loadClearCall
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

        FlowActionArea {
            target: flowTransition32
            x: 167
            y: 544
            width: 325
            height: 113
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

        FlowActionArea {
            target: flowTransition33
            x: 163
            y: 557
            width: 102
            height: 100
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

    WIPScreen {
        id: wIPScreen

        FlowActionArea {
            target: flowTransition34
            x: 8
            y: 8
            width: 80
            height: 81
        }
    }

    WIPScreen {
        id: wIPScreen2

        FlowActionArea {
            target: flowTransition31
            x: 8
            y: 8
            width: 80
            height: 86
        }
    }

    LoginErrorScreen {
        id: loginErrorScreen

        FlowActionArea {
            target: flowTransition35
            x: 841
            y: 355
            width: 172
            height: 56
        }
    }

    SecurityErrorScreen {
        id: securityErrorScreen

        FlowActionArea {
            target: flowTransition36
            x: 664
            y: 377
            width: 114
            height: 52
        }

        FlowActionArea {
            target: flowTransition39
            x: 8
            y: 626
            width: 165
            height: 80
        }
    }

    SecurityErrorScreen {
        id: securityErrorScreen1

        FlowActionArea {
            target: flowTransition37
            x: 660
            y: 377
            width: 123
            height: 50
        }

        FlowActionArea {
            target: flowTransition38
            x: 8
            y: 632
            width: 168
            height: 80
        }
    }


}

/*##^##
Designer {
    D{i:0}D{i:57;flowX:869.2106461225521;flowY:81.4745228578659}D{i:61;flowX:2648.1801805578843;flowY:1069.3691304712409}
D{i:64;flowX:2635;flowY:298.2190591983914}D{i:67;flowX:1758.912849552658;flowY:1934.776977179697}
D{i:71;flowX:1735.7707439828082;flowY:3083.133813692182}D{i:73;flowX:7088.9085591578305;flowY:421.7149810816993}
D{i:75;flowX:7140.635698947289;flowY:1887.9688720726217}D{i:77;flowX:256.00471284992284;flowY:1427.776730477795}
D{i:79;flowX:5595.181419368373;flowY:269.9688720726216}D{i:81;flowX:5595.620134983599;flowY:1723.9119644137618}
D{i:83;flowX:3177.97883752953;flowY:5458.731427770792}D{i:87;flowX:1252.3657138853957;flowY:4258.043427210346}
D{i:90;flowX:4309.865456750432;flowY:3748.46013673284}D{i:92;flowX:3233.655206108565;flowY:6495}
D{i:94;flowX:272.7219129061657;flowY:5153.945714861837}D{i:96;flowX:89.29470947132154;flowY:3499.010386040523}
D{i:98;flowX:4278.777236936456;flowY:1030.8808364863833}D{i:101;flowX:5326.949050578944;flowY:2769.520882426563}
D{i:1;flowX:4169.103734202678;flowY:2053.9408703613826}D{i:2;flowX:4237.989200010567;flowY:271.0107999894325}
D{i:3;flowX:3386.1533575687786;flowY:4898.965105109692}D{i:4;flowX:1500.6715462375314;flowY:3912}
D{i:5;flowX:379.99824800558525;flowY:780.8183178196957}
}
##^##*/
