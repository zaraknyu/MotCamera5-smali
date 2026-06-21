.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_TUTORIAL_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOWN_TUTORIAL_STATES:Landroid/util/ArraySet;


# instance fields
.field public animationHide:Landroid/animation/ObjectAnimator;

.field public contentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public controlDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

.field public controlLeft:Landroid/widget/ImageButton;

.field public controlRight:Landroid/widget/ImageButton;

.field public navbarHeight:I

.field public final settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->SHOWN_TUTORIAL_STATES:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->HIDE_TUTORIAL_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final animateHide()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    new-instance v1, Landroidx/transition/Transition$3;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animationHide:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final animateShow()V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->contentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string/jumbo v2, "translationY"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroidx/transition/Transition$3;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final completeTutorial()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->animateHide()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.TutorialModeAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;->screenList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v1

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->navbarHeight:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->contentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlLeft:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlRight:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->navbarHeight:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final remove()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_DISPLAY_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final showModeTutorial$1()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_DISPLAY_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x31

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "getValue(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->Companion:Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    const/16 v4, 0x24

    if-eq v0, v4, :cond_4

    const/16 v4, 0x35

    if-eq v0, v4, :cond_3

    const/16 v4, 0x37

    if-eq v0, v4, :cond_2

    const/16 v4, 0xc

    if-eq v0, v4, :cond_1

    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_3:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_TILT_SHIFT_4:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    filled-new-array {v2, v3, v4, v5}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_TRAFFIC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_WATER:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_LIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_LONG_EXPOSE_STAR:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    filled-new-array {v2, v3, v4, v5}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PHOTO_BOOTH:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PERFECT_ME_OVERLAY:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_PERFECT_ME_CAPTURE:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    filled-new-array {v2, v3}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_AI_GROUP_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSupportMotionCapture()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_ACTION_SHOT:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_IHC:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_8
    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvAllowedSupportedEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_VIDEO_DV_1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_VIDEO_DV_2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    filled-new-array {v2, v3}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartEisMode(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->SCREEN_MODE_SMART_EIS:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_a
    :goto_0
    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v4, 0x14

    invoke-direct {v2, v3, p0, v1, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->SHOWN_TUTORIAL_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-nez p1, :cond_9

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->Companion:Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x24

    if-eq p1, v0, :cond_3

    const/16 v0, 0x35

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TILT_SHIFT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LONG_EXPOSURE_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PERFECT_ME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_0

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvAllowedSupportedEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_INTRO_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MOTION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_8
    :goto_0
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->showModeTutorial$1()V

    return-void

    :cond_9
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->HIDE_TUTORIAL_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateControl(II)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlLeft:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080385

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1201f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v5, p1, 0x1

    if-ne v5, p2, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    const p1, 0x7f080384

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f1201fb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    const v2, 0x7f080387

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1201fe

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda6;

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    if-eqz p0, :cond_7

    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
