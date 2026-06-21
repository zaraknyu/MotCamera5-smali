.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final displayFLashSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public isDisplayFlash:Z

.field public final viewModeChangeListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_FULL_SCREEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_DUAL_PANE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->viewModeChangeListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x17

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->displayFLashSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getShouldLoad()Z
    .locals 0

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GALLERY_COMPOSE_INSERT_DATA:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    check-cast p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->viewModeChangeListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final registerListeners(Z)V
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->displayFLashSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GALLERY_COMPOSE_INSERT_DATA:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "getValue(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->isDisplayFlash:Z

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez p0, :cond_1

    new-instance p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void

    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GALLERY_COMPOSE_INSERT_DATA:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez p0, :cond_3

    new-instance p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 10

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_DUAL_PANE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_FULL_SCREEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "COMPOSE_GALLERY_TRIGGER_TYPE"

    const-string v5, "COMPOSE_GALLERY_ENABLE_TOUCH"

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->viewModeChangeListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->MODE_CHANGE:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "COMPOSE_GALLERY_VIDEO_RECORDING"

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v7, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "COMPOSE_GALLERY_PHOTO_BOTH_CAPTURING"

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->TIMER:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0, v9, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    const-string p1, "CANCELLED"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->TIMER:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v9, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->MEDIA_SAVE:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v9, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->MODE_CHANGE:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->registerListeners(Z)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "OPEN_GALLERY_TRIGGER_BY_GALLERY_COMPOSE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "COMPOSE_GALLERY_LAUNCH"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->registerListeners(Z)V

    return-void

    :cond_e
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->CAPTURE:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    return-void

    :cond_f
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v7, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_10

    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method
