.class public final synthetic Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/InvalidationTracker;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->TAG:Ljava/lang/String;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->allowClick:Z

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/MotoFeedbackHelper;->createFeedbackIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-direct {v0}, Lcom/motorola/camera/ui/compose/Dimensions;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v1, Lcom/motorola/camera/ui/compose/CustomColors;

    const-wide/16 v18, 0x0

    const v20, 0x7fffff

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/motorola/camera/ui/compose/CustomColors;-><init>(JJJJJJJJJI)V

    return-object v1

    :pswitch_b
    sget v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    return-object v0

    :pswitch_c
    const-string v0, "execute error"

    return-object v0

    :pswitch_d
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/motorola/camera5/contentai/ModelContentProvider;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    const-string v4, "ModelContentProvider"

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera5/contentai/ModelContentProvider;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    :try_start_0
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Unable to list assets"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_0

    const-string v1, "listOfAssets is null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    const-string v6, "gesture_auto_capture_tflite_model"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/motorola/camera5/contentai/ModelContentProvider;->sModelCodeToHashMap:Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera5/contentai/BuildConfig;->MOT_MODEL_HASH_MAP:Lcom/motorola/camera/IqConfigManager$1;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Found Gesture algorithm model: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    const-string v0, "context is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null. Have you called init?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f12066d

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f12066c

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f12066b

    goto :goto_4

    :cond_7
    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f12066a

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f120668

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f120664

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f120666

    goto :goto_4

    :cond_b
    sget-object v3, Lcom/motorola/camera/VideoFormat;->QHD_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x7f120667

    goto :goto_4

    :cond_c
    sget-object v3, Lcom/motorola/camera/VideoFormat;->VGA_SIZES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f12066e

    goto :goto_4

    :cond_d
    const v3, 0x7f120669

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    return-object v0

    :pswitch_f
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0xf0

    const/16 v8, 0x78

    const/16 v9, 0x1e

    if-eqz v6, :cond_16

    if-nez v4, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_12

    const v4, 0x7f080278

    goto/16 :goto_10

    :cond_12
    :goto_6
    if-nez v4, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_14

    const v4, 0x7f080276

    goto/16 :goto_10

    :cond_14
    :goto_7
    if-nez v4, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_10

    const v4, 0x7f080277

    goto/16 :goto_10

    :cond_16
    sget-object v6, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/16 v10, 0x3c

    if-eqz v6, :cond_22

    if-nez v4, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v11, 0x18

    if-ne v6, v11, :cond_18

    const v4, 0x7f080271

    goto/16 :goto_10

    :cond_18
    :goto_8
    if-nez v4, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_1a

    const v4, 0x7f080273

    goto/16 :goto_10

    :cond_1a
    :goto_9
    if-nez v4, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_1c

    const v4, 0x7f080274

    goto/16 :goto_10

    :cond_1c
    :goto_a
    if-nez v4, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_1e

    const v4, 0x7f080270

    goto/16 :goto_10

    :cond_1e
    :goto_b
    if-nez v4, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_20

    const v4, 0x7f080272

    goto/16 :goto_10

    :cond_20
    :goto_c
    if-nez v4, :cond_21

    goto/16 :goto_5

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x3c0

    if-ne v4, v6, :cond_10

    const v4, 0x7f080275

    goto/16 :goto_10

    :cond_22
    sget-object v6, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    if-nez v4, :cond_23

    goto :goto_d

    :cond_23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_24

    const v4, 0x7f080269

    goto :goto_10

    :cond_24
    :goto_d
    if-nez v4, :cond_25

    goto/16 :goto_5

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_10

    const v4, 0x7f08026a

    goto :goto_10

    :cond_26
    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    if-nez v4, :cond_27

    goto :goto_e

    :cond_27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_28

    const v4, 0x7f08026c

    goto :goto_10

    :cond_28
    :goto_e
    if-nez v4, :cond_29

    goto :goto_f

    :cond_29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_2a

    const v4, 0x7f08026d

    goto :goto_10

    :cond_2a
    :goto_f
    if-nez v4, :cond_2b

    goto/16 :goto_5

    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_10

    const v4, 0x7f08026b

    goto :goto_10

    :cond_2c
    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const v4, 0x7f08026e

    goto :goto_10

    :cond_2d
    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f08026f

    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2e
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    return-object v0

    :pswitch_10
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->Companion:Lcom/google/android/gms/dynamite/zzf;

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2f

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "toUpperCase(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    if-nez v2, :cond_30

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    goto :goto_11

    :cond_30
    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    const-string v1, "Scene"

    const-string v3, "Platform not found: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_11
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_12
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_13
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_14
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/QcMmcamSceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_15
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/QcChiSceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_16
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_12

    :pswitch_17
    new-instance v0, Lcom/motorola/camera/scenedetection/factory/EmptySceneFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_12
    return-object v0

    :pswitch_18
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    monitor-enter v2

    :try_start_2
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v4, 0x7f080327

    const v5, 0x7f120342

    invoke-direct {v2, v4, v5, v1}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v4, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v5, 0x7f110024

    const v6, 0x7f120340

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v3, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v5, 0x7f080326

    const v6, 0x7f120341

    invoke-direct {v3, v5, v6, v1}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    filled-new-array {v2, v4, v3}, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    invoke-direct {v2, v1, v1, v1}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object v0

    :pswitch_1a
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0

    :pswitch_1b
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-array v3, v1, [Lkotlin/reflect/KClass;

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v2, v3, v4, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_1c
    const-string v0, "com.motorola.camera.background.common.Priority"

    invoke-static {}, Lcom/motorola/camera/background/common/Priority;->values()[Lcom/motorola/camera/background/common/Priority;

    move-result-object v1

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v2

    :pswitch_1d
    const-string v0, "com.motorola.camera.background.common.ReturnCode"

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v1

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v2

    :pswitch_1e
    const-string v0, "com.motorola.camera.background.common.ReturnCode"

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v1

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v2

    :pswitch_1f
    :try_start_3
    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getThreadSessionMethod$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "beginTransaction"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/database/sqlite/SQLiteTransactionListener;

    const-class v5, Landroid/os/CancellationSignal;

    filled-new-array {v3, v4, v3, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_32
    return-object v2

    :pswitch_20
    :try_start_4
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "getThreadSession"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v0

    :catchall_2
    return-object v2

    :pswitch_21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CompositionLocal LocalLifecycleOwner not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method
