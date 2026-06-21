.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.source "SourceFile"


# instance fields
.field public animationTextView:Landroid/animation/AnimatorSet;

.field public buttonControlAnimator:Landroid/animation/ValueAnimator;

.field public expText:Landroid/widget/TextView;

.field public mShowSliderBar:Z

.field public modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public modeText:Landroid/widget/TextView;

.field public recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

.field public seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public seekSlider:Landroid/widget/SeekBar;


# direct methods
.method public static $r8$lambda$B_oGpC7DBp5k_ixVhjbujOw52qI(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p4, 0x2

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p3, p4, p5

    const/4 p3, 0x1

    aput p1, p4, p3

    invoke-static {p0, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    filled-new-array {p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method


# virtual methods
.method public final getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getInvertTranslationY$1()F
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07006d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getLimitRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final inflateViewStub()V
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->initShowToggle:Z

    invoke-super {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->inflateViewStub()V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LP_TRAFFIC_SHUTTER_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->LP_WATER_SHUTTER_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->LP_LIGHT_SHUTTER_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->LP_STAR_SHUTTER_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%d"

    invoke-static {v8, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v11, 0x7f12022c

    invoke-virtual {v7, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v13, 0x7d0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v13, v12, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v11, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v16, 0xfa0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v13, 0x1f40

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const/16 v18, 0x10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v19, 0x3e80

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const/16 v19, 0x20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v14, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v14, 0x7f12022c

    invoke-virtual {v1, v14, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v21, 0x7d00

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f12022b

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v21, 0x5265c00

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v3, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v21, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v22, v10

    filled-new-array/range {v22 .. v22}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v10, 0x7f12022c

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v7, 0x2710

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v10, 0x7f12022c

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v23, 0x2ee0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f12022b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v10, 0x7f12022c

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x5dc0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f12022b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12022a

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v7, 0xdbba0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%.1f"

    invoke-static {v3, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v8, 0x1b7740

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v8, 0x36ee80

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v7, 0x5265c0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    filled-new-array/range {v22 .. v22}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v3, 0x6ddd00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f12022b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a0214

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_2

    const/high16 v5, 0x42080000    # 34.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v4, 0x7f0a0213

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_3

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v4, 0x7f0a029c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v4, Landroidx/preference/SeekBarPreference$1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Landroidx/preference/SeekBarPreference$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v4, 0x7f0a0296

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v4, 0x7f0a029d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedIndex()I

    move-result v1

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_5
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v4, 0x7f0a029b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->animationTextView:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b001c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b001d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v10, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v9, 0x0

    move-wide v7, v10

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->fadeAnimatorSet(Landroid/widget/TextView;JJZ)Landroid/animation/AnimatorSet;

    move-result-object v5

    filled-new-array {v2, v5}, [Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$4$1;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$4$1;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_a

    const v2, 0x7f0a0295

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateLayoutForFoldState(Z)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;)V

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    const v4, 0x7f0801d9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string/jumbo v5, "traffic"

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    const v4, 0x7f0801da

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string/jumbo v5, "water"

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    const v4, 0x7f0801d7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v5, "light"

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureStarTrailsSupported()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    const v4, 0x7f0801d8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string/jumbo v5, "star"

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_c
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const v3, 0x7f0d0086

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    :cond_d
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz v2, :cond_e

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_e
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->setSelectedMode$1(I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_f
    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->rotate(I)V

    return-void
.end method

.method public final isCurrentComponentAvailable()Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    return p0
.end method

.method public final isFeatureInUse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyModeComponent(Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "IS_SELECTED"

    invoke-static {p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_LP_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->onFoldScreenPaneChanged(Z)V

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reverseColor(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f060476

    goto :goto_0

    :cond_0
    const p1, 0x7f060475

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final rotate(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_8

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_8

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    const/high16 v1, 0x43340000    # 180.0f

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->getInvertTranslationY$1()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_d

    instance-of p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    if-eqz p1, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    :cond_7
    if-eqz v0, :cond_d

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->scaleX:F

    return-void

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_d

    instance-of p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    if-eqz p1, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    :cond_c
    if-eqz v0, :cond_d

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->scaleX:F

    :cond_d
    :goto_0
    return-void
.end method

.method public final selectButtonAction(Landroid/widget/ImageButton;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->controlVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setupClickListener$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final showSliderBar()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->showSliderBar$1(Z)V

    return-void
.end method

.method public final showSliderBar$1(Z)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->mShowSliderBar:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateParentViewMargin()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const v3, 0x7f120587

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->notifyModeComponent(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateModeVisibility()V

    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateModeVisibility()V

    :cond_5
    :goto_2
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public final showToggle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->showToggle$2(Z)V

    return-void
.end method

.method public final showToggle$2(Z)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->animationTextView:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->isDragging:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->mShowSliderBar:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateParentViewMargin()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const v2, 0x7f120558

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->notifyModeComponent(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->getInvertTranslationY$1()F

    move-result v3

    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->buttonControlAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateIconsVisibility$1()V

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const-string p1, "Water and clouds"

    goto :goto_7

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    const-string p1, "Traffic trails"

    goto :goto_7

    :cond_b
    :goto_4
    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const-string p1, "Light painting"

    goto :goto_7

    :cond_d
    :goto_5
    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    const-string p1, "Star trails"

    goto :goto_7

    :cond_f
    :goto_6
    const-string p1, "None"

    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "ANALYTICS_LONG_EXPOSURE_SCENE"

    invoke-virtual {p0, v2, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ANALYTICS_LONG_EXPOSURE_SHUTTER_TIME"

    invoke-virtual {p0, v0, v1, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    return-void
.end method

.method public final updateIconsVisibility$1()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateLayoutForFoldState(Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    const/4 v1, -0x1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07017c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v1, p0

    :cond_2
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_3

    const p0, 0x7f080179

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_3
    const p0, 0x106000d

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method

.method public final updateModeText(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v3, 0x7f12063b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v3, 0x7f12063a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v3, 0x7f12063d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v3, 0x7f12063c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedIndex()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedIndex()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-ne p1, v0, :cond_7

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_1_PERC:Ljava/util/EnumSet;

    const-string p0, "BatteryHandler"

    invoke-static {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isHandlerLimited(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-nez p0, :cond_8

    return-void

    :cond_8
    const-string p0, "IS_SELECTED"

    invoke-static {p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_STEADY_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateModeVisibility()V
    .locals 7

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.LongExposureAdapter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v3, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070390

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v4, 0x4

    int-to-float v4, v4

    div-float v4, v0, v4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;Ljava/lang/Integer;FFLcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;)V

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    const/4 v0, 0x1

    if-nez p0, :cond_1

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p0, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final updateParentViewMargin()V
    .locals 4

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->mShowSliderBar:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x44

    int-to-float p0, p0

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
