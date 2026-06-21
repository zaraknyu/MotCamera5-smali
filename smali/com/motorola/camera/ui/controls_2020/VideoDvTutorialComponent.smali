.class public final Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public mCurrentRatio:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public mDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

.field public mFadeAnimRunning:Z

.field public mFadeAnimation:Landroid/view/ViewPropertyAnimator;

.field public mNextButton:Landroid/widget/ImageButton;

.field public final mPageChangeListener:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field public mPager:Landroidx/viewpager2/widget/ViewPager2;

.field public mPreviousButton:Landroid/widget/ImageButton;

.field public mRatioSelect:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

.field public mRotationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mShowingPage:I

.field public mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPageChangeListener:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    return-void
.end method


# virtual methods
.method public final animateFade$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-wide v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->FADE_ANIM_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimation:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->LISTENED_STATES:Landroid/util/ArraySet;

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

    const v1, 0x7f0a04f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRotationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPreviousButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRotationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPageChangeListener:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->attachTo(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->updateButtonForRtl()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public final nextStep()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_5

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void

    :cond_0
    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mCurrentRatio:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v0, v3, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRatioSelect:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    if-eqz p0, :cond_4

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;->VERTICAL:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    const/4 v4, 0x0

    if-ne p0, v3, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v4

    :goto_0
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :cond_3
    :goto_1
    if-eq p0, v1, :cond_4

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string p0, "mEventHandler"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzki;->toggleRatioAndDispatch(Lcom/motorola/camera/EventListener;)V

    return-void

    :cond_4
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TUTORIAL_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v2, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_5
    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRotationLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateLandscapeViewRotation(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TUTORIAL_SKIP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRatioSelect:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;->VERTICAL:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "ANALYTICS_VIDEO_DV_TUTORIAL_ALIGNMENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateButtonForRtl()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPreviousButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x43340000    # 180.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
