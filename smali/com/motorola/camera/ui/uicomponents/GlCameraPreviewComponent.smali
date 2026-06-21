.class public final Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;


# instance fields
.field public mFirstDrawing:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

.field public final mHandler:Landroid/os/Handler;

.field public final mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

.field public final mTextureRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    const p2, 0x7f0a036d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setCameraPreviewComponent(Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mTextureRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    invoke-static {p0, p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    if-eqz p2, :cond_0

    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iput p2, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    invoke-virtual {p2, v0, v1, p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public final getRootViewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getRootViewSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 7

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    return p0
.end method

.method public final isFoldDualPaneScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result p0

    return p0
.end method

.method public final isFoldFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result p0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object p1

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setupSurface(Landroid/graphics/Point;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iput v0, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    sget-object p1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Landroid/graphics/Point;IB)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    invoke-static {p4}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setupSurface(Landroid/graphics/Point;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iget p2, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    if-eqz p2, :cond_0

    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iput p2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p4, Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p4, v1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    invoke-virtual {p1, p2, p4, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    sget-object p1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Landroid/graphics/Point;I)V

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 7

    xor-int/lit8 v0, p1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v4, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    invoke-virtual {p1, v2, v3, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFoldSplitChanged()V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Landroid/graphics/Point;IB)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->onPause()V

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->playHaptic(I)V

    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 6

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;IJI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->onResume()V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mTextureRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameTimeEnable:Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean p1, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->onPreviewStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method
