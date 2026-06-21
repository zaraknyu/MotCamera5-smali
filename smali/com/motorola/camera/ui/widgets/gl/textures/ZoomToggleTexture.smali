.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mClickable:Z

.field public mCurrentValueX:F

.field public final mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public mLoaded:Z

.field public mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

.field public mMain2XZoomValue:F

.field public mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

.field public mPortraitCloseUpZoomValue:F

.field public mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

.field public mPortraitOriginalZoomValue:F

.field public mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

.field public mPortraitStandardZoomValue:F

.field public mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

.field public mPortraitWideZoomValue:F

.field public final mRtl:Z

.field public mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mTeleExtraZoomValue:F

.field public mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mTeleUltraZoomValue:F

.field public mTeleZoomValue:F

.field public final mToggleTextureList:Ljava/util/ArrayList;

.field public mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mUwZoomValue:F

.field public mValueX:Ljava/lang/String;

.field public mVideoRecording:Z

.field public mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mWideZoomValue:F

.field public final mZoomModel:Landroidx/compose/runtime/Latch;


# direct methods
.method public static -$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    return p0

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    return p0

    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    return p0
.end method

.method public static -$$Nest$mshowZoomLimitedHint(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v2, 0x7f120698

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f120699

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120696

    goto :goto_1

    :cond_1
    const v3, 0x7f120697

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne p1, v1, :cond_2

    const p1, 0x7f08020b

    goto :goto_2

    :cond_2
    const p1, 0x7f08020c

    :goto_2
    invoke-virtual {v4, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f120695

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveCallback:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    const p1, 0x7f120644

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeCallback:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f120603

    goto :goto_3

    :cond_4
    const p0, 0x7f1205e0

    :goto_3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;Landroidx/compose/runtime/Latch;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    iget-object p1, p4, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p4, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    return-void
.end method

.method public static setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;Landroidx/compose/runtime/Latch;Lcom/motorola/camera/utility/ZoomSegment;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelTogglesTouchEvent()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancelTouch()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    return-void
.end method

.method public final clearRotation()V
    .locals 0

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    if-eqz v0, :cond_0

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_0
    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :cond_1
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    mul-float/2addr p0, v1

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    neg-float p0, p0

    invoke-virtual {v1, p0, p0}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    return-object v1
.end method

.method public final getValueX(FZ)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    rem-int/lit8 p1, v0, 0xa

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_PATTERN_NO_X:Ljava/lang/String;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p1

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initZoomValue()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public final loadTexture()V
    .locals 10

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v7, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->togglesBg:I

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MAIN_2X_TOGGLE:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    invoke-virtual {v1, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleExtraValue()F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraZoomValue:F

    invoke-virtual {v1, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraZoomValue:F

    invoke-virtual {v1, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    cmpl-float v4, v0, v9

    if-eqz v4, :cond_6

    move v4, v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    cmpl-float v4, v0, v9

    if-eqz v4, :cond_7

    move v4, v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {v1, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_c

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    goto :goto_1

    :cond_e
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_f
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_10
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_11
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_12
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_13
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_14
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_15
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_16
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_17
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_18
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iput-boolean p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {p4, p2, p3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_9
    return-void
.end method

.method public final onLongPress(Landroid/graphics/PointF;Z)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    if-eqz p2, :cond_7

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-boolean p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    if-nez p2, :cond_8

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_0
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V
    .locals 2

    .line 3
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    .line 2
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1, p2}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move v3, v4

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    if-nez v5, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchUp()V

    goto :goto_1

    :cond_d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v2, :cond_f

    if-eqz v3, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    return v1

    :cond_f
    :goto_3
    return v4
.end method

.method public final onVideoStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    return-void
.end method

.method public final onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$10;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setAlpha(F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    const v2, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_b
    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    return-object v0
.end method

.method public final unloadTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final updateToggleState(Landroidx/compose/runtime/Latch;)V
    .locals 12

    iget-object v0, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->refreshZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->refreshZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    const v2, 0x7f08022b

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    const v3, 0x7f080253

    invoke-static {v0, p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;Landroidx/compose/runtime/Latch;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    const v3, 0x7f080254

    invoke-static {v0, p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;Landroidx/compose/runtime/Latch;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    const v3, 0x7f080255

    invoke-static {v0, p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;Landroidx/compose/runtime/Latch;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    const v3, 0x7f080256

    invoke-static {v0, p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;Landroidx/compose/runtime/Latch;Lcom/motorola/camera/utility/ZoomSegment;I)V

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const-string v2, "Main"

    iput-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mFixedText:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const-string v2, "UW"

    iput-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mFixedText:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const-string v2, "Tele"

    iput-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mFixedText:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->isTraditionProModeZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    goto :goto_2

    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802cf

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802cd

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802cb

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    goto :goto_2

    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802ca

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c9

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_f
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_3

    :cond_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-nez v2, :cond_1c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_6

    :cond_1c
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v2, v0, :cond_1e

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    mul-float/2addr v1, v3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v1, v7

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_4

    :cond_1d
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_4
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v1, 0x4

    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_6

    :cond_1e
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v8

    if-eqz v8, :cond_1f

    sget v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    const/high16 v9, 0x40800000    # 4.0f

    add-float v10, v8, v9

    mul-float/2addr v10, v3

    int-to-float v11, v2

    mul-float/2addr v8, v11

    add-float/2addr v8, v9

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v9, v8

    mul-float/2addr v9, v3

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v8, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v10, v7

    iput v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    goto :goto_5

    :cond_1f
    sget v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-virtual {v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v8, v7

    iput v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    :goto_5
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v8, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/4 v7, 0x3

    if-eqz v4, :cond_20

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_6

    :cond_20
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v1, v8, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v7, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    :goto_6
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result p1

    if-eqz p1, :cond_21

    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    add-float/2addr p1, v5

    :goto_7
    mul-float/2addr p1, v3

    goto :goto_8

    :cond_21
    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    goto :goto_7

    :goto_8
    if-eqz v4, :cond_22

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    :cond_22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v1}, Landroidx/compose/runtime/Latch;->getActiveZoomEntityMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    neg-float v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_9

    :cond_23
    move v0, v6

    :goto_9
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_24
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_25
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_26
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_27
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_28
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_29
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_2b
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_2d
    return-void
.end method

.method public final updateToggleTexVisibleType(I)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
