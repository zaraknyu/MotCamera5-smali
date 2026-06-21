.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public brightnessButton:Landroid/widget/ImageButton;

.field public brightnessState:Z

.field public firstShowEffect:Z

.field public frameButton:Landroid/widget/ImageButton;

.field public final guidelineBrightnessPaddingBottom$delegate:Ljava/lang/Object;

.field public final guidelineBrightnessPaddingTop$delegate:Ljava/lang/Object;

.field public final guidelineFramePaddingEnd$delegate:Ljava/lang/Object;

.field public final guidelinePaddingBottom$delegate:Ljava/lang/Object;

.field public final guidelinePaddingEnd$delegate:Ljava/lang/Object;

.field public final guidelinePaddingSliderBarBottom$delegate:Ljava/lang/Object;

.field public final guidelinePaddingSliderBarTop$delegate:Ljava/lang/Object;

.field public final guidelinePaddingStart$delegate:Ljava/lang/Object;

.field public final guidelinePaddingTop$delegate:Ljava/lang/Object;

.field public helpButton:Landroid/widget/ImageButton;

.field public final hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

.field public final isRtl$delegate:Lkotlin/SynchronizedLazyImpl;

.field public isZoomEnabled:Z

.field public final mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mFadeIn:Landroid/view/animation/Animation;

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public menuButton:Landroid/widget/ImageButton;

.field public mirrorControlPanel:Landroid/view/View;

.field public shouldSaveState:Z

.field public zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public zoomStartProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingStart$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingEnd$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingTop$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingBottom$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarTop$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarBottom$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineFramePaddingEnd$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingTop$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingBottom$delegate:Ljava/lang/Object;

    new-instance p2, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v0, 0x17

    invoke-direct {p2, v0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingTop$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelineFramePaddingEnd()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineFramePaddingEnd$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingBottom()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingBottom$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingEnd$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarTop$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingStart$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingTop$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mirrorControlPanel:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda23;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda23;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v2, 0x6

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010031

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->initIconOrientation()V

    return-void
.end method

.method public final initIconOrientation()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateFrameButton(I)V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateZoomSeekBar(I)V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateBrightnessButton(I)V

    :cond_0
    return-void
.end method

.method public final isRtl$1()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onSATFallback(ZZ)V
    .locals 0

    return-void
.end method

.method public final onZoomCompleted()V
    .locals 0

    return-void
.end method

.method public final onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMirrorModeMaxZoom()F

    move-result p1

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final registerSettingsChangeListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final resetShowTime(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final rotate(I)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    const-string v1, "getLayoutManager(...)"

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const v3, 0x7f07006d

    const/16 v4, 0x5a

    const/16 v5, 0xb4

    const/16 v6, 0x10e

    if-eqz v0, :cond_8

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$1()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_3

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingBottom()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v6, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingBottom()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$1()Z

    move-result v2

    const v7, 0x7f07008f

    if-eqz v2, :cond_c

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    :cond_9
    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v6, :cond_b

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingBottom()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    :cond_c
    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_d
    if-eqz p1, :cond_f

    if-eq p1, v4, :cond_f

    if-eq p1, v5, :cond_e

    if-eq p1, v6, :cond_f

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingBottom()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    :cond_10
    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateZoomSeekBar(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateFrameButton(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateBrightnessButton(I)V

    return-void
.end method

.method public final showAdjustIcon(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showControlPanel(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->registerSettingsChangeListener(Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->registerSettingsChangeListener(Z)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.ZoomStateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.ZoomStateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x64

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v6, 0x2

    invoke-direct {v0, p1, p0, v6}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v6, 0x6

    invoke-direct {v0, p1, p0, v6}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMirrorModeMaxZoom()F

    move-result v6

    float-to-int v6, v6

    mul-int/2addr v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080221

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    :cond_8
    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_9
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-eqz p1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x6

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMirrorModeMaxZoom()F

    move-result v0

    int-to-float v1, v5

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->initIconOrientation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateBrightnessButton(I)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$1()Z

    move-result v2

    const-string v3, "getValue(...)"

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingBottom$delegate:Ljava/lang/Object;

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const v8, 0x7f07006d

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final updateFrameButton(I)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$1()Z

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const v6, 0x7f07006d

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineFramePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineFramePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineFramePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineFramePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final updateZoomSeekBar(I)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isRtl$1()Z

    move-result v2

    const-string v3, "getValue(...)"

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarBottom$delegate:Ljava/lang/Object;

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43870000    # 270.0f

    const v10, 0x7f07006d

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setRotation(F)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
