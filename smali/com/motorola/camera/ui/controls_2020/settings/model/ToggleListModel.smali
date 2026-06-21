.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_GESTURE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_SMILE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final Companion:Lcom/google/mlkit/common/internal/zzb;

.field public static final enum EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SMART_COMPOSITION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum TAP_ANYWHERE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum VIDEO_AUTO_FPS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final summary:Ljava/lang/Integer;

.field public final title:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const-string v1, "INSTANT_REVIEW"

    const/4 v2, 0x0

    const v4, 0x7f1204a3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const-string v2, "AUTO_SMILE_CAPTURE"

    const/4 v3, 0x1

    const v5, 0x7f120494

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const-string v3, "AUTO_GESTURE_CAPTURE"

    const/4 v4, 0x2

    const v6, 0x7f120488

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_GESTURE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const-string v4, "AIR_GESTURE_VIDEO"

    const/4 v5, 0x3

    const v7, 0x7f120487

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const-string v5, "SMART_COMPOSITION"

    const/4 v6, 0x4

    const v8, 0x7f120493

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SMART_COMPOSITION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const-string v6, "SHOT_OPTIMIZATION"

    const/4 v7, 0x5

    const v9, 0x7f120492

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v12, 0x0

    const/16 v13, 0x18

    const-string v7, "GOOGLE_LENS"

    const/4 v8, 0x6

    const v10, 0x7f12048a

    invoke-direct/range {v6 .. v13}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v13, 0x0

    const/16 v14, 0x1c

    const-string v8, "HDR"

    const/4 v9, 0x7

    const v11, 0x7f120497

    invoke-direct/range {v7 .. v14}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const-string v9, "AUTO_MACRO"

    const/16 v10, 0x8

    const v12, 0x7f120495

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f12029f

    goto :goto_0

    :cond_0
    const v10, 0x7f1202ad

    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f1202a0

    goto :goto_1

    :cond_1
    const v10, 0x7f1202a1

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v10, "FRONT_MIRROR"

    const/16 v11, 0x9

    const v13, 0x7f1204b7

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v16, 0x0

    const/16 v17, 0x1c

    const-string v11, "EFFICIENT_VIDEO"

    const/16 v12, 0xa

    const v14, 0x7f1204d6

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const-string v12, "AUDIO_ZOOM"

    const/16 v13, 0xb

    const v15, 0x7f1204d1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v18, 0x0

    const/16 v19, 0x1c

    const-string v13, "AUDIO_NOISE_CANCELLATION"

    const/16 v14, 0xc

    const v16, 0x7f1204d0

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-boolean v14, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoAutoFpsTimer()I

    move-result v14

    if-ltz v14, :cond_2

    const v14, 0x7f120285

    goto :goto_2

    :cond_2
    const v14, 0x7f1202a7

    goto :goto_2

    :cond_3
    const v14, 0x7f120286

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0xc

    const-string v14, "VIDEO_AUTO_FPS"

    const/16 v15, 0xd

    const v17, 0x7f1204d3

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->VIDEO_AUTO_FPS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v20, 0x0

    const/16 v21, 0x1c

    const-string v15, "AUTO_FOCUS_TRACING"

    const/16 v16, 0xe

    const v18, 0x7f1204d2

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v18, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v15

    if-eqz v15, :cond_4

    const v15, 0x7f1202c7

    goto :goto_3

    :cond_4
    const v15, 0x7f1202c6

    :goto_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x8

    move-object/from16 v15, v16

    const-string v16, "TAP_ANYWHERE"

    const/16 v17, 0xf

    const v19, 0x7f12049b

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->TAP_ANYWHERE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v19, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v22, 0x0

    const/16 v23, 0x1c

    const-string v17, "SHUTTER_SOUND"

    const/16 v18, 0x10

    const v20, 0x7f12049a

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v17, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v23, 0x0

    const/16 v24, 0x1c

    const-string v18, "GRID"

    const/16 v19, 0x11

    const v21, 0x7f120496

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v21, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v24, 0x0

    const/16 v25, 0x1c

    const-string v19, "LEVELER"

    const/16 v20, 0x12

    const v22, 0x7f120499

    invoke-direct/range {v18 .. v25}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    new-instance v19, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v22, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v25, 0x0

    const/16 v26, 0x1c

    const-string v20, "KEEP_LAST_MODE"

    const/16 v21, 0x13

    const v23, 0x7f120498

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v19, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v20, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v26, 0x0

    const/16 v27, 0x1c

    const-string v21, "LOCATION"

    const/16 v22, 0x14

    const v24, 0x7f1204bf

    invoke-direct/range {v20 .. v27}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v20, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v21}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p5, v1

    :cond_0
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1

    move-object p7, v1

    goto :goto_0

    :cond_1
    move-object p7, p6

    :goto_0
    const/4 p6, 0x0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 6
    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    .line 7
    iput-object p7, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object v0
.end method
