.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final AUTO_LAUNCH_DATA:Ljava/util/List;

.field public static final BAR_CODE_ANIM_DURATION:J

.field public static final CLEAN_STATES:Landroid/util/ArraySet;

.field public static final DEFAULT_SIZE:F

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

.field public static final PIVOT_VALUE:F

.field public static final QR_CODE_TIMEOUT:J

.field public static final SHRINK_SIZE:F


# instance fields
.field public actionText:Landroid/widget/TextView;

.field public descriptionText:Landroid/widget/TextView;

.field public final handler:Landroid/os/Handler;

.field public isOtherComponentVisible:Z

.field public lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

.field public moreButton:Landroid/widget/ImageButton;

.field public final multiVisibilitySubject$delegate:Ljava/lang/Object;

.field public final otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

.field public qrIcon:Landroid/widget/ImageView;

.field public scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoRdpConnection:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->DEFAULT_SIZE:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->SHRINK_SIZE:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->PIVOT_VALUE:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->BAR_CODE_ANIM_DURATION:J

    const-class v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->CLEAN_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;->CONNECT_WIFI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v0, 0x13

    invoke-direct {p2, v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/ITidbitAction;->execute(Lcom/motorola/camera/EventListener;)V

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logTidbitAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXIT_SMART_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const v2, 0x7f0a03ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0a03af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->actionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    const v2, 0x7f0a03bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    const v2, 0x7f0a03bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0a03be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_4
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public final reset$2()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "IS_SELECTED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;->CONNECT_WIFI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string p1, "mEventHandler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjd;->enableWiFiPanel(Lcom/motorola/camera/EventListener;)V

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    iget-object v0, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    iget-object v1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_1
    iget-object p1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->CLEAN_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    iget-object v1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object p1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAlwaysAwareSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    iget-object v0, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_5
    iget-object p1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    iget-object v1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_6
    iget-object p1, p1, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_4
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :cond_8
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
