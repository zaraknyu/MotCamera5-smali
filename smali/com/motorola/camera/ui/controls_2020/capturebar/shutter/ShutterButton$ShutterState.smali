.class public final enum Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_AI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_BURST_SHOT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_BURST_SHOT_STOP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_NIGHT_VISION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_NIGHT_VISION_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_NIGHT_VISION_SLOW:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_PROCESSING_AI_PERSONAL_STYLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum TIMER_ARC_LONG_EXPOSURE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_SLOW_MOTION_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_TIMELAPSE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_TIMELAPSE_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;


# instance fields
.field public final animRepeatCount:I

.field public final backgroundRes:I

.field public final captureAnimMaxFrame:I

.field public final captureAnimMinFrame:I

.field public final captureAnimSpeed:F

.field public final lottieJsonRes:I

.field public final modeEnterAnimMaxFrame:I

.field public final modeEnterAnimMinFrame:I

.field public final modeEnterAnimSpeed:F

.field public final modeExitAnimMaxFrame:I

.field public final modeExitAnimMinFrame:I

.field public final modeExitAnimSpeed:F

.field public final nextState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public final splashDrawableRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 73

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v11, 0x0

    const/16 v12, 0x3ff8

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f080282

    const/4 v4, -0x1

    const v5, 0x7f080286

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v12, 0x4

    const/16 v13, 0x2000

    const-string v2, "PHOTO"

    const/4 v3, 0x1

    const v4, 0x7f080282

    const v5, 0x7f110042

    const v6, 0x7f080286

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v9, 0x4

    const/4 v11, 0x4

    invoke-direct/range {v1 .. v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v13, 0x0

    const/16 v14, 0x3f80

    const-string v3, "PHOTO_PROCESSING"

    const/4 v4, 0x2

    const v5, 0x7f060483

    const v6, 0x7f110043

    const v7, 0x7f060483

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v10, 0x60

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    move-object/from16 v18, v2

    sput-object v18, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v3, "PHOTO_PROCESSING_AI_PERSONAL_STYLE"

    const/4 v4, 0x3

    const v6, 0x7f110044

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    move-object/from16 v19, v2

    sput-object v19, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING_AI_PERSONAL_STYLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v36, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v15, 0x5

    const/16 v16, 0xf

    const-string v2, "PHOTO_BURST_SHOT_STOP"

    const/4 v3, 0x4

    const v4, 0x7f080282

    const v5, 0x7f110041

    const v6, 0x7f080286

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x5

    const/16 v13, 0xf

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v17, v1

    move-object/from16 v1, v36

    invoke-direct/range {v1 .. v17}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    move-object/from16 v1, v17

    sput-object v36, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_BURST_SHOT_STOP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v20, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v34, 0x5

    const/16 v35, 0xf

    const-string v21, "PHOTO_BURST_SHOT"

    const/16 v22, 0x5

    const v23, 0x7f080282

    const v24, 0x7f110041

    const v25, 0x7f080286

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x5

    const/16 v29, 0x0

    const/high16 v30, -0x40800000    # -1.0f

    const/16 v31, 0x5

    const/16 v32, 0xf

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v36}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    sput-object v20, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_BURST_SHOT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v13, 0x5

    const/16 v14, 0x2000

    const-string v3, "PHOTO_AI"

    const/4 v4, 0x6

    const v5, 0x7f080281

    const v6, 0x7f11003d

    const v7, 0x7f080285

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_AI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v53, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v14, 0x0

    const/16 v15, 0x3f80

    const-string v4, "PHOTO_NIGHT_VISION_PROCESSING"

    const/4 v5, 0x7

    const v6, 0x7f080282

    const v7, 0x7f11003f

    const v8, 0x7f080287

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/16 v11, 0x5f

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, v53

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v53, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v37, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v51, 0x14

    const/16 v52, 0x1c

    const-string v38, "PHOTO_NIGHT_VISION"

    const/16 v39, 0x8

    const v40, 0x7f080282

    const v41, 0x7f11003e

    const v42, 0x7f080287

    const/high16 v43, 0x3f800000    # 1.0f

    const/16 v44, 0x0

    const/16 v45, 0x14

    const/16 v46, 0x0

    const/high16 v47, -0x40800000    # -1.0f

    const/16 v48, 0x14

    const/16 v49, 0x1c

    const/high16 v50, 0x3f800000    # 1.0f

    invoke-direct/range {v37 .. v53}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    move-object/from16 v9, v37

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v37, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v51, 0x3d

    const/16 v52, 0x44

    const-string v38, "PHOTO_NIGHT_VISION_SLOW"

    const/16 v39, 0x9

    const v41, 0x7f110040

    const/16 v45, 0x3c

    const/16 v48, 0x3d

    const/16 v49, 0x44

    invoke-direct/range {v37 .. v53}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    sput-object v37, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_SLOW:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v21, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v32, 0x0

    const/16 v33, 0x3f80

    const-string v22, "VIDEO_RECORDING"

    const/16 v23, 0xa

    const v24, 0x7f080282

    const v25, 0x7f110045

    const v26, 0x7f08028a

    const/high16 v27, -0x40800000    # -1.0f

    const/16 v28, 0x0

    const/16 v29, 0xa

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v21 .. v33}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v21, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v54, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v68, 0xb

    const/16 v69, 0x14

    const-string v55, "VIDEO"

    const/16 v56, 0xb

    const v57, 0x7f080282

    const v58, 0x7f110045

    const v59, 0x7f08028a

    const/high16 v60, 0x3f800000    # 1.0f

    const/16 v61, 0x0

    const/16 v62, 0xb

    const/16 v63, 0x0

    const/high16 v64, -0x40800000    # -1.0f

    const/16 v65, 0xb

    const/16 v66, 0x14

    const/high16 v67, 0x3f800000    # 1.0f

    move-object/from16 v70, v21

    invoke-direct/range {v54 .. v70}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    sput-object v54, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v22, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v33, 0x0

    const/16 v34, 0x3fc0

    const-string v23, "VIDEO_SLOW_MOTION_RECORDING"

    const/16 v24, 0xc

    const v25, 0x7f080283

    const v26, 0x7f110046

    const v27, 0x7f080288

    const/high16 v28, -0x40800000    # -1.0f

    const/16 v29, 0x0

    const/16 v30, 0x14

    invoke-direct/range {v22 .. v34}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v22, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v55, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v69, 0x15

    const/16 v70, 0x1e

    const-string v56, "VIDEO_SLOW_MOTION"

    const/16 v57, 0xd

    const v58, 0x7f080283

    const v59, 0x7f110046

    const v60, 0x7f080288

    const/high16 v61, 0x3f800000    # 1.0f

    const/16 v62, 0x0

    const/16 v63, 0x15

    const/16 v64, 0x0

    const/high16 v65, -0x40800000    # -1.0f

    const/16 v66, 0x15

    const/16 v67, 0x1e

    const/high16 v68, 0x3f800000    # 1.0f

    move-object/from16 v71, v22

    invoke-direct/range {v55 .. v71}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    sput-object v55, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v23, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v34, 0x0

    const/16 v35, 0x3fc0

    const-string v24, "VIDEO_TIMELAPSE_RECORDING"

    const/16 v25, 0xe

    const v26, 0x7f080284

    const v27, 0x7f110047

    const v28, 0x7f080289

    const/high16 v29, -0x40800000    # -1.0f

    const/16 v30, 0x0

    const/16 v31, 0x14

    invoke-direct/range {v23 .. v35}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v23, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v16, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v70, 0x15

    const/16 v71, 0x1e

    const-string v57, "VIDEO_TIMELAPSE"

    const/16 v58, 0xf

    const v59, 0x7f080284

    const v60, 0x7f110047

    const v61, 0x7f080289

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v63, 0x0

    const/16 v64, 0x15

    const/16 v65, 0x0

    const/high16 v66, -0x40800000    # -1.0f

    const/16 v67, 0x15

    const/16 v68, 0x1e

    const/high16 v69, 0x3f800000    # 1.0f

    move-object/from16 v56, v16

    move-object/from16 v72, v23

    invoke-direct/range {v56 .. v72}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    sput-object v16, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v17, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v49, 0x0

    const/16 v50, 0x3ffe

    const-string v39, "TIMER"

    const/16 v40, 0x10

    const v41, 0x7f08028c

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v38, v17

    invoke-direct/range {v38 .. v50}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v17, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v38, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v39, "TIMER_ARC_LONG_EXPOSURE"

    const/16 v40, 0x11

    const v41, 0x7f08028b

    invoke-direct/range {v38 .. v50}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIIII)V

    sput-object v38, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER_ARC_LONG_EXPOSURE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-object v7, v2

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    move-object/from16 v5, v36

    move-object/from16 v10, v37

    move-object/from16 v18, v38

    move-object/from16 v8, v53

    move-object/from16 v12, v54

    move-object/from16 v14, v55

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v18}, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->backgroundRes:I

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->lottieJsonRes:I

    .line 3
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->splashDrawableRes:I

    .line 4
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimSpeed:F

    .line 5
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimMinFrame:I

    .line 6
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimMaxFrame:I

    .line 7
    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->animRepeatCount:I

    .line 8
    iput p10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeEnterAnimSpeed:F

    .line 9
    iput p11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeEnterAnimMinFrame:I

    .line 10
    iput p12, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeEnterAnimMaxFrame:I

    .line 11
    iput p13, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimSpeed:F

    .line 12
    iput p14, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimMinFrame:I

    .line 13
    iput p15, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimMaxFrame:I

    move-object/from16 p1, p16

    .line 14
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->nextState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIFIIIIII)V
    .locals 20

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const v1, 0x7f060483

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    move v9, v1

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move v12, v3

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move/from16 v14, p10

    :goto_6
    and-int/lit16 v1, v0, 0x200

    const/16 v3, 0xe

    if-eqz v1, :cond_7

    move v15, v2

    goto :goto_7

    :cond_7
    move v15, v3

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move/from16 v17, v2

    goto :goto_8

    :cond_8
    move/from16 v17, p11

    :goto_8
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    move/from16 v18, v2

    goto :goto_9

    :cond_9
    move/from16 v18, v3

    :goto_9
    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 15
    invoke-direct/range {v3 .. v19}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;IIIIFIIIFIIFIILcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object v0
.end method
