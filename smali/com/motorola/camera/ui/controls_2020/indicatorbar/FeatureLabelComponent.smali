.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final dvPostureChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public isDvPosture:Z

.field public labelImageView:Landroid/widget/ImageView;

.field public labelTextView:Landroid/widget/TextView;

.field public videoRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->dvPostureChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hideLabelViews()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final registerChangeListener(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->dvPostureChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsPosition(Landroid/view/View;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsPosition(Landroid/view/View;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->registerChangeListener(Z)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->registerChangeListener(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->hideLabelViews()V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->hideLabelViews()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsVisibleState()V

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->isDvPosture:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->registerChangeListener(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final updateLabelViewsPosition(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v1, v4

    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    sub-float/2addr v1, v4

    :cond_1
    add-float/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v1, :cond_3

    neg-int v2, v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq p0, v3, :cond_6

    const/16 v3, 0x10e

    if-eq p0, v3, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_2
    sub-int v4, p0, v1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    :cond_8
    :goto_3
    int-to-float p0, v4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    return-void
.end method

.method public final updateLabelViewsVisibleState()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->videoRecording:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->isDvPosture:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v0, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->hideLabelViews()V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
