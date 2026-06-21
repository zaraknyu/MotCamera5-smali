.class public final Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final REMOVE_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public final envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public expectedSlowMotionFileName:Ljava/lang/String;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public shouldKeepHiddenByLux:Z

.field public shouldKeepHiddenByRemoveStates:Z

.field public slowMotionData:Lcom/motorola/camera/CameraData;

.field public slowMotionError:Z

.field public slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

.field public final slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

.field public superSlowMotionInstruction:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->REMOVE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x16

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->superSlowMotionInstruction:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->superSlowMotionInstruction:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v2, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void

    :cond_0
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->REMOVE_STATES:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    return-void

    :cond_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    return-void

    :cond_2
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_3
    iput-boolean v8, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void

    :cond_8
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_9

    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    return-void

    :cond_9
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    goto :goto_1

    :cond_a
    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v9

    :cond_c
    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    return-void

    :cond_d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_f
    return-void

    :cond_10
    :goto_3
    sget-object v1, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "getInstance(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "getFilesDir(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {v1, v3, v4}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z

    move-result v1

    const-string v5, "SuperSlowMotionComponent"

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionError:Z

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Not enough internal space for Super Slow Motion: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_12
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_14

    iget-object v11, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    const/16 v2, 0x3c0

    if-eqz v11, :cond_13

    new-instance v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "getFileName(...)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v13

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v15, v3, v5

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v17

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v1

    div-int v18, v2, v1

    invoke-direct/range {v10 .. v18}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;-><init>(Lcom/motorola/camera/storage/MediaFile;Ljava/lang/String;JJII)V

    goto :goto_5

    :cond_13
    const-string/jumbo v1, "saveSuperSlowMotion: SlowMotion original file is missing"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    :goto_5
    if-eqz v10, :cond_14

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v3}, Lcom/motorola/camera/storage/MediaFile;->toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object v3

    const-string v4, "com.motorola.superslowmotion.intent.mediaFile"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.motorola.superslowmotion.intent.videoName"

    iget-object v4, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.motorola.superslowmotion.intent.videoDate"

    iget-wide v4, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.motorola.superslowmotion.intent.targetVideoDate"

    iget-wide v4, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.motorola.superslowmotion.intent.videoFrameRate"

    iget v4, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v3

    div-int/2addr v2, v3

    const-string v3, "com.motorola.superslowmotion.intent.slowDownRate"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v3, 0x13

    invoke-direct {v2, v1, v3, v8, v9}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v2}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_14
    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    return-void
.end method

.method public final trySlowMotionReady(I)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SLOW_MOTION_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :catch_0
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "SuperSlowMotionComponent"

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Slow motion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " still not in MediaStore, attempt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in MediaStore"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1200d3

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v2, p1, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
