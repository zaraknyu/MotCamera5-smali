.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final Companion:Lcom/google/mlkit/common/internal/zze;

.field public static final enum SCREEN_MODE_ACTION_SHOT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_AI_GROUP_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_IHC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_LONG_EXPOSE_LIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_LONG_EXPOSE_STAR:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_LONG_EXPOSE_TRAFFIC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_LONG_EXPOSE_WATER:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_PERFECT_ME_CAPTURE:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_PERFECT_ME_OVERLAY:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_PHOTO_BOOTH:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_SMART_EIS:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_TILT_SHIFT_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_TILT_SHIFT_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_TILT_SHIFT_3:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_TILT_SHIFT_4:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_VIDEO_DV_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

.field public static final enum SCREEN_MODE_VIDEO_DV_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;


# instance fields
.field public final mBackgroundRes:I

.field public final mBackgroundStr:Ljava/lang/String;

.field public final mContent:I

.field public final mHasComparison:Z

.field public final mIcon:I

.field public final mIsVideo:Z

.field public final mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final mTitle:I


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MOTION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "FIRST_TIME_USE_MOTION_CAPTURE"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SCREEN_MODE_ACTION_SHOT"

    const/4 v2, 0x0

    const v3, 0x7f080374

    const v4, 0x7f080243

    const v5, 0x7f12045c

    const v6, 0x7f120621

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_ACTION_SHOT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_MACRO_TUTORIAL"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "SCREEN_MODE_MACRO"

    const/4 v3, 0x1

    const v4, 0x7f08037b

    const v5, 0x7f08022b

    const v6, 0x7f12045a

    const v7, 0x7f120628

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SCREEN_MODE_PHOTO_BOOTH"

    const/4 v4, 0x2

    const v5, 0x7f08037c

    const v6, 0x7f080231

    const v7, 0x7f120461

    const v8, 0x7f12062b

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PHOTO_BOOTH:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TILT_SHIFT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "FIRST_TIME_USE_TILT_SHIFT_TUTORIAL"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "SCREEN_MODE_TILT_SHIFT_1"

    const/4 v5, 0x3

    const v6, 0x7f08037f

    const v7, 0x7f08023d

    const v8, 0x7f12046a

    const v9, 0x7f120631

    const/4 v10, 0x1

    move-object v11, v12

    invoke-direct/range {v3 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v10, 0x7f120632

    const/4 v11, 0x0

    const-string v5, "SCREEN_MODE_TILT_SHIFT_2"

    const/4 v6, 0x4

    const v7, 0x7f080380

    const v8, 0x7f08023d

    const v9, 0x7f12046a

    invoke-direct/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object v13, v4

    sput-object v13, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v10, 0x7f120633

    const-string v5, "SCREEN_MODE_TILT_SHIFT_3"

    const/4 v6, 0x5

    const v7, 0x7f080381

    invoke-direct/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object v14, v4

    sput-object v14, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_3:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v10, 0x7f120634

    const-string v5, "SCREEN_MODE_TILT_SHIFT_4"

    const/4 v6, 0x6

    const v7, 0x7f080382

    invoke-direct/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object v15, v4

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_4:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v16, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LONG_EXPOSURE_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_LONG_EXPOSURE_TUTORIAL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "SCREEN_MODE_LONG_EXPOSE_TRAFFIC"

    const/16 v18, 0x7

    const v19, 0x7f080379

    const v20, 0x7f08022a

    const v21, 0x7f12063c

    const v22, 0x7f120626

    const/16 v23, 0x0

    move-object/from16 v24, v4

    invoke-direct/range {v16 .. v24}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object/from16 v25, v24

    sput-object v16, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_TRAFFIC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v17, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v23, 0x7f120627

    const/16 v24, 0x0

    const-string v18, "SCREEN_MODE_LONG_EXPOSE_WATER"

    const/16 v19, 0x8

    const v20, 0x7f08037a

    const v21, 0x7f08022a

    const v22, 0x7f12063d

    invoke-direct/range {v17 .. v25}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object/from16 v26, v17

    sput-object v26, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_WATER:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v17, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v23, 0x7f120624

    const-string v18, "SCREEN_MODE_LONG_EXPOSE_LIGHT"

    const/16 v19, 0x9

    const v20, 0x7f080377

    const v22, 0x7f12063a

    invoke-direct/range {v17 .. v25}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    move-object/from16 v27, v17

    sput-object v27, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_LIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v17, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v23, 0x7f120625

    const-string v18, "SCREEN_MODE_LONG_EXPOSE_STAR"

    const/16 v19, 0xa

    const v20, 0x7f080378

    const v22, 0x7f12063b

    invoke-direct/range {v17 .. v25}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v17, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_STAR:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v28, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_VSTAB_IHC"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v31, 0x0

    const-string v29, "SCREEN_MODE_IHC"

    const/16 v30, 0xb

    const-string/jumbo v32, "tutorial_video_horizon.mp4"

    const v33, 0x7f080292

    const v34, 0x7f120639

    const v35, 0x7f120623

    const/16 v36, 0x1

    const/16 v37, 0x1

    move-object/from16 v38, v4

    invoke-direct/range {v28 .. v38}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v28, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_IHC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v29, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SMART_EIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_SMART_EIS"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v32, 0x0

    const-string v30, "SCREEN_MODE_SMART_EIS"

    const/16 v31, 0xc

    const-string/jumbo v33, "tutorial_video_stabilization.mp4"

    const v34, 0x7f08029e

    const v35, 0x7f12063f

    const v36, 0x7f12062e

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-object/from16 v39, v4

    invoke-direct/range {v29 .. v39}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v29, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SMART_EIS:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v30, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v31, "SCREEN_MODE_SPOT_COLOR_PHOTO"

    const/16 v32, 0xd

    const v33, 0x7f08037e

    const v34, 0x7f08023c

    const v35, 0x7f120468

    const v36, 0x7f12062f

    move-object/from16 v38, v4

    invoke-direct/range {v30 .. v38}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v30, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v31, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v32, "SCREEN_MODE_SPOT_COLOR_VIDEO"

    const/16 v33, 0xe

    const v34, 0x7f08037e

    const v35, 0x7f080360

    const v36, 0x7f120469

    const v37, 0x7f120630

    const/16 v38, 0x0

    move-object/from16 v39, v4

    invoke-direct/range {v31 .. v39}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v31, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v32, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_INTRO_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_INTRO_VIDEO_DV"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v33, "SCREEN_MODE_VIDEO_DV_1"

    const/16 v34, 0xf

    const v35, 0x7f080390

    const v36, 0x7f0802a1

    const v37, 0x7f1202ce

    const v38, 0x7f120635

    const/16 v39, 0x0

    move-object/from16 v40, v4

    invoke-direct/range {v32 .. v40}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v32, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_VIDEO_DV_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v33, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v39, 0x7f120636

    move-object/from16 v41, v40

    const/16 v40, 0x0

    const-string v34, "SCREEN_MODE_VIDEO_DV_2"

    const/16 v35, 0x10

    const v36, 0x7f080391

    const v37, 0x7f0802a1

    const v38, 0x7f120640

    invoke-direct/range {v33 .. v41}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v33, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_VIDEO_DV_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    const v10, 0x7f120622

    const/4 v11, 0x1

    const-string v5, "SCREEN_MODE_AI_GROUP_PHOTO"

    const/16 v6, 0x11

    const v7, 0x7f080375

    const v8, 0x7f080222

    const v9, 0x7f120452

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v18, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_AI_GROUP_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v34, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PERFECT_ME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_PERFECT_ME"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v37, 0x0

    const-string v35, "SCREEN_MODE_PERFECT_ME_OVERLAY"

    const/16 v36, 0x12

    const-string/jumbo v38, "tutorial_perfect_me_overlay.mp4"

    const v39, 0x7f08029d

    const v40, 0x7f12063e

    const v41, 0x7f12062a

    const/16 v42, 0x0

    const/16 v43, 0x1

    move-object/from16 v44, v4

    invoke-direct/range {v34 .. v44}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v34, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PERFECT_ME_OVERLAY:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    new-instance v35, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-object/from16 v45, v44

    const/16 v44, 0x1

    const/16 v38, 0x0

    const-string v36, "SCREEN_MODE_PERFECT_ME_CAPTURE"

    const/16 v37, 0x13

    const-string/jumbo v39, "tutorial_perfect_me_capture.mp4"

    const v40, 0x7f08029d

    const v41, 0x7f12063e

    const v42, 0x7f120629

    const/16 v43, 0x0

    invoke-direct/range {v35 .. v45}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v35, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PERFECT_ME_CAPTURE:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-object v4, v3

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v11, v17

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    move-object/from16 v19, v34

    move-object/from16 v20, v35

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v20}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->Companion:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 11

    const/4 v9, 0x0

    .line 1
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;-><init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIZZLcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mBackgroundRes:I

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mBackgroundStr:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mIcon:I

    .line 6
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mTitle:I

    .line 7
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mContent:I

    .line 8
    iput-boolean p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mHasComparison:Z

    .line 9
    iput-boolean p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mIsVideo:Z

    .line 10
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    return-object v0
.end method
