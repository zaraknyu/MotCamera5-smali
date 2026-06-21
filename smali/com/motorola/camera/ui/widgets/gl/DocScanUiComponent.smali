.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static mInstructionEnable:Z = false


# instance fields
.field public mDensity:F

.field public mDisplayOrientation:I

.field public mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

.field public mEnableDrawRectOrTips:Z

.field public mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

.field public final mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

.field public final mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

.field public final mOutlineColor:I

.field public final mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

.field public mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;


# direct methods
.method public static -$$Nest$misValidPoints(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v5, Lcom/motorola/camera/PreviewSize;->width:I

    if-gt v4, v6, :cond_3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_3

    iget v4, v5, Lcom/motorola/camera/PreviewSize;->height:I

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object p0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v2

    int-to-double v7, p0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aget-object p0, p1, v1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v4, p0

    const/16 p0, 0xa

    int-to-double p0, p0

    cmpg-double p0, v4, p0

    if-gtz p0, :cond_3

    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-direct {p2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    new-instance p2, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600ab

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    return-void
.end method

.method public static isMlSlideSupported()Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DocScanUiComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v5, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v5

    invoke-virtual {v1, v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f12019a

    goto :goto_0

    :cond_0
    const v3, 0x7f120198

    :goto_0
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, -0x1

    invoke-direct {v4, v0, v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineColor:I

    iput v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v3, 0x7f120199

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineColor:I

    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return v2
.end method

.method public final manageListeners$1(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :goto_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDraw([F[F[F)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {p3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/ArrayList;[F[F)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showEmpty([F[F)V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->getPoints()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/ArrayList;[F[F)V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showEmpty([F[F)V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p0, :cond_5

    sget-boolean p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->draw([F[F)V

    :cond_5
    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    return p0
.end method

.method public final onReviewSaveComplete(Landroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v3

    const-string v4, "DOCUMENT_ORIENTATION"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "DOCUMENT_SERVICE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v0, 0xa

    const/4 v3, 0x0

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_TRIPOD_SCALE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    sub-float p1, v2, v1

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    mul-float v3, p1, v2

    iget v4, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_0
    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    :goto_1
    sget p2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v1, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    rsub-int v1, p2, 0x10e

    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    int-to-float v1, v1

    invoke-virtual {p2, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p2, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getScanDetectOffset()F

    move-result v1

    iget-object v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isSplitScreen()Z

    move-result v4

    if-nez v4, :cond_5

    const/high16 v4, 0x42ec0000    # 118.0f

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    iput v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mXGap:F

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mOffset:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_6

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mOffset:F

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mIsChangedOffset:Z

    :cond_6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {p2, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_7
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p2, :cond_8

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {p2, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final showDetection(Ljava/util/ArrayList;[F[F)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture(III)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    return-void
.end method

.method public final showEmpty([F[F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture(III)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners$1(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners$1(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_5

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    if-eqz v0, :cond_6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    const-string v4, "DOCUMENT_WIDTH"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "DOCUMENT_HEIGHT"

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v4

    const v5, 0x3e4ccccc    # 0.19999999f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    iget-object v4, v4, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:Ljava/lang/Object;

    check-cast v4, [Landroid/graphics/Point;

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    int-to-float v3, v3

    mul-float v4, v3, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v7

    float-to-int v5, v5

    mul-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr v0, v5

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {v6, v7, v5, v3}, [Landroid/graphics/Point;

    move-result-object v4

    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_9
    int-to-float v3, v3

    mul-float v8, v3, v5

    div-float/2addr v8, v7

    float-to-int v8, v8

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v3, v8

    int-to-float v0, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v7

    float-to-int v5, v5

    mul-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr v0, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    :goto_4
    const-string p0, "DOCUMENT_POINTS"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDocPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->reset()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_d

    const-string/jumbo v0, "setDocScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setMlDocScanDetectionMode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "setDocScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setMlSlideScanDetectionMode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string/jumbo v0, "setDocScanDetectionMode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setMlSlideScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const-string/jumbo v0, "setDocScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setMlDocScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setMlSlideScanDetectionMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static {p1}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    return-void

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_9

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    if-eqz p1, :cond_12

    const p1, 0x7f12019a

    goto :goto_8

    :cond_12
    const p1, 0x7f120198

    :goto_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    return-void

    :cond_13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_14
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners$1(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    return-void

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners$1(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    :cond_18
    :goto_9
    return-void
.end method

.method public final unloadTextures()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_3
    return-void
.end method

.method public final updateTipsPosition()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    const/high16 v2, 0x43180000    # 152.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v5, 0x4

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_2

    const/16 v8, 0xb4

    if-eq v4, v8, :cond_1

    const/16 v3, 0x10e

    if-eq v4, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v2, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    sub-float/2addr v0, v2

    invoke-direct {v1, v7, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {v1, v7, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v3, v2

    invoke-direct {v1, v3, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    add-float/2addr v0, v2

    invoke-direct {v1, v7, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {v1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method
