.class public final Lcom/motorola/camera/ui/widgets/gl/TextureManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# static fields
.field public static final STAGE_DEFERRED_LOAD:Ljava/util/List;

.field public static final STAGE_MAIN_UI_LOAD:Ljava/util/List;


# instance fields
.field public mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

.field public final mClearColor:[F

.field public final mComponents:Ljava/util/EnumMap;

.field public mDefaultClearColor:I

.field public final mDrawComponents:Ljava/util/ArrayList;

.field public final mDualPaneVMatrix:[F

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFsmContext:Ljava/lang/ref/WeakReference;

.field public final mHandler:Landroid/os/Handler;

.field public final mLoadComponents:Ljava/util/ArrayList;

.field public mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public mOrientation:I

.field public mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mProjection:I

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

.field public mTranslucent:Z

.field public final mVMatrix:[F

.field public mVboManager:Lcom/motorola/camera/PermissionCallback;

.field public mViewPort:[I

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static $r8$lambda$ibl6679ekeL_FjZb7J87_L0pdRI(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 31

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEN_BIT_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    filled-new-array {v2, v3, v0, v1}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    sget-object v29, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v30, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TILT_SHIFT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->AI_GROUP_PHOTO:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PERFECT_ME:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ACTIVE_PHOTO:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v16, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v17, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v18, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v19, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v20, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v21, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v22, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v23, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v24, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v25, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v26, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v27, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v28, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    filled-new-array/range {v1 .. v30}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDualPaneVMatrix:[F

    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    invoke-direct {v2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 v6, -0x1

    iput v6, v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    new-instance v6, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    iput-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitModeSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEN_BIT_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0604b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    aput p1, v1, v3

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v0

    aput v0, v1, p1

    const/4 p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    aput p0, v1, p1

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "component init dur:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "TextureManager"

    invoke-static {v4, v5, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized checkMainUiLoading()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToGlWorldCoords(Landroid/view/MotionEvent;Lcom/motorola/camera/PreviewSize;)Landroid/view/MotionEvent;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, v2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_7

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_6

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEN_BIT_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_4

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    instance-of v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setValidContext(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Ljava/lang/ref/WeakReference;

    iget-object p1, v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0604b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v0

    aput v0, v5, v4

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v0

    aput v0, v5, v3

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    aput p1, v5, v2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    invoke-virtual {v6, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    invoke-virtual {v6, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v10}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    invoke-virtual {v8, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    invoke-virtual {v6, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    aput p1, v5, v4

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result p1

    aput p1, v5, v3

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    aput p0, v5, v2

    return-void

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_0
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v8, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v8, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v7}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doUnloadTextures(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->unregisterStateChangeListener(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/PermissionCallback;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
