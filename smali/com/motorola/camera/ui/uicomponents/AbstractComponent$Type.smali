.class public final enum Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;


# instance fields
.field public final mOrder:I

.field public final mParentResId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 74

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v0, 0x7f0a036d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "CAMERA_VIEW"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v0, 0x7f0a00fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "COMPOSE_MANAGER"

    invoke-direct {v2, v3, v4, v0, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v0, 0x7f0a00b8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "CAMERA_SURFACE_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v0, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v5, 0x7f0a0486

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "TOAST"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v5, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v7, 0x7f0a02a3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "DIALOG_POPUP"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v7, v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v7, 0x7f0a041a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "STAGE1_UI"

    const/4 v9, 0x5

    invoke-direct {v4, v8, v9, v7, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v8, 0x7f0a00bf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FOLD_CAPTURE_BAR_GUIDE_LINE"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v9, 0x7f0a00b7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "CAPTURE_BAR_CAMERA_SWITCH"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v9, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v10, 0x7f0a00b5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "CAPTURE_BAR_GALLERY"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v10, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v11, 0x7f0a02ce

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "SMALL_SCREEN_MODES_MENU"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v11, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v12, 0x7f0a00c7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "CAPTURE_BAR_SHUTTER"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v12, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v13, 0x7f0a0159

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "DUAL_CAPTURE_CONTROL_BAR"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v13, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v14, 0x7f0a00c3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "PERFECT_ME_CAPTURE_CONTROL_BAR"

    move-object/from16 v16, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    new-instance v14, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v0, 0x7f0a0071

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "ANIMATED_TOAST"

    const/16 v15, 0xd

    invoke-direct {v14, v6, v15, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v15, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v0, 0x7f0a025b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "INDICATOR_BAR"

    move-object/from16 v17, v1

    const/16 v1, 0xe

    invoke-direct {v15, v6, v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v1, 0x7f0a010f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "CONTROL_PANEL_TOUCH_OBSERVABLE"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v0, v6, v2, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const-string v2, "CONTROL_BAR_TOAST_MANAGER"

    const/16 v6, 0x10

    move-object/from16 v19, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v6, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const-string v6, "INACTIVITY"

    move-object/from16 v20, v1

    const/16 v1, 0x11

    invoke-direct {v2, v6, v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const-string v6, "MEDIA_CONTROL"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v1, v6, v2, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0253

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "IMAGE_PREFERENCE_SELECTOR"

    move-object/from16 v22, v1

    const/16 v1, 0x13

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0355

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "PHOTO_BOOTH"

    move-object/from16 v23, v0

    const/16 v0, 0x14

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a031d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "ONLINE_HELP"

    move-object/from16 v24, v1

    const/16 v1, 0x15

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0374

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "PRO_MODE_BAR"

    move-object/from16 v25, v0

    const/16 v0, 0x16

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "TALKBACK"

    move-object/from16 v26, v1

    const/16 v1, 0x17

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a026d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "INSTRUCTIONAL_TEXT_BLOCK"

    move-object/from16 v27, v0

    const/16 v0, 0x18

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0477

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "TIMER_COUNTDOWN"

    move-object/from16 v28, v1

    const/16 v1, 0x19

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a00ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "CLI_ONBOARD"

    move-object/from16 v29, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SCENE_DETECTION_DEBUG"

    move-object/from16 v30, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a014a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "DISPLAY_CUTOUT_CIRCLE"

    move-object/from16 v31, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "CONTROL_PANEL"

    move-object/from16 v32, v1

    const/16 v1, 0x1d

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a00ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "CAPTURE_CONTROL_BUTTON"

    move-object/from16 v33, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0532

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "ZOOM_TOGGLE"

    move-object/from16 v34, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0111

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "UI_GUIDELINES"

    move-object/from16 v35, v0

    const/16 v0, 0x20

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a04e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_CAPTURE_BAR_CONTROLS"

    move-object/from16 v36, v1

    const/16 v1, 0x21

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a01ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "FACE_BEAUTY_CONTROL_BAR"

    move-object/from16 v37, v0

    const/16 v0, 0x22

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a02e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "MOTION_CAPTURE_CONTROL_BAR"

    move-object/from16 v38, v1

    const/16 v1, 0x23

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0473

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "TIME_LAPSE_SLIDER_BAR"

    move-object/from16 v39, v0

    const/16 v0, 0x24

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a050d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_PORTAIT_SLIDER_BAR"

    move-object/from16 v40, v1

    const/16 v1, 0x25

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "PERFECT_ME_SLIDER_BAR"

    move-object/from16 v41, v0

    const/16 v0, 0x26

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a050f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_PORTAIT_TOAST"

    move-object/from16 v42, v1

    const/16 v1, 0x27

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a02ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "MIRROR_CONTROL_PANEL"

    move-object/from16 v43, v0

    const/16 v0, 0x28

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SELECT_COLOR_SLIDER_BAR"

    move-object/from16 v44, v1

    const/16 v1, 0x29

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a035e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "PORTRAIT_BOKEH_SLIDER_BAR"

    move-object/from16 v45, v0

    const/16 v0, 0x2a

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0290

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "FILTER_COMPONENT"

    move-object/from16 v46, v1

    const/16 v1, 0x2b

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0294

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "LONG_EXPOSURE_COMPONENT"

    move-object/from16 v47, v0

    const/16 v0, 0x2c

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a015a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "DUAL_CAPTURE_LAYOUT_BAR"

    move-object/from16 v48, v1

    const/16 v1, 0x2d

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "DUAL_CAPTURE_AUDIO_LENS_SWITCH"

    move-object/from16 v49, v0

    const/16 v0, 0x2e

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0262

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "INDICATION_BAR_VIDEO_RECORDING"

    move-object/from16 v50, v1

    const/16 v1, 0x2f

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SCENE_DETECTION_OPT_IN"

    move-object/from16 v51, v0

    const/16 v0, 0x30

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SCAN_BAR_COMPONENT"

    move-object/from16 v52, v1

    const/16 v1, 0x31

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SCAN_BAR_CARD_COMPONENT"

    move-object/from16 v53, v0

    const/16 v0, 0x32

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "DUAL_CAPTURE_PREVIEW_SWAP"

    move-object/from16 v54, v1

    const/16 v1, 0x33

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "APP_INFO"

    move-object/from16 v55, v0

    const/16 v0, 0x34

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "UPDATE_PROMPT"

    move-object/from16 v56, v1

    const/16 v1, 0x35

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0122

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "CUTOUT_MODE"

    move-object/from16 v57, v0

    const/16 v0, 0x36

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a02ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "MASK_UI"

    move-object/from16 v58, v1

    const/16 v1, 0x37

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "BANNER_PROMPT"

    move-object/from16 v59, v0

    const/16 v0, 0x38

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SUPER_SLOW_MOTION"

    move-object/from16 v60, v1

    const/16 v1, 0x39

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0285

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "LEVELER"

    move-object/from16 v61, v0

    const/16 v0, 0x3a

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a04bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "TUTORIAL"

    move-object/from16 v62, v1

    const/16 v1, 0x3b

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a04b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "TUTORIAL_MODE"

    move-object/from16 v63, v0

    const/16 v0, 0x3c

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "PANO_TUTORIAL"

    move-object/from16 v64, v1

    const/16 v1, 0x3d

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a03c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SCENE_DETECTION_PILL"

    move-object/from16 v65, v0

    const/16 v0, 0x3e

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "AUTO_FOCUS_TRACKING_ROI"

    move-object/from16 v66, v1

    const/16 v1, 0x3f

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a01b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "FEATURE_LABEL"

    move-object/from16 v67, v0

    const/16 v0, 0x40

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a04e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_DV_BOARD"

    move-object/from16 v68, v1

    const/16 v1, 0x41

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a04ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_DV_TIMER"

    move-object/from16 v69, v0

    const/16 v0, 0x42

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_DV_TUTORIAL"

    move-object/from16 v70, v1

    const/16 v1, 0x43

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a0507

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VIDEO_NV_PROMPT"

    move-object/from16 v71, v0

    const/16 v0, 0x44

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a051e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VSTAB_IHC_BUTTON"

    move-object/from16 v72, v1

    const/16 v1, 0x45

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    const v2, 0x7f0a051d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "VSTAB_IHC_LUX_TOAST"

    move-object/from16 v73, v0

    const/16 v0, 0x46

    invoke-direct {v1, v6, v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    move-object/from16 v2, v71

    move-object/from16 v71, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v23

    move-object/from16 v23, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v32

    move-object/from16 v32, v35

    move-object/from16 v35, v38

    move-object/from16 v38, v41

    move-object/from16 v41, v44

    move-object/from16 v44, v47

    move-object/from16 v47, v50

    move-object/from16 v50, v53

    move-object/from16 v53, v56

    move-object/from16 v56, v59

    move-object/from16 v59, v62

    move-object/from16 v62, v65

    move-object/from16 v65, v68

    move-object/from16 v68, v2

    move-object v6, v4

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    move-object/from16 v16, v19

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v27, v30

    move-object/from16 v28, v31

    move-object/from16 v30, v33

    move-object/from16 v31, v34

    move-object/from16 v33, v36

    move-object/from16 v34, v37

    move-object/from16 v36, v39

    move-object/from16 v37, v40

    move-object/from16 v39, v42

    move-object/from16 v40, v43

    move-object/from16 v42, v45

    move-object/from16 v43, v46

    move-object/from16 v45, v48

    move-object/from16 v46, v49

    move-object/from16 v48, v51

    move-object/from16 v49, v52

    move-object/from16 v51, v54

    move-object/from16 v52, v55

    move-object/from16 v54, v57

    move-object/from16 v55, v58

    move-object/from16 v57, v60

    move-object/from16 v58, v61

    move-object/from16 v60, v63

    move-object/from16 v61, v64

    move-object/from16 v63, v66

    move-object/from16 v64, v67

    move-object/from16 v66, v69

    move-object/from16 v67, v70

    move-object/from16 v69, v72

    move-object/from16 v70, v73

    filled-new-array/range {v1 .. v71}, [Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    .line 6
    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    return-object v0
.end method
