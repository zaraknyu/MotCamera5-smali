.class public final Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Lcom/motorola/camera/EventListener;


# instance fields
.field public final mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

.field public mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

.field public final mDrawLock:Ljava/lang/Object;

.field public final mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

.field public mFrameTimeEnable:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsDrawMaster:Z

.field public final mPresentationLock:Ljava/lang/Object;

.field public mPresentationTime:J

.field public final mRenderContinuousComps:Ljava/util/Set;

.field public mRenderRequest:Z

.field public mStartTime:J

.field public mSurfaceReCreated:Z

.field public final mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    new-instance v0, Lcom/motorola/camera/utility/FpsCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/FpsCalculator;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method


# virtual methods
.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final doDrawFrame()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "SurfaceTextureRenderer.onDrawTextureManager"

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v1

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mIsDrawMaster:Z

    monitor-enter v1

    :try_start_0
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v4, v4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string v4, "openglShow"

    const/16 v7, 0x8

    invoke-static {v7, v4}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v8, 0x17

    invoke-direct {v7, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v6, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_12

    :cond_2
    :try_start_1
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/PermissionCallback;

    if-nez v4, :cond_3

    new-instance v4, Lcom/motorola/camera/PermissionCallback;

    const/16 v7, 0xf

    invoke-direct {v4, v7}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    iput-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/PermissionCallback;

    :cond_3
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/PermissionCallback;

    iget-object v4, v4, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->values()[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v4, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v6, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto/16 :goto_12

    :cond_6
    :try_start_2
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_9

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v7, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_8
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v6, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    goto/16 :goto_12

    :cond_a
    :try_start_3
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x13

    invoke-static {v7}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_4
    if-ge v9, v8, :cond_b

    aget v10, v7, v9

    iget-object v11, v4, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-static {v10}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v12

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Shader;

    const v14, 0x7f110035

    const v15, 0x7f110004

    const v16, 0x7f11001a

    const v17, 0x7f11003c

    packed-switch v10, :pswitch_data_0

    :goto_5
    const/4 v0, 0x0

    throw v0

    :pswitch_0
    const v14, 0x7f110012

    goto :goto_6

    :pswitch_1
    move v14, v15

    goto :goto_6

    :pswitch_2
    move/from16 v14, v16

    goto :goto_6

    :pswitch_3
    const v14, 0x7f110016

    goto :goto_6

    :pswitch_4
    move/from16 v14, v17

    goto :goto_6

    :pswitch_5
    const v14, 0x7f110014

    goto :goto_6

    :pswitch_6
    const v14, 0x7f11003b

    goto :goto_6

    :pswitch_7
    const v14, 0x7f11001e

    goto :goto_6

    :pswitch_8
    const v14, 0x7f110037

    goto :goto_6

    :pswitch_9
    const v14, 0x7f11004f

    goto :goto_6

    :pswitch_a
    const v14, 0x7f110023

    goto :goto_6

    :pswitch_b
    const v14, 0x7f11001b

    goto :goto_6

    :pswitch_c
    const v14, 0x7f110007

    :goto_6
    :pswitch_d
    const v15, 0x7f11001c

    packed-switch v10, :pswitch_data_1

    goto :goto_5

    :pswitch_e
    const v15, 0x7f110011

    goto :goto_7

    :pswitch_f
    const v15, 0x7f110038

    goto :goto_7

    :pswitch_10
    const v15, 0x7f110030

    goto :goto_7

    :pswitch_11
    const v15, 0x7f110015

    goto :goto_7

    :pswitch_12
    const/high16 v15, 0x7f110000

    goto :goto_7

    :pswitch_13
    const v15, 0x7f110034

    goto :goto_7

    :pswitch_14
    const v15, 0x7f110039

    goto :goto_7

    :pswitch_15
    const v15, 0x7f11000f

    goto :goto_7

    :pswitch_16
    const v15, 0x7f11000e

    goto :goto_7

    :pswitch_17
    const v15, 0x7f110013

    goto :goto_7

    :pswitch_18
    const v15, 0x7f11003a

    goto :goto_7

    :pswitch_19
    const v15, 0x7f11001d

    goto :goto_7

    :pswitch_1a
    const v15, 0x7f110036

    goto :goto_7

    :pswitch_1b
    const v15, 0x7f11004e

    goto :goto_7

    :pswitch_1c
    const v15, 0x7f110022

    goto :goto_7

    :pswitch_1d
    const v15, 0x7f110003

    goto :goto_7

    :pswitch_1e
    const v15, 0x7f110006

    :goto_7
    :pswitch_1f
    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/Shader;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_b
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v6, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :goto_8
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v10, v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doUnloadTextures(Z)V

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Lcom/motorola/camera/Util;->isKpiWarning(J)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "TextureManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  component:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " load time:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    const-wide/16 v12, 0x21

    cmp-long v10, v10, v12

    if-lez v10, :cond_c

    :cond_10
    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_9

    :cond_11
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v6, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_12
    :goto_9
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    if-ne v8, v6, :cond_13

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_a

    :cond_13
    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_a
    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v7

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    if-ne v9, v6, :cond_14

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_b

    :cond_14
    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_b
    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v8

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v9}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v10, :cond_16

    goto :goto_c

    :cond_16
    iget v12, v10, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-ne v11, v12, :cond_15

    instance-of v11, v10, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    if-eqz v11, :cond_17

    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iput-boolean v3, v11, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mIsDrawMaster:Z

    :cond_17
    invoke-virtual {v10, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onPreDraw([F[F[F)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDrawFbo: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDrawFbo([F[F[F)V

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_d

    :cond_19
    const v3, 0x8d40

    invoke-static {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    const/4 v9, 0x2

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    goto :goto_e

    :cond_1a
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    aget v10, v3, v5

    aget v12, v3, v6

    aget v3, v3, v9

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v10, v12, v3, v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    :goto_e
    const/16 v3, 0x4100

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    if-eqz v3, :cond_1b

    aget v10, v3, v5

    aget v12, v3, v6

    aget v9, v3, v9

    aget v3, v3, v11

    invoke-static {v10, v12, v9, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v3, "glViewport"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1b
    const/16 v3, 0x303

    invoke-static {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCameraPaneSize:Lcom/motorola/camera/PreviewSize;

    if-nez v3, :cond_1c

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDraw: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDraw([F[F[F)V

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_f

    :cond_1c
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDraw: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    instance-of v10, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v10, :cond_1d

    invoke-virtual {v9, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDraw([F[F[F)V

    goto :goto_11

    :cond_1d
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDualPaneVMatrix:[F

    invoke-virtual {v9, v10, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDraw([F[F[F)V

    :goto_11
    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_10

    :cond_1e
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    goto :goto_12

    :cond_1f
    monitor-exit v1

    :goto_12
    const-string v1, "SurfaceTextureRenderer.onDrawTextureManager"

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getPixelColor()V

    :cond_20
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameTimeEnable:Z

    if-nez v1, :cond_21

    goto :goto_13

    :cond_21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    iget-object v2, v1, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    check-cast v2, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iget v3, v1, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    aput-wide v7, v2, v3

    iget v2, v1, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    iget v3, v1, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    if-lt v2, v3, :cond_22

    iput-boolean v6, v1, Lcom/motorola/camera/utility/FpsCalculator;->isFull:Z

    iput v5, v1, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    :cond_22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    const-wide v5, 0x41a7d78400000000L    # 2.0E8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_23

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/FpsCalculator;->calculateFps()I

    move-result v3

    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    :goto_13
    return-void

    :goto_14
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final doFrame(J)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    iget-object p1, p1, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/ColorToolbox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    return-object p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public final getNavBarSize()Landroid/graphics/PointF;
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    mul-float/2addr p0, v1

    mul-float/2addr v1, v3

    invoke-virtual {v2, p0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v2
.end method

.method public final getRootViewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getRootViewSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public final getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Shader;

    return-object p0
.end method

.method public final getSurfaceDensity()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    return p0
.end method

.method public final getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    return-object p0
.end method

.method public final getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Landroid/graphics/PointF;->x:F

    return-object p0

    :cond_1
    iput v2, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getVboManager()Lcom/motorola/camera/PermissionCallback;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/PermissionCallback;

    return-object p0
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isCliDisplay()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFoldDualPaneScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isFoldDualPaneScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFoldFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isFoldFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isSplitScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/motorola/camera/cli/DualPreviewManager;->secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->doDrawFrame()V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 v1, 0x3059

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GL_URGENT_THREAD:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v1, "glViewport"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    filled-new-array {v0, v0, p2, p3}, [I

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v2, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v2, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    iput p3, v1, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/16 p1, 0x1f03

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "glGetString"

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const-string p2, "OES_EGL_image_external"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SurfaceTextureRenderer"

    const-string p2, "OES_EGL_image_external GL extension is not supported!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0xbe2

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    invoke-static {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->playHaptic(I)V

    return-void

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string p1, "Tried to perform haptics but previewComponent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public final requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final requestRenderSurface()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final requestRenderSurfaceDirectly(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mIsDrawMaster:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-wide v3, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resetBlendFunc()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    const/16 v0, 0x303

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :cond_0
    return-void
.end method

.method public final runOnGlThread(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method
