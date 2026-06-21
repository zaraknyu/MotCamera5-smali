.class public final Landroidx/room/concurrent/FileLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.implements Landroidx/media3/extractor/text/SubtitleParser;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;


# static fields
.field public static mDebugReportDisplayStrings:Landroidx/room/concurrent/FileLock;


# instance fields
.field public final synthetic $r8$classId:I

.field public lockChannel:Ljava/lang/Object;

.field public lockFilename:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 8

    iput p1, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(I)V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 53
    new-instance p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-direct {p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(I)V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 54
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f1200dd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f120672

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1201f2

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 62
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 63
    const-string v2, "HAL_FOCUS_CALLBACK"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1201f4

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 67
    const-string v2, "HAL_GET_PARAMS"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1203f7

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 71
    const-string v2, "HAL_SET_PARAMS"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1204e9

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 75
    const-string v2, "HAL_SHUTTER_CALLBACK"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12021d

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 79
    const-string v2, "HAL_PICTURE_CALLBACK_JPEG"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 81
    const-string v2, "Panorama save time"

    .line 82
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 83
    const-string v2, "PANORAMA_SAVE"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1202ea

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 86
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 87
    const-string v2, "MR_STOP"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1204e7

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 91
    const-string v2, "SHOT_TO_SHOT_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1204e8

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 95
    const-string v2, "SHOT_TO_SHOT_UI_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1204ea

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 99
    const-string v2, "SHUTTER_LAG_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120512

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 103
    const-string v2, "START_PREVIEW"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120514

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 107
    const-string v2, "START_TO_HAL_OPEN"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120513

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 111
    const-string v2, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1200d0

    .line 114
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f1205c8

    .line 115
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 117
    const-string v2, "TOGGLE_CAMERA_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 122
    const-string v2, "TOGGLE_MODE_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1200ce

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 126
    const-string v2, "TOTAL_STARTUP_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1200cf

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 130
    const-string v2, "TOTAL_STARTUP_W_CAF_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f120671

    .line 131
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 132
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {v5, p0, p1, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 135
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f12065d

    .line 136
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 137
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-direct {v5, p0, p1, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 140
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f12050f

    .line 141
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    .line 142
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-direct {v5, p0, p1, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 145
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f120331

    .line 146
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 147
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-direct {v5, p0, p1, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 150
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f120353

    .line 151
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 152
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-direct {v5, p0, p1, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 155
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f1201f6

    .line 156
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 157
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-direct {v5, p0, p1, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 160
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120650

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 164
    const-string v2, "VIDEO_COMPLETION"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12032f

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 168
    const-string v2, "MULTI_SHOT_TO_SHOT"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12032d

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 172
    const-string v2, "MULTI_SHOT_AVG"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12032e

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-direct {p1, p0, v2, v4, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 176
    const-string v2, "MULTI_SHOT_COUNT"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12006a

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 179
    const-string v2, "TOTAL_CAPTURE_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12006c

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 182
    const-string v2, "AUTO_ENHANCE_PROCESSING_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120051

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 185
    const-string v2, "AI_PERSONAL_COLOR_TONE_PROCESSING_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12001f

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 188
    const-string v2, "ADOBE_SCAN_ADD_PAGE_TO_CAPTURE_PREVIEW_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120020

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 191
    const-string v2, "ADOBE_SCAN_ADD_PAGE_TO_SCAN_MODE_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120022

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 194
    const-string v2, "ADOBE_SCAN_AUTO_CAPTURE_TRIGGER_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120037

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 197
    const-string v2, "ADOBE_SCAN_LOAD_CAPTURE_PREVIEW_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120041

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 200
    const-string v2, "ADOBE_SCAN_RETAKE_TO_CAPTURE_PREVIEW_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f120042

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 203
    const-string v2, "ADOBE_SCAN_RETAKE_TO_SCAN_MODE_TIME_O"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance p1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f12004b

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1, v3, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V

    .line 206
    const-string p0, "ADOBE_SCAN_SAVE_TIME_O"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 207
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 209
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 210
    :sswitch_2
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 212
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 213
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 214
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    .line 215
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 216
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 217
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 219
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 220
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 222
    new-instance p1, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    .line 223
    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 225
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 226
    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 227
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0xc -> :sswitch_5
        0xf -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    iput-object p2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 22
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 4

    const/4 v0, 0x7

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 36
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    if-nez p0, :cond_1

    .line 37
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 40
    invoke-direct {v0}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    const-string v1, "android.text.DynamicLayout$ChangeWatcher"

    .line 42
    const-class v2, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sWatcherClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    :try_start_2
    sput-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 45
    :cond_1
    :goto_2
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 46
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 233
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 28
    new-instance p1, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p1, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 31
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/StartStopTokensImpl;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 7
    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableList;[I)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 230
    iput-object p2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V
    .locals 3

    const/16 v0, 0x17

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;-><init>(Landroidx/room/concurrent/FileLock;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/Fsm;-><init>(Landroidx/room/concurrent/FileLock;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 2

    const/16 v0, 0x16

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/motorola/camera/HeadsetReceiver$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/HeadsetReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ".lck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    return-void
.end method

.method public createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/compose/ui/node/NodeChain$Differ;
    .locals 5

    .line 2
    const-string v0, "createCodec:"

    iget-object v1, p1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-object v3, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    .line 7
    invoke-virtual {v3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, v3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 8
    new-instance v3, Landroidx/compose/ui/node/NodeChain$Differ;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/HandlerThread;

    iget-object v4, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v4, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v3, v0, p0, v1, v4}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Landroidx/core/view/MenuHostHelper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 11
    iget-object p0, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/view/Surface;

    if-nez p0, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz v1, :cond_0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p1, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaFormat;

    iget-object p1, p1, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCrypto;

    invoke-static {v3, v2, p0, p1, v1}, Landroidx/compose/ui/node/NodeChain$Differ;->access$100(Landroidx/compose/ui/node/NodeChain$Differ;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, v2

    :goto_1
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain$Differ;->release()V

    .line 15
    :cond_2
    :goto_2
    throw p0
.end method

.method public bridge synthetic createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/compose/ui/node/NodeChain$Differ;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    move-result v2

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :pswitch_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    move-result v7

    iput v1, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    iput v2, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    iput v6, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iput v7, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    if-eqz p3, :cond_1

    iput p3, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    invoke-virtual {v0}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->boundsMatch()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    invoke-virtual {v0}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->boundsMatch()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public function(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/StartStopTokensImpl;

    iget-object v0, v0, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;

    invoke-direct {v1, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;-><init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;->parameters:Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    iget-object v4, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;->returnType:Lkotlin/Pair;

    iget-object v3, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v3, "ret"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents$$Lambda$0;

    const/16 v7, 0x1e

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "internalName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "jvmDescriptor"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;->returnType:Lkotlin/Pair;

    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    iget-object p3, p3, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;

    iget-object p3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;->errorsSinceLanguageVersion:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    const-string v0, "."

    const-string v1, "Could not instantiate "

    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const-string v4, "BackendRegistry"

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, "Context has no PackageManager."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TransportBackendDiscovery has no service info."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Application info not found."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v9, "backend:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_4
    iput-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    :cond_6
    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v2, Lcom/google/android/datatransport/cct/CctBackendFactory;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    goto :goto_9

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-object v3
.end method

.method public getBokehLevel()I
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public varargs getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;
    .locals 3

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating extension"

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/Extractor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected error creating extractor"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public handleFaceData([Landroid/hardware/camera2/params/Face;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v3, :cond_1

    goto/16 :goto_10

    :cond_1
    if-eqz v1, :cond_2

    array-length v5, v1

    if-nez v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v7, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    div-float v7, v9, v2

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_20

    :cond_5
    if-nez v6, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackTeleCamera()Z

    move-result v6

    if-eqz v6, :cond_6

    div-float v2, v9, v2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleSegmentMin()F

    move-result v6

    mul-float/2addr v6, v2

    cmpl-float v2, v6, v8

    if-lez v2, :cond_6

    goto/16 :goto_10

    :cond_6
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float v6, v7, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$FileSorter$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$FileSorter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-array v10, v5, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v11, 0xa

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/Face;

    iget-object v10, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v12, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v12, :cond_14

    iget-object v12, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v12, [Landroid/hardware/camera2/params/Face;

    if-eqz v8, :cond_9

    if-eqz v12, :cond_9

    array-length v13, v12

    if-lez v13, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v8

    move v15, v5

    :goto_0
    if-ge v15, v14, :cond_8

    aget-object v3, v8, v15

    invoke-static {v12}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;

    const/4 v4, 0x5

    invoke-direct {v11, v4, v3}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;-><init>(ILjava/lang/Object;)V

    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v11, 0xa

    goto :goto_0

    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    new-array v3, v5, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    :goto_1
    iget-object v4, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    if-eqz v4, :cond_c

    if-eqz v8, :cond_c

    array-length v9, v8

    if-eqz v9, :cond_c

    array-length v9, v8

    array-length v4, v4

    if-eq v9, v4, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v3, :cond_d

    array-length v9, v3

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_4

    :cond_d
    move v9, v5

    :goto_4
    if-eqz v9, :cond_e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    :cond_e
    if-eqz v4, :cond_f

    move-object v3, v8

    goto :goto_5

    :cond_f
    iget-wide v11, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-eqz v4, :cond_12

    if-eqz v9, :cond_10

    goto :goto_5

    :cond_10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    iget-wide v9, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    sub-long/2addr v11, v9

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v9, 0x5dc

    cmp-long v3, v3, v9

    if-lez v3, :cond_11

    iput-object v8, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_5

    :cond_11
    iget-object v3, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    :cond_12
    :goto_5
    const/16 v4, 0x258

    if-eqz v3, :cond_13

    array-length v9, v3

    if-lez v9, :cond_13

    iput-object v3, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(IZ)V

    goto :goto_6

    :cond_13
    iget-object v3, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(IZ)V

    :cond_14
    :goto_6
    move v3, v5

    move v4, v3

    const/16 v9, 0xa

    :goto_7
    if-ge v3, v9, :cond_1f

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iget-object v10, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    array-length v11, v8

    if-ge v3, v11, :cond_15

    const/4 v11, 0x1

    goto :goto_8

    :cond_15
    move v11, v5

    :goto_8
    or-int/2addr v4, v11

    if-eqz v11, :cond_19

    aget-object v12, v8, v3

    invoke-virtual {v12}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v14, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v15, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    if-nez v15, :cond_16

    array-length v15, v1

    move/from16 v19, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_17

    iget-object v5, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    monitor-enter v5

    :try_start_0
    iget-object v13, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v13, v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v13, v12}, Lcom/motorola/camera/SecureDataHelper;->addFace(Landroid/hardware/camera2/params/Face;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v5, v12}, Lcom/motorola/camera/SecureDataHelper;->getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_16
    move/from16 v19, v5

    iget-object v5, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    monitor-enter v5

    :try_start_2
    iget-object v13, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v13, v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v13, v12}, Lcom/motorola/camera/SecureDataHelper;->addFace(Landroid/hardware/camera2/params/Face;)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v5, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v5, v12}, Lcom/motorola/camera/SecureDataHelper;->getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v13

    :cond_17
    :goto_9
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isUwZoomBlendingCase()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_18
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getPreviewRectSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v12

    iget v14, v12, Lcom/motorola/camera/PreviewSize;->width:I

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->height:I

    iget v15, v13, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v1, v16, v14

    int-to-float v1, v1

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v1, v16

    sub-float/2addr v15, v1

    mul-float/2addr v15, v7

    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v21, v1

    sub-int v1, v20, v12

    int-to-float v1, v1

    div-float v1, v1, v16

    sub-float v1, v21, v1

    mul-float/2addr v1, v6

    move-object/from16 v20, v2

    iget v2, v13, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v14, v21, v14

    int-to-float v14, v14

    div-float v14, v14, v16

    sub-float/2addr v2, v14

    mul-float/2addr v2, v7

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v12

    int-to-float v5, v5

    div-float v5, v5, v16

    sub-float/2addr v13, v5

    mul-float/2addr v13, v6

    invoke-virtual {v9, v15, v1, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, -0x3b860000    # -1000.0f

    invoke-virtual {v9, v1, v1}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct {v2, v1, v1, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v9, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_19
    move-object/from16 v20, v2

    move/from16 v19, v5

    :goto_a
    monitor-enter v10

    :try_start_4
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    iget v2, v9, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x3

    aput v2, v1, v5

    aput v2, v1, v19

    iget v2, v9, Landroid/graphics/RectF;->top:F

    const/16 v17, 0xa

    aput v2, v1, v17

    const/16 v18, 0x1

    aput v2, v1, v18

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x7

    aput v2, v1, v5

    const/4 v5, 0x4

    aput v2, v1, v5

    iget v2, v9, Landroid/graphics/RectF;->right:F

    const/16 v5, 0x9

    aput v2, v1, v5

    const/4 v5, 0x6

    aput v2, v1, v5

    if-eqz v11, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_1a
    const/high16 v1, 0x42480000    # 50.0f

    :goto_b
    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->updateTouchRect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v10

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v1, :cond_1b

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_c

    :cond_1b
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_c
    sget v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->setColor(I)V

    if-eqz v11, :cond_1c

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_d

    :cond_1c
    move/from16 v2, v19

    :goto_d
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-nez v11, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_f

    :cond_1e
    :goto_e
    move/from16 v2, v19

    :goto_f
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v9, v17

    move/from16 v5, v19

    move-object/from16 v2, v20

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_1f
    if-eqz v4, :cond_20

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_20
    :goto_10
    return-void

    :goto_11
    iput-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public isPortraitBokehSupported()Z
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isViewWithinBoundFlags(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    move-result p0

    iput v1, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    iput v2, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    iput v3, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iput p0, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    const/16 p0, 0x6003

    iput p0, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    invoke-virtual {v0}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->boundsMatch()Z

    move-result p0

    return p0
.end method

.method public lock()V
    .locals 4

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to lock file: \'"

    const-string v3, "\'."

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public needFaceDetect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBokehLevelChanged(I)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onBokehLevelStopChanged()V
    .locals 0

    return-void
.end method

.method public onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/PreferenceGroup;

    const v0, 0x7fffffff

    iput v0, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSingleShot(Lcom/google/zxing/Result;)V
    .locals 1

    const/16 p0, 0x12

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "LEVEL_SETTINGS"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    add-int v3, v1, p3

    move-object/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    move v7, v4

    move v6, v5

    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v6, v5, :cond_5

    iget v7, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v6, v10

    goto :goto_2

    :cond_3
    const-string v10, "NOTE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-eqz v6, :cond_3b

    if-ne v6, v9, :cond_6

    :goto_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    if-ne v6, v10, :cond_36

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_35

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    iget-object v6, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    iget-object v11, v6, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_4
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34

    iget-object v13, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v11, v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    const-string/jumbo v14, "{"

    const-string v15, ""

    const/4 v8, 0x5

    if-ge v13, v8, :cond_7

    :goto_6
    move-object v8, v7

    goto/16 :goto_a

    :cond_7
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v8, v13}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "::cue"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    iget v8, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object v8, v15

    goto :goto_a

    :cond_a
    const-string v8, "("

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v13, v11, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    move/from16 v16, v4

    :goto_7
    if-ge v8, v13, :cond_c

    if-nez v16, :cond_c

    iget-object v10, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v8, 0x1

    aget-byte v8, v10, v8

    int-to-char v8, v8

    const/16 v10, 0x29

    if-ne v8, v10, :cond_b

    move v8, v9

    goto :goto_8

    :cond_b
    move v8, v4

    :goto_8
    move/from16 v10, v16

    move/from16 v16, v8

    move v8, v10

    const/4 v10, 0x2

    goto :goto_7

    :cond_c
    add-int/lit8 v8, v8, -0x1

    iget v10, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v10

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v8, v10}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_d
    move-object v8, v7

    :goto_9
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ")"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    :goto_a
    if-eqz v8, :cond_32

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_1b

    :cond_f
    new-instance v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v15, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    iput-object v15, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v13, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    iput-object v15, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    iput-object v7, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_d

    :cond_10
    const/16 v13, 0x5b

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v5, :cond_12

    sget-object v14, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    :cond_11
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_12
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v7, "\\."

    invoke-virtual {v8, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v4

    const/16 v13, 0x23

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v5, :cond_13

    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    goto :goto_b

    :cond_13
    iput-object v8, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    :goto_b
    array-length v8, v7

    if-le v8, v9, :cond_15

    array-length v8, v7

    array-length v13, v7

    if-gt v8, v13, :cond_14

    move v13, v9

    goto :goto_c

    :cond_14
    move v13, v4

    :goto_c
    invoke-static {v13}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    invoke-static {v7, v9, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v8, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    :cond_15
    :goto_d
    move v7, v4

    const/4 v8, 0x0

    :goto_e
    const-string/jumbo v13, "}"

    if-nez v7, :cond_30

    iget v7, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    goto :goto_f

    :cond_16
    move v14, v4

    goto :goto_10

    :cond_17
    :goto_f
    move v14, v9

    :goto_10
    if-nez v14, :cond_2f

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseIdentifier(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    goto/16 :goto_1a

    :cond_18
    const-string v4, ":"

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_1a

    :cond_19
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_11
    const-string v9, ";"

    if-nez v5, :cond_1d

    iget v0, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move/from16 v18, v5

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1a

    const/4 v0, 0x0

    goto :goto_13

    :cond_1a
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v5, v18

    goto :goto_11

    :cond_1c
    :goto_12
    invoke-virtual {v11, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    goto :goto_11

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_2f

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    iget v4, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_14
    const-string v4, "color"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontColor:I

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    goto/16 :goto_1a

    :cond_20
    const/4 v4, 0x1

    const-string v5, "background-color"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->backgroundColor:I

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    goto/16 :goto_1a

    :cond_21
    const-string/jumbo v5, "ruby-position"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "over"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    goto/16 :goto_1a

    :cond_22
    const-string/jumbo v4, "under"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    goto/16 :goto_1a

    :cond_23
    const-string/jumbo v4, "text-combine-upright"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "all"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "digits"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    goto/16 :goto_1a

    :cond_26
    const-string/jumbo v4, "text-decoration"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, "underline"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v4, 0x1

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    goto/16 :goto_1a

    :cond_27
    const-string v4, "font-family"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_28
    const-string v4, "font-weight"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "bold"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v4, 0x1

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    goto/16 :goto_1a

    :cond_29
    const/4 v4, 0x1

    const-string v5, "font-style"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "italic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    goto/16 :goto_1a

    :cond_2a
    const-string v4, "font-size"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid font-size: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WebvttCssParser"

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2b
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_17
    const/4 v0, -0x1

    goto :goto_18

    :sswitch_0
    const-string/jumbo v0, "px"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_17

    :cond_2c
    const/4 v0, 0x2

    goto :goto_18

    :sswitch_1
    const-string v0, "em"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v0, 0x1

    goto :goto_18

    :sswitch_2
    const-string v0, "%"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_17

    :cond_2e
    const/4 v0, 0x0

    :goto_18
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    goto :goto_19

    :pswitch_1
    const/4 v0, 0x1

    const/4 v5, 0x2

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    goto :goto_19

    :pswitch_2
    const/4 v0, 0x1

    const/4 v5, 0x3

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    :goto_19
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    :cond_2f
    :goto_1a
    move-object/from16 v0, p0

    move v7, v14

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_e

    :cond_30
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_5

    :cond_32
    :goto_1b
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_33
    :goto_1c
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_34
    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v5, 0x3

    if-ne v6, v5, :cond_33

    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    const/4 v7, 0x0

    goto :goto_1d

    :cond_37
    sget-object v5, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v7, 0x0

    invoke-static {v7, v6, v2, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v7

    goto :goto_1d

    :cond_38
    const/4 v7, 0x0

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_1d

    :cond_39
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v7

    :cond_3a
    :goto_1d
    if-eqz v7, :cond_33

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    new-array v1, v1, [J

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    mul-int/lit8 v2, v4, 0x2

    iget-object v5, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v5, [J

    iget-wide v6, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    aput-wide v6, v5, v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-wide v6, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->endTimeUs:J

    aput-wide v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3c
    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->toCuesWithTiming(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 4

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Dump ERROR Stack Trace"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraFsm"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v3, 0xa

    invoke-direct {v2, p0, p1, v1, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    return p0

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public setupPortraitBokeh()V
    .locals 10

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-enter v0

    :try_start_0
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehLevelError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    if-eqz v4, :cond_2

    aget v4, v4, v7

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    :cond_2
    aget v4, v1, v7

    aget v6, v3, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :goto_1
    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v3, v3, v7

    aget v1, v1, v7

    monitor-enter v0

    :try_start_2
    sget-object v4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMinLevel:I

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->updateIconsVisibility$1$1()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_6

    array-length v0, p0

    if-lez v0, :cond_4

    aget v7, p0, v7

    :cond_4
    if-ne v7, v2, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_6

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/room/concurrent/FileLock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pair{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public usedContainer(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Landroidx/collection/MutableObjectList;

    if-eqz p1, :cond_1

    check-cast p0, Landroidx/collection/MutableObjectList;

    iget-object p1, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/MutableObjectList;->_size:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p1, p0

    const-string p1, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public zah(ZLcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PermissionCallback;

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzi;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/google/android/play/core/appupdate/zzr;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzt;)V

    return-object v1
.end method
