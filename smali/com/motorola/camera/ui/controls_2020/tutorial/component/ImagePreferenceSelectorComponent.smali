.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public applyButton:Landroid/widget/Button;

.field public customizeBgLayout:Landroid/widget/LinearLayout;

.field public customizeLayout:Landroid/widget/LinearLayout;

.field public customizeLayoutExpandButton:Landroid/widget/Button;

.field public descriptionTextView:Landroid/widget/TextView;

.field public hasAutoEnhanceStateChanged:Z

.field public final imagePreferenceSelectorControlBarListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public imeVisible:Z

.field public volatile initMooBackground:Z

.field public final pageChangeListener:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;

.field public pagerRealPosition:I

.field public trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->initMooBackground:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->pageChangeListener:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imagePreferenceSelectorControlBarListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a0252

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a0255

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070198

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    neg-float v4, v4

    :cond_3
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda11;

    invoke-direct {v3, v4, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda11;-><init>(FLandroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->applyButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeLayoutExpandButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeBgLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onImagePreferenceSelectorPageAction(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    const-string v3, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.IMagePreferenceSelectorAdapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "get(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    if-ne p1, v3, :cond_6

    :goto_3
    move v1, v3

    :cond_6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->hasAutoEnhanceStateChanged:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->pageChangeListener:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_9
    return-void
.end method

.method public final startApplyButtonAnimate(ZZ)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->applyButton:Landroid/widget/Button;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070195

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    neg-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v1, p1, p2

    const-string/jumbo p2, "translationX"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    return-void
.end method

.method public final startMooButtonAnimate(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeLayoutExpandButton:Landroid/widget/Button;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p1, p2, v0

    const-string p1, "alpha"

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final startMooLayoutAnimate(ZZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->initMooBackground:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->initMooBackground:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeBgLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0802c3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v5, v3

    new-instance v9, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v5, v3, v5

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v9, v0, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v0, "createBitmap(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;ZZ)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v8, v9, v3, v1, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    move-object v5, p0

    move v6, p1

    move v7, p2

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->updateMooLayout(ZZ)V

    :cond_1
    return-void

    :cond_2
    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->updateMooLayout(ZZ)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imagePreferenceSelectorControlBarListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE_LOW_RAM:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ANALYTICS_AUTO_ENHANCE_THIRD_LAUNCH"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkEnabled()V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v2, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    iget-object v0, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->initMooBackground:Z

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ANALYTICS_AUTO_ENHANCE_OPTION_CHANGED"

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->hasAutoEnhanceStateChanged:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imeVisible:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imagePreferenceSelectorControlBarListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    :cond_5
    sget-object p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    const-class p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iput-object v0, p1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    return-void
.end method

.method public final updateMooLayout(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MOO_PAGE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startApplyButtonAnimate(ZZ)V

    xor-int/lit8 v2, p1, 0x1

    .line 4
    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startMooButtonAnimate(ZZ)V

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startMooLayoutAnimate(ZZ)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateMooLayout(ZZ)V
    .locals 3

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->customizeLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [F

    aput v1, p1, v2

    const-string p2, "alpha"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 14
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
