.class public final Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method


# virtual methods
.method public final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    const-string v1, "Failed to create OpenGL ES context with version:"

    const-string v2, "PreviewSurfaceView"

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v4, 0x3

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget v8, v4, v7

    :try_start_0
    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v9, "egl"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "display"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "config"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "EGL_NO_CONTEXT"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v9

    if-eq v9, v3, :cond_0

    sput v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    move-object v3, v9

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_0
    sget v9, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget v10, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_3
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->setValidContext(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    monitor-enter p1

    :try_start_1
    sget-boolean p3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "high_text_contrast_enabled"

    invoke-static {p3, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, p2, :cond_2

    move v6, p2

    :cond_2
    sput-boolean v6, Lcom/motorola/camera/Util;->sHighTextContrastEnable:Z

    sget-object p2, Lcom/motorola/camera/utility/TouchKeepOutHelper;->sTouchKeepOuts:Ljava/util/Map;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->checkMainUiLoading()V

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitModeSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEN_BIT_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    monitor-exit p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-class p2, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter p2

    :try_start_4
    const-string/jumbo p3, "sharedContextProvider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p2

    const-string p1, "openglContext"

    const/16 p2, 0x9

    invoke-static {p2, p1}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :goto_5
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v0

    monitor-exit v0

    sget-object v0, Lcom/motorola/camera/cli/DualPreviewManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->unloadTextures()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-class v2, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "sharedContextProvider"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v4, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :try_start_2
    monitor-exit v2

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v1, "egl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "display"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p2

    const-string p3, "eglDestroyContext"

    invoke-static {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    if-nez p2, :cond_3

    sget p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string p1, "PreviewSurfaceView"

    const-string p2, "Failed to destroy OpenGL ES context"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->setValidContext(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
