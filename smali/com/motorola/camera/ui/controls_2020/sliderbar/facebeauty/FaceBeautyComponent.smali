.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public beautyToggle:Landroid/widget/ImageButton;

.field public currentFeature:I

.field public currentToningFeature:I

.field public disableClick:Z

.field public enterSingleShot:Z

.field public isShowSeek:Z

.field public isToningExpand:Z

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

.field public final notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public screenDensity:F

.field public seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

.field public seekText:Landroid/widget/TextView;

.field public stateHide:Z

.field public final toggleChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->toggleChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method

.method public static enableManual$default(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;Z)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->changeResource(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateChildrenState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateChildrenState(I)V

    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyUiData(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v4

    :goto_1
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_6

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v4

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v5, "fast-adjustment"

    invoke-static {v2, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->setFaceBeautyFeatures(ILjava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v4

    :goto_3
    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v5, 0x44

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->screenDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    if-eqz p1, :cond_a

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    return-void

    :cond_d
    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    :cond_f
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public static getFaceBeautyState()I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final animateShow()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final enableFaceBeauty(Z)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->stateHide:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowControlPanel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final enableSeek(IIIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-virtual {p4, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p4, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getSeekTranslationY(Z)F
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v3, 0x7f070061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f070156

    goto :goto_0

    :cond_0
    const p0, 0x7f070155

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v3, p0

    return v3

    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v3, p0

    return v3
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->screenDensity:F

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1, p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->updateTogglePosition$5(I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a01b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/motorola/camera/SecureDataHelper;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setOnItemClickListener(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a01b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a01b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a01b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v2, "mParentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {v2, v1, p0}, Landroidx/appcompat/widget/SearchView$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void
.end method

.method public final notifyFaceBeauty(Z)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFoldSplitChanged()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->toggleChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->updateTogglePosition$5(I)V

    return-void
.end method

.method public final setFaceBeautyState(I)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BEAUTY_PREVIEW_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->triggerFaceBeautyVideo(I)V

    return-void
.end method

.method public final setImageDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0801b0

    goto :goto_1

    :cond_1
    const p1, 0x7f0801af

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Lcom/motorola/camera/fsm/camera/UseCase;Ljava/lang/String;Z)V

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_PORTRAIT:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Lcom/motorola/camera/fsm/camera/UseCase;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Lcom/motorola/camera/fsm/camera/UseCase;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->registerListeners(Z)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->registerListeners(Z)V

    return-void

    :cond_5
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    return-void

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, "TIMER"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    move v2, v3

    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;-><init>(ZZLcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    :cond_e
    return-void
.end method

.method public final triggerFaceBeautyVideo(I)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "SETTING"

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MODE"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "BEAUTY_STATE"

    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BEAUTY_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final updateTogglePosition$5(I)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    const v3, 0x7f07005f

    const/4 v4, 0x2

    const/16 v5, 0xb4

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isCliWithUltraWide(Z)Z

    move-result v7

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v5, :cond_3

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07009d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    if-ne p1, v5, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v8, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v8, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v8, v1

    goto :goto_1

    :cond_4
    move v1, v6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->setTextOrientation(I)V

    :cond_6
    const v1, 0x7f07008d

    const v2, 0x7f0700bf

    const/4 v7, 0x0

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/high16 v10, 0x43870000    # 270.0f

    const-string v11, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.facebeauty.FaceBeautyAdapter"

    if-eqz p1, :cond_11

    if-eq p1, v9, :cond_11

    if-eq p1, v5, :cond_7

    if-eq p1, v8, :cond_11

    goto/16 :goto_6

    :cond_7
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v6, :cond_b

    iget-object v12, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    if-eq p1, v9, :cond_9

    if-eq p1, v5, :cond_a

    if-eq p1, v8, :cond_8

    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_2

    :cond_9
    move v7, v8

    :cond_a
    :goto_2
    iput v7, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->degree:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getSeekTranslationY(Z)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliWithUltraWide(Z)Z

    move-result v0

    const v1, 0x7f0705ee

    const v2, 0x7f070154

    if-eqz v0, :cond_10

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    :goto_3
    sub-float/2addr v0, p1

    goto :goto_4

    :cond_10
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float/2addr p1, v2

    goto :goto_3

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    if-eq p1, v9, :cond_14

    if-eq p1, v5, :cond_12

    if-eq p1, v8, :cond_13

    :cond_12
    move v8, v7

    goto :goto_5

    :cond_13
    move v8, v9

    :cond_14
    :goto_5
    iput v8, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->degree:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v10}, Landroid/view/View;->setRotation(F)V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getSeekTranslationY(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_16
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    const/high16 v1, 0x43e10000    # 450.0f

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/16 p1, 0x168

    int-to-float p1, p1

    rem-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_17
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_18
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz p1, :cond_19

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_19
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1a
    :goto_6
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
